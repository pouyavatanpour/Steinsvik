using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;
using Enums;
using Services;

namespace Steinsvik
{
    public partial class FrmOperators : Form
    {
        public FrmOperators()
        {
            InitializeComponent();
        }

        private void Bindings()
        {

            dt_status.Value = DateTime.Now;
            dt_report.Value = DateTime.Now;

            grd_lateststatus.DataSource = AssignmentService.FishesInTanks;

            this.cmb_fish.SelectedIndexChanged -= new EventHandler(cmb_fish_SelectedIndexChanged);
            cmb_fish.DataSource = AssignmentService.LookUpFish;
            cmb_fish.ValueMember = "FishId";
            cmb_fish.DisplayMember = "FishNumber";
            cmb_fish.SelectedIndex = -1;
            this.cmb_fish.SelectedIndexChanged += new EventHandler(cmb_fish_SelectedIndexChanged);

            cmb_operation.DataSource = AssignmentService.LookUpOperationCodes;
            cmb_operation.ValueMember = "Id";
            cmb_operation.DisplayMember = "Name";
            cmb_operation.SelectedIndex = -1;

        }
        private void Visualizing()
        {
            IList<string> redFlag = AssignmentService.FindRestrictedTanks;
            for (int i = 0; i < grd_lateststatus.Rows.Count - 1; i++)
            {
                var temp = grd_lateststatus.Rows[i].Cells[2].Value.ToString();
                if (redFlag.Contains(temp))
                {
                    grd_lateststatus.Rows[i].DefaultCellStyle.BackColor = System.Drawing.Color.PeachPuff;
                }

            }
        }
        private void UpdateReport()
        {
            grd_report.DataSource = AssignmentService.Reporting(dt_report.Value);
            grd_lateststatus.DataSource = AssignmentService.FishesInTanks;

            Visualizing();

        }

        private ValidationEnum ValidationForRegistering()
        {
            if (cmb_fish.SelectedIndex < 0)
                return ValidationEnum.UnSelectedFish;
            if (cmb_totank.SelectedIndex < 0)
                return ValidationEnum.UnSelectedTank;
            if (cmb_operation.SelectedIndex < 0)
                return ValidationEnum.UnSelectedOperation;
            else
                return ValidationEnum.Valid;
        }

        private ValidationEnum ValidationForFirstAssign()
        {
            if (cmb_fish.SelectedIndex < 0)
                return ValidationEnum.UnSelectedFish;
            if (cmb_totank.SelectedIndex < 0)
                return ValidationEnum.UnSelectedTank;
            else
                return ValidationEnum.Valid;
        }

        private InsertUpdateEnum RegisterOperation()
        {
            int _userId = LoginService.user.UserID;
            int _fishId = (int)cmb_fish.SelectedValue;
            int _fromTankId = int.Parse(txt_fromtank.Text);
            int _operationCodeId = (int)cmb_operation.SelectedValue;
            int _toTankId = (int)cmb_totank.SelectedValue;
            string _description = txt_description.Text;

            InsertUpdateEnum result = AssignmentService.RegisterOperation(_userId, _fishId, _fromTankId, _operationCodeId, _toTankId, _description);

            return result;
        }

        private InsertUpdateEnum UpdateLatestStatus()
        {
            int _tankId = (int)cmb_totank.SelectedValue;
            int _fishId = (int)cmb_fish.SelectedValue;
            int _userId = LoginService.user.UserID;

            InsertUpdateEnum result = AssignmentService.UpdateLatestStatus(_tankId, _fishId, _userId);

            return result;
        }

        private InsertUpdateEnum FirstAssign()
        {
            int _userId = LoginService.user.UserID;
            int _fishId = (int)cmb_fish.SelectedValue;
            int _TankId = (int)cmb_totank.SelectedValue;

            InsertUpdateEnum result = AssignmentService.FirstAssign(_userId, _fishId, _TankId);

            return result;
        }

        private void FrmOperators_Load(object sender, EventArgs e)
        {
            Bindings();
            UpdateReport();

            this.Text += " [ " + LoginService.user.LoginName + " ]";

            for (int i = 0; i < grd_lateststatus.Columns.Count - 2; i++)
            {
                grd_lateststatus.Columns[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            }
            grd_lateststatus.Columns[grd_lateststatus.Columns.Count - 1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            grd_lateststatus.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            for (int i = 0; i < grd_report.Columns.Count - 2; i++)
            {
                grd_report.Columns[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            }
            grd_report.Columns[grd_report.Columns.Count - 1].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            grd_report.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        private void FrmOperators_FormClosing(object sender, FormClosingEventArgs e)
        {
            this.Hide();
            FrmLogin backtologin = new FrmLogin();
            backtologin.Show();
        }

        private void grd_lateststatus_RowStateChanged(object sender, DataGridViewRowStateChangedEventArgs e)
        {
            if (e.StateChanged != DataGridViewElementStates.Selected) return;

            Int32 selectedRowCount = grd_lateststatus.Rows.GetRowCount(DataGridViewElementStates.Selected);
            if (selectedRowCount > 0)
            {
                cmb_fish.SelectedValue = grd_lateststatus.SelectedRows[0].Cells[0].Value.ToString();
            }

        }

        private void cmb_fish_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmb_fish.SelectedIndex >= 0)
            {
                DataTable dtable = (DataTable)cmb_fish.DataSource;
                int FishId = (int)dtable.Rows[cmb_fish.SelectedIndex][0];
                var result = AssignmentService.WhereIsThisFish(FishId);
                if (result.Count > 0)
                {
                    btn_register.Tag = "OPERATION";
                    txt_fromtank.Text = result[0];
                    cmb_operation.Enabled = true;
                    txt_description.Enabled = true;
                    txt_information.Text = "Ready for register operation!";
                    btn_register.Text = "Register Operation";
                    btn_register.BackColor = System.Drawing.Color.DarkSeaGreen;
                }
                else
                {
                    btn_register.Tag = "FIRST";
                    txt_fromtank.Text = "";
                    cmb_operation.Enabled = false;
                    txt_description.Enabled = false; txt_description.Text = "";
                    txt_information.Text = "Ready for first assign!";
                    btn_register.Text = "First Assign";
                    btn_register.BackColor = System.Drawing.Color.LightSteelBlue;
                }

                cmb_totank.DataSource = AssignmentService.AllowedDestinationTanks(FishId);
                cmb_totank.ValueMember = "TankId";
                cmb_totank.DisplayMember = "TankCode";
                cmb_totank.SelectedIndex = -1;

            }
        }

        private void btn_register_Click(object sender, EventArgs e)
        {
            if (btn_register.Tag.ToString() == "FIRST")
            {
                ValidationEnum IsValid = ValidationForFirstAssign();
                switch (IsValid)
                {
                    case ValidationEnum.Valid:
                        InsertUpdateEnum result = FirstAssign();
                        Bindings();
                        txt_information.Text = result.ToString();
                        break;
                    default:
                        MessageBox.Show(IsValid.ToString(), Constants.System.Value, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        break;
                }
            }
            else if (btn_register.Tag.ToString() == "OPERATION")
            {
                ValidationEnum IsValid = ValidationForRegistering();
                switch (IsValid)
                {
                    case ValidationEnum.Valid:
                        InsertUpdateEnum result = RegisterOperation();
                        InsertUpdateEnum update = UpdateLatestStatus();
                        txt_information.Text = result.ToString() + Environment.NewLine + update.ToString();
                        UpdateReport();

                        break;
                    case ValidationEnum.UnSelectedFish:
                        MessageBox.Show(ValidationEnum.UnSelectedFish.ToString(), Constants.System.Value, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        break;
                    case ValidationEnum.UnSelectedTank:
                        MessageBox.Show(ValidationEnum.UnSelectedTank.ToString(), Constants.System.Value, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        break;
                    case ValidationEnum.UnSelectedOperation:
                        MessageBox.Show(ValidationEnum.UnSelectedOperation.ToString(), Constants.System.Value, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        break;
                    default:
                        break;
                }
            }

        }

        private void dt_report_ValueChanged(object sender, EventArgs e)
        {
            UpdateReport();
        }

        private void grd_lateststatus_Sorted(object sender, EventArgs e)
        {
            Visualizing();
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {
            // Later :)
        }
    }
}
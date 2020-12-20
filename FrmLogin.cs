using System;
using Services;
using System.Windows.Forms;
using Enums;
using System.Configuration;
using System.Collections.Specialized;

namespace Steinsvik
{
    public partial class FrmLogin : Form
    {
        public FrmLogin()
        {
            InitializeComponent();
        }

        private void btn_login_Click(object sender, EventArgs e)
        {
            if (drp_username.SelectedIndex == -1 || txt_password.Text == "")
            {
                MessageBox.Show("Please provide UserName and Password");
                return;
            }
            try
            {
                LoginEnum result = LoginService.CallLogin(drp_username.SelectedItem.ToString(), txt_password.Text);

                switch (result)
                {
                    case LoginEnum.password:
                        MessageBox.Show(LoginEnum.password.ToString(), Constants.System.Value, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        break;
                    case LoginEnum.success:
                        this.Hide();
                        FrmOperators fm = new FrmOperators();
                        fm.Show();
                        break;
                    case LoginEnum.username:
                        MessageBox.Show(LoginEnum.username.ToString(), Constants.System.Value, MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        break;
                    default:
                        break;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void FrmLogin_Load(object sender, EventArgs e)
        {
            drp_username.DataSource = LoginService.LookUpUsers;
            NameValueCollection appSettings = ConfigurationManager.AppSettings;
            string mode = appSettings["mode"];
            if (mode == "debug")
            {
                drp_username.SelectedIndex = 0;
                txt_password.Text = "123456#1";
            }
            else
                drp_username.SelectedIndex = -1;

        }

        private void FrmLogin_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }
    }
}
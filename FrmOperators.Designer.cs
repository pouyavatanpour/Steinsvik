namespace Steinsvik
{
    partial class FrmOperators
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmOperators));
            this.grd_lateststatus = new System.Windows.Forms.DataGridView();
            this.lbl_fish = new System.Windows.Forms.Label();
            this.grbox_operation = new System.Windows.Forms.GroupBox();
            this.cmb_totank = new System.Windows.Forms.ComboBox();
            this.btn_register = new System.Windows.Forms.Button();
            this.txt_information = new System.Windows.Forms.TextBox();
            this.txt_fromtank = new System.Windows.Forms.TextBox();
            this.txt_description = new System.Windows.Forms.TextBox();
            this.lbl_description = new System.Windows.Forms.Label();
            this.cmb_operation = new System.Windows.Forms.ComboBox();
            this.lbl_operation = new System.Windows.Forms.Label();
            this.lbl_totank = new System.Windows.Forms.Label();
            this.lbl_fromtank = new System.Windows.Forms.Label();
            this.cmb_fish = new System.Windows.Forms.ComboBox();
            this.grbox_status = new System.Windows.Forms.GroupBox();
            this.grbox_report = new System.Windows.Forms.GroupBox();
            this.grd_report = new System.Windows.Forms.DataGridView();
            this.btn_delete = new System.Windows.Forms.Button();
            this.dt_report = new System.Windows.Forms.DateTimePicker();
            this.dt_status = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.grd_lateststatus)).BeginInit();
            this.grbox_operation.SuspendLayout();
            this.grbox_status.SuspendLayout();
            this.grbox_report.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.grd_report)).BeginInit();
            this.SuspendLayout();
            // 
            // grd_lateststatus
            // 
            this.grd_lateststatus.AllowUserToAddRows = false;
            this.grd_lateststatus.AllowUserToDeleteRows = false;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grd_lateststatus.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.grd_lateststatus.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.grd_lateststatus.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grd_lateststatus.Cursor = System.Windows.Forms.Cursors.Hand;
            this.grd_lateststatus.Location = new System.Drawing.Point(33, 67);
            this.grd_lateststatus.MultiSelect = false;
            this.grd_lateststatus.Name = "grd_lateststatus";
            this.grd_lateststatus.ReadOnly = true;
            this.grd_lateststatus.Size = new System.Drawing.Size(534, 221);
            this.grd_lateststatus.TabIndex = 0;
            this.grd_lateststatus.RowStateChanged += new System.Windows.Forms.DataGridViewRowStateChangedEventHandler(this.grd_lateststatus_RowStateChanged);
            this.grd_lateststatus.Sorted += new System.EventHandler(this.grd_lateststatus_Sorted);
            // 
            // lbl_fish
            // 
            this.lbl_fish.AutoSize = true;
            this.lbl_fish.Location = new System.Drawing.Point(64, 38);
            this.lbl_fish.Name = "lbl_fish";
            this.lbl_fish.Size = new System.Drawing.Size(29, 13);
            this.lbl_fish.TabIndex = 2;
            this.lbl_fish.Text = "Fish:";
            // 
            // grbox_operation
            // 
            this.grbox_operation.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.grbox_operation.Controls.Add(this.cmb_totank);
            this.grbox_operation.Controls.Add(this.btn_register);
            this.grbox_operation.Controls.Add(this.txt_information);
            this.grbox_operation.Controls.Add(this.txt_fromtank);
            this.grbox_operation.Controls.Add(this.txt_description);
            this.grbox_operation.Controls.Add(this.lbl_description);
            this.grbox_operation.Controls.Add(this.cmb_operation);
            this.grbox_operation.Controls.Add(this.lbl_operation);
            this.grbox_operation.Controls.Add(this.lbl_totank);
            this.grbox_operation.Controls.Add(this.lbl_fromtank);
            this.grbox_operation.Controls.Add(this.cmb_fish);
            this.grbox_operation.Controls.Add(this.lbl_fish);
            this.grbox_operation.Location = new System.Drawing.Point(12, 337);
            this.grbox_operation.Name = "grbox_operation";
            this.grbox_operation.Size = new System.Drawing.Size(601, 258);
            this.grbox_operation.TabIndex = 0;
            this.grbox_operation.TabStop = false;
            this.grbox_operation.Text = "Operation";
            // 
            // cmb_totank
            // 
            this.cmb_totank.Cursor = System.Windows.Forms.Cursors.Hand;
            this.cmb_totank.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_totank.FormattingEnabled = true;
            this.cmb_totank.Location = new System.Drawing.Point(114, 99);
            this.cmb_totank.Name = "cmb_totank";
            this.cmb_totank.Size = new System.Drawing.Size(121, 21);
            this.cmb_totank.TabIndex = 1;
            // 
            // btn_register
            // 
            this.btn_register.BackColor = System.Drawing.Color.DarkSeaGreen;
            this.btn_register.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_register.Location = new System.Drawing.Point(260, 163);
            this.btn_register.Name = "btn_register";
            this.btn_register.Size = new System.Drawing.Size(307, 64);
            this.btn_register.TabIndex = 4;
            this.btn_register.Text = "Register Operation";
            this.btn_register.UseVisualStyleBackColor = false;
            this.btn_register.Click += new System.EventHandler(this.btn_register_Click);
            // 
            // txt_information
            // 
            this.txt_information.Location = new System.Drawing.Point(260, 33);
            this.txt_information.Multiline = true;
            this.txt_information.Name = "txt_information";
            this.txt_information.ReadOnly = true;
            this.txt_information.Size = new System.Drawing.Size(307, 118);
            this.txt_information.TabIndex = 11;
            // 
            // txt_fromtank
            // 
            this.txt_fromtank.Location = new System.Drawing.Point(114, 66);
            this.txt_fromtank.Name = "txt_fromtank";
            this.txt_fromtank.ReadOnly = true;
            this.txt_fromtank.Size = new System.Drawing.Size(121, 20);
            this.txt_fromtank.TabIndex = 10;
            // 
            // txt_description
            // 
            this.txt_description.Location = new System.Drawing.Point(114, 163);
            this.txt_description.Multiline = true;
            this.txt_description.Name = "txt_description";
            this.txt_description.Size = new System.Drawing.Size(121, 64);
            this.txt_description.TabIndex = 3;
            // 
            // lbl_description
            // 
            this.lbl_description.AutoSize = true;
            this.lbl_description.Location = new System.Drawing.Point(30, 166);
            this.lbl_description.Name = "lbl_description";
            this.lbl_description.Size = new System.Drawing.Size(63, 13);
            this.lbl_description.TabIndex = 8;
            this.lbl_description.Text = "Description:";
            // 
            // cmb_operation
            // 
            this.cmb_operation.Cursor = System.Windows.Forms.Cursors.Hand;
            this.cmb_operation.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_operation.FormattingEnabled = true;
            this.cmb_operation.Location = new System.Drawing.Point(114, 130);
            this.cmb_operation.Name = "cmb_operation";
            this.cmb_operation.Size = new System.Drawing.Size(121, 21);
            this.cmb_operation.TabIndex = 2;
            // 
            // lbl_operation
            // 
            this.lbl_operation.AutoSize = true;
            this.lbl_operation.Location = new System.Drawing.Point(37, 134);
            this.lbl_operation.Name = "lbl_operation";
            this.lbl_operation.Size = new System.Drawing.Size(56, 13);
            this.lbl_operation.TabIndex = 6;
            this.lbl_operation.Text = "Operation:";
            // 
            // lbl_totank
            // 
            this.lbl_totank.AutoSize = true;
            this.lbl_totank.Location = new System.Drawing.Point(42, 102);
            this.lbl_totank.Name = "lbl_totank";
            this.lbl_totank.Size = new System.Drawing.Size(51, 13);
            this.lbl_totank.TabIndex = 5;
            this.lbl_totank.Text = "To Tank:";
            // 
            // lbl_fromtank
            // 
            this.lbl_fromtank.AutoSize = true;
            this.lbl_fromtank.Location = new System.Drawing.Point(32, 70);
            this.lbl_fromtank.Name = "lbl_fromtank";
            this.lbl_fromtank.Size = new System.Drawing.Size(61, 13);
            this.lbl_fromtank.TabIndex = 4;
            this.lbl_fromtank.Text = "From Tank:";
            // 
            // cmb_fish
            // 
            this.cmb_fish.Cursor = System.Windows.Forms.Cursors.Hand;
            this.cmb_fish.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_fish.FormattingEnabled = true;
            this.cmb_fish.Location = new System.Drawing.Point(114, 33);
            this.cmb_fish.Name = "cmb_fish";
            this.cmb_fish.Size = new System.Drawing.Size(121, 21);
            this.cmb_fish.TabIndex = 0;
            this.cmb_fish.SelectedIndexChanged += new System.EventHandler(this.cmb_fish_SelectedIndexChanged);
            // 
            // grbox_status
            // 
            this.grbox_status.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.grbox_status.Controls.Add(this.dt_status);
            this.grbox_status.Controls.Add(this.grd_lateststatus);
            this.grbox_status.Location = new System.Drawing.Point(12, 12);
            this.grbox_status.Name = "grbox_status";
            this.grbox_status.Size = new System.Drawing.Size(601, 306);
            this.grbox_status.TabIndex = 1;
            this.grbox_status.TabStop = false;
            this.grbox_status.Text = "Latest status";
            // 
            // grbox_report
            // 
            this.grbox_report.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.grbox_report.Controls.Add(this.dt_report);
            this.grbox_report.Controls.Add(this.btn_delete);
            this.grbox_report.Controls.Add(this.grd_report);
            this.grbox_report.Location = new System.Drawing.Point(619, 12);
            this.grbox_report.Name = "grbox_report";
            this.grbox_report.Size = new System.Drawing.Size(555, 583);
            this.grbox_report.TabIndex = 2;
            this.grbox_report.TabStop = false;
            this.grbox_report.Text = "Operations Log";
            // 
            // grd_report
            // 
            this.grd_report.AllowUserToAddRows = false;
            this.grd_report.AllowUserToDeleteRows = false;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grd_report.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle2;
            this.grd_report.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.grd_report.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grd_report.Cursor = System.Windows.Forms.Cursors.Hand;
            this.grd_report.Location = new System.Drawing.Point(33, 67);
            this.grd_report.MultiSelect = false;
            this.grd_report.Name = "grd_report";
            this.grd_report.ReadOnly = true;
            this.grd_report.Size = new System.Drawing.Size(503, 409);
            this.grd_report.TabIndex = 0;
            // 
            // btn_delete
            // 
            this.btn_delete.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.btn_delete.BackColor = System.Drawing.Color.LightSalmon;
            this.btn_delete.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_delete.Location = new System.Drawing.Point(33, 488);
            this.btn_delete.Name = "btn_delete";
            this.btn_delete.Size = new System.Drawing.Size(503, 64);
            this.btn_delete.TabIndex = 5;
            this.btn_delete.Text = "Delete";
            this.btn_delete.UseVisualStyleBackColor = false;
            this.btn_delete.Click += new System.EventHandler(this.btn_delete_Click);
            // 
            // dt_report
            // 
            this.dt_report.Cursor = System.Windows.Forms.Cursors.Hand;
            this.dt_report.Location = new System.Drawing.Point(33, 33);
            this.dt_report.Name = "dt_report";
            this.dt_report.Size = new System.Drawing.Size(200, 20);
            this.dt_report.TabIndex = 6;
            this.dt_report.ValueChanged += new System.EventHandler(this.dt_report_ValueChanged);
            // 
            // dt_status
            // 
            this.dt_status.Enabled = false;
            this.dt_status.Location = new System.Drawing.Point(33, 33);
            this.dt_status.Name = "dt_status";
            this.dt_status.Size = new System.Drawing.Size(200, 20);
            this.dt_status.TabIndex = 7;
            // 
            // FrmOperators
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1186, 607);
            this.Controls.Add(this.grbox_report);
            this.Controls.Add(this.grbox_status);
            this.Controls.Add(this.grbox_operation);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmOperators";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Steinsvik | Farm 1 | Operators ";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmOperators_FormClosing);
            this.Load += new System.EventHandler(this.FrmOperators_Load);
            ((System.ComponentModel.ISupportInitialize)(this.grd_lateststatus)).EndInit();
            this.grbox_operation.ResumeLayout(false);
            this.grbox_operation.PerformLayout();
            this.grbox_status.ResumeLayout(false);
            this.grbox_report.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.grd_report)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView grd_lateststatus;
        private System.Windows.Forms.Label lbl_fish;
        private System.Windows.Forms.GroupBox grbox_operation;
        private System.Windows.Forms.ComboBox cmb_totank;
        private System.Windows.Forms.Button btn_register;
        private System.Windows.Forms.TextBox txt_information;
        private System.Windows.Forms.TextBox txt_fromtank;
        private System.Windows.Forms.TextBox txt_description;
        private System.Windows.Forms.Label lbl_description;
        private System.Windows.Forms.ComboBox cmb_operation;
        private System.Windows.Forms.Label lbl_operation;
        private System.Windows.Forms.Label lbl_totank;
        private System.Windows.Forms.Label lbl_fromtank;
        private System.Windows.Forms.ComboBox cmb_fish;
        private System.Windows.Forms.GroupBox grbox_status;
        private System.Windows.Forms.GroupBox grbox_report;
        private System.Windows.Forms.Button btn_delete;
        private System.Windows.Forms.DataGridView grd_report;
        private System.Windows.Forms.DateTimePicker dt_status;
        private System.Windows.Forms.DateTimePicker dt_report;
    }
}


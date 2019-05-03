using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace DBMSLab
{
    public partial class Form13 : Form
    {
        public Form13()
        {
            InitializeComponent();
        }
        public string string_con = "";


        private void button3_Click(object sender, EventArgs e)
        {
            Form1 newForm = new Form1();
            newForm.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();

            SqlCommand cmd = new SqlCommand("insert into dbo.AssessmentComponent(Name,RubricId,TotalMarks,DateCreated,DateUpdated,AssessmentId) values('" + Name.Text + "','" + RubricId.Text + "', '" + Tmarks.Text + "', '" + DateTime.Now + "', '" + DateTime.Now + "', '" + AssId.Text + "')", c);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Assessment Component Added!");
            Form14 newForm = new Form14();
            newForm.Show();
        }
    }
}

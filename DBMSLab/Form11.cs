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
    public partial class Form11 : Form
    {
        public Form11()
        {
            InitializeComponent();
        }

        public string string_con = "";


        private void Form11_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form1 newForm = new Form1();
            newForm.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();
            if (c.State == ConnectionState.Open)
            {

                SqlCommand command = new SqlCommand("insert into dbo.Assessment(Title,DateCreated,TotalMarks,TotalWeightage) values('" + Title.Text + "','" + DateTime.Now + "','" + Tmarks.Text + "','" + Tweighatge.Text + "')", c);
                command.ExecuteNonQuery();
                MessageBox.Show("Assessment Added!");

                Form12 newform = new Form12();
                newform.Show();

            }
        }

        private void Tmarks_TextChanged(object sender, EventArgs e)
        {

        }

        private void Title_TextChanged(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void Tweighatge_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

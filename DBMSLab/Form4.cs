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
    public partial class Form4 : Form
    {
        public Form4()
        {
            InitializeComponent();
        }

        public string string_com = "";

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_com);
            c.Open();


            string QUERY = "insert into dbo.Clo(Name,DateCreated,DateUpdated) values('" + First.Text + "','" + DateTime.Now + "','" + DateTime.Now + "')";
            SqlCommand cm = new SqlCommand(QUERY, c);
            cm.ExecuteNonQuery();
            MessageBox.Show("DONE!");
            
            Form5 frm = new Form5();
            frm.Show();
        }

        private void Form4_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 newFORM = new Form1();

            newFORM.Show();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void First_TextChanged(object sender, EventArgs e)
        {

        }

        private void First_TextAlignChanged(object sender, EventArgs e)
        {

        }

        private void First_Leave(object sender, EventArgs e)
        {

        }
    }
}

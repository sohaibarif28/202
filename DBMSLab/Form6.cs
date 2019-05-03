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
    public partial class Form6 : Form
    {
        public Form6()
        {
            InitializeComponent();
        }
        public string string_con = "";

        private void Form6_Load(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();


            string QUERY = "SELECT Id FROM Clo";
            SqlCommand cm = new SqlCommand(QUERY, c);
            SqlDataReader r;

            r = cm.ExecuteReader();
            DataTable Table = new DataTable();


           
            Table.Columns.Add("Id", typeof(string));
            Table.Load(r);
            comboBox1.ValueMember = "Id";
            comboBox1.DisplayMember = "Id";
            comboBox1.DataSource = Table;
            
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();


            string QUERY = "INSERT INTO Rubric(Details,CloId) values('" + Details.Text + "','" + comboBox1.SelectedValue + "')";
            SqlCommand cm = new SqlCommand(QUERY, c);
            cm.ExecuteNonQuery();
            MessageBox.Show("Added!");
           
            Form7 frm = new Form7();
            frm.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 newFORM = new Form1();

            newFORM.Show();
        }

        private void Details_TextChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}

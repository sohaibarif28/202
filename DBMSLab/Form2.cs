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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }
        public string string_con = "";

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();



            string QUERY = "INSERT INTO Student(FirstName,LastName,Contact,Email,RegistrationNumber,Status) values('" + First.Text + "','" + Last.Text + "','" + Contact.Text + "','" + Email.Text + "','" + Reg.Text + "','" + 5 + "')";
                SqlCommand cm = new SqlCommand(QUERY, c);
            cm.ExecuteNonQuery();


                MessageBox.Show("DONE!");
                
                Form3 newFORM = new Form3();
            newFORM.Show();
            
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
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

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
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

        private void Email_TextChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void Last_TextChanged(object sender, EventArgs e)
        {

        }

        private void First_TextChanged(object sender, EventArgs e)
        {

        }

        private void Contact_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click_1(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {

        }
    }
}

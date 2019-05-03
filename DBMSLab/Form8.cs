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
    public partial class Form8 : Form
    {
        public Form8()
        {
            InitializeComponent();
        }
        public string string_con = "";

        private void Form8_Load(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();
            SqlCommand query = new SqlCommand("select Id from Rubric", c);


            SqlDataReader data;

            data = query.ExecuteReader();
            DataTable grid = new DataTable();

            grid.Columns.Add("Id", typeof(string));
            grid.Load(data);


            comboBox1.DisplayMember = "Id";
            comboBox1.DataSource = grid;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();
            if (c.State == ConnectionState.Open)
            {

                String query = "insert into dbo.RubricLevel(RubricId,Details,MeasurementLevel) values('" + Convert.ToInt32(comboBox1.SelectedItem) + "','" + Details.Text + "','" + Convert.ToInt32(comboBox2.SelectedItem) + "')";
                SqlCommand cmd = new SqlCommand(query, c);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Addedd Successfully!");

                Form9 newForm = new Form9();
                newForm.Show();

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 newForm = new Form1();
            newForm.Show();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            Form1 newForm = new Form1();
            newForm.Show();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();
            if (c.State == ConnectionState.Open)
            {

                String query = "insert into dbo.RubricLevel(RubricId,Details,MeasurementLevel) values('" + Convert.ToInt32(comboBox1.SelectedItem) + "','" + Details.Text + "','" + Convert.ToInt32(comboBox2.SelectedItem) + "')";
                SqlCommand cmd = new SqlCommand(query, c);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Addedd Successfully!");

                Form9 newForm = new Form9();
                newForm.Show();

            }
        }
    }
}

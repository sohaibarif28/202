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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }
        public string string_con = "";

        private void Form3_Load(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();

            string QUERY = "select * from Student ";
            SqlCommand cm = new SqlCommand(QUERY, c);
            SqlDataAdapter data = new SqlDataAdapter(cm);
            DataTable grid = new DataTable(cm.ToString());

            data.Fill(grid);
            dataGridView1.DataSource = grid;
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);

            c.Open();
            if (e.ColumnIndex == dataGridView1.Columns["DeleteButton"].Index)
            {
                int RowselectedIndex = e.RowIndex;
                int Id = Convert.ToInt32(dataGridView1.Rows[RowselectedIndex].Cells["Id"].Value);

               
                SqlCommand command = new SqlCommand("DELETE FROM Student WHERE Id = '" + Id + "'", c);
                command.ExecuteNonQuery();
                MessageBox.Show("Deleted Successfully!");
                this.dataGridView1.Rows.RemoveAt(e.RowIndex);



            }


        }

        private void linkLabel3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 newFORM = new Form1();

            newFORM.Show();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView1_CellBorderStyleChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

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
    public partial class Form9 : Form
    {
        public Form9()
        {
            InitializeComponent();
        }
        public string string_con = "";


        private void button1_Click(object sender, EventArgs e)
        {
            Form1 newForm = new Form1();
            newForm.Show();
        }

        private void Form9_Load(object sender, EventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);
            c.Open();

            string QUERY = "select * from RubricLevel ";
            SqlCommand cm = new SqlCommand(QUERY, c);
            SqlDataAdapter data = new SqlDataAdapter(cm);
            DataTable grid = new DataTable(cm.ToString());

            data.Fill(grid);
            dataGridView1.DataSource = grid;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            SqlConnection c = new SqlConnection(string_con);

            c.Open();
            if (e.ColumnIndex == dataGridView1.Columns["DeleteButton"].Index)
            {
                int RowselectedIndex = e.RowIndex;
                int Id = Convert.ToInt32(dataGridView1.Rows[RowselectedIndex].Cells["Id"].Value);


                SqlCommand command = new SqlCommand("DELETE FROM RubricLevel WHERE Id = '" + Id + "'", c);
                command.ExecuteNonQuery();
                MessageBox.Show("Deleted Successfully!");
                this.dataGridView1.Rows.RemoveAt(e.RowIndex);



            }
        }
    }
}

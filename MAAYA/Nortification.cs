using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MAAYA
{
    public partial class Nortification : Form
    {
        public Nortification()
        {
            InitializeComponent();

            try
            {
                string MyConnection = "datasource=localhost; Database=maaya;port=3306; username=root;password=;";
                string Query = "SELECT `ProductCode`,`ProductName`,`Quantity` FROM `products` WHERE `Quantity`<`ReOrderLevel`";
                MySqlConnection MyConn = new MySqlConnection(MyConnection);
                MySqlCommand MyCommand = new MySqlCommand(Query, MyConn);
                MySqlDataReader MyReader;
                MyConn.Open();
                MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                MyAdapter.SelectCommand = MyCommand;
                DataTable dTable = new DataTable();
                MyAdapter.Fill(dTable);
                dataGridView1.DataSource = dTable;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
               // MessageBox.Show("see all the orders button err");
            }


        }

        private void button1_Click(object sender, EventArgs e)
        {
            welocome frn2 = new welocome();
            frn2.Show();
            this.Close();
        }

        private void Nortification_Load(object sender, EventArgs e)
        {
            this.BackColor = Color.FromArgb(0, 90, 158);
            button1.BackColor = Color.FromArgb(21,149,197);


            dataGridView1.BackgroundColor = Color.FromArgb(0, 90, 158);
            dataGridView1.BorderStyle = BorderStyle.None;
            dataGridView1.AlternatingRowsDefaultCellStyle.BackColor = Color.FromArgb(79, 119, 135);//maruwata pennana color
            dataGridView1.CellBorderStyle = DataGridViewCellBorderStyle.None;
            dataGridView1.DefaultCellStyle.SelectionBackColor = Color.Gray;//selec krn row eka
            dataGridView1.DefaultCellStyle.SelectionForeColor = Color.Black;

            dataGridView1.EnableHeadersVisualStyles = false;
            dataGridView1.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.None;
            dataGridView1.ColumnHeadersDefaultCellStyle.BackColor = Color.FromArgb(11, 40, 88);//totole color
            dataGridView1.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;////titile eke font eka
    
    }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

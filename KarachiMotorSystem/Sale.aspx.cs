using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;    

namespace KarachiMotorSystem
{
    public partial class Sale : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string sale = Convert.ToString(this.GetSaleID());
                TbxSaleID.Text = sale;
                TbxDate.Text = DateTime.Now.ToString("dd-MM-yyyy");
                TbxSalePerson.Text = FlagsVariables.userId;
            }
        }
        protected void CNICTextChangeEvent(object sender, EventArgs e)
        {
            string CNIC = TbxCNIC.Text;
            ConnectionStringClass myConnection = new ConnectionStringClass();
            SqlConnection myDataBaseConnection = myConnection.getDatabaseConnection();
            string Query = " Select customerID, customerName, cellNo1, emailaddress, homeAddress, driverNo From CustomerMaster Where cNIC = '"+CNIC+"'";
            SqlCommand myCommand = new SqlCommand(Query, myDataBaseConnection);
            SqlDataAdapter myAdaptor = new SqlDataAdapter(myCommand);
            DataTable datatable = new DataTable();

            try
            {
                myDataBaseConnection.Open();
                var record = myCommand.ExecuteScalar();

                if (record != null)
                {
                    myAdaptor.Fill(datatable);
                    TbxCustomerID.Text = datatable.Rows[0]["customerID"].ToString();
                    TbxCustomerName.Text = datatable.Rows[0]["customerName"].ToString();
                    TbxEmail.Text = datatable.Rows[0]["emailAddress"].ToString();
                    TbxCellNo.Text = datatable.Rows[0]["cellNo1"].ToString();
                    TbxDriverNo.Text = datatable.Rows[0]["driverNo"].ToString();
                    TbxHomeAddress.Text = datatable.Rows[0]["homeAddress"].ToString();
                    myDataBaseConnection.Close();
                }
                else
                {
                    string script = "alert(\"Record Does Not Found  !\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        protected void RegistrationTextchangeEvent(object sender, EventArgs e)
        {
            string RegistrationNo = TbxRegNo.Text;
            ConnectionStringClass myConnection = new ConnectionStringClass();
            SqlConnection myDBConnection = myConnection.getDatabaseConnection();
            string Query = "Select StockID, Make, FrameNo, EngineNo, Variant, Other from StockMaster Where RegNo = '" + RegistrationNo + "' ";
            SqlCommand myCommand = new SqlCommand(Query, myDBConnection);
            SqlDataAdapter myAdaptor = new SqlDataAdapter(myCommand);
            DataTable datatable = new DataTable();
            
            try
            {
                myDBConnection.Open();
                var record = myCommand.ExecuteScalar();

                if (record != null)
                {
                    myAdaptor.Fill(datatable);
                    TbxStockID.Text = datatable.Rows[0]["StockID"].ToString();
                    TbxMake.Text = datatable.Rows[0]["Make"].ToString();
                    TbxFrameNo.Text = datatable.Rows[0]["FrameNo"].ToString();
                    TbxEngineNo.Text = datatable.Rows[0]["EngineNo"].ToString();
                    TbxVariant.Text = datatable.Rows[0]["Variant"].ToString();
                    TbxAmount.Text = datatable.Rows[0]["Other"].ToString();
                    myDBConnection.Close();
                }
                else
                {
                    string script = "alert(\"Record Does Not Found  !\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        private int GetSaleID() 
        {
            int Sale = 0;
            ConnectionStringClass myConnection = new ConnectionStringClass();
            SqlConnection Sqlconnection = myConnection.getDatabaseConnection();
            String Query = "Select saleID from Sale order by saleID desc ";
            SqlCommand GetIDCommand = new SqlCommand(Query, Sqlconnection);
            try
            {
                Sqlconnection.Open();
                int id =Convert.ToInt32(GetIDCommand.ExecuteScalar()) + 1;
                Sale = id;
                Sqlconnection.Close();
            }
            catch (Exception)
            {
                
                throw;
            }
            return Sale;
        }
        }
    }

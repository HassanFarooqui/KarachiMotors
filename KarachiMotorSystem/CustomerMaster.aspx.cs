using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KarachiMotorSystem
{
    public partial class CustomerMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSave(object sender, EventArgs e)
        {
            string customer =  TbxCustomerId.Text;
            string customerName = TbxCustomerName.Text;
            string fatherName = TbxFatherName.Text;
            string dOB = TbxDOB.Text;
            string cNIC = TbxCNIC.Text;
            string hPASales = TbxHPASales.Text;
            string residentialNo = TbxResidentialNo.Text;
            string officeNo = TbxOfficeNo.Text;
            string cellNo1 = TbxCellNo1.Text;
            string cellNo2 = TbxCellNo2.Text;
            string driverNo = TbxDriverNo.Text;
            string emailAddress = TbxEmailAddress.Text;
            string homeAddress = TbxHomeAddress.Text;
            string nTNNo = TbxNTNNo.Text;
            string customerType = DdnListCustomerType.Text;
            string recoveryBy = TbxRecdoveryBy.Text;
            string insertedBy = TbxInsertedBy.Text;
            string UpdatedBy = TbxUpdatedBy.Text;

            ConnectionStringClass myConnection = new ConnectionStringClass();
            SqlConnection sqlC = myConnection.getDatabaseConnection();
            string insertQuery = "insert into CustomerMaster (customerID,CustomerName, fatherName, cNIC, hPASales, residentialNo, officeNo, cellNo1, cellNo2, driverNo, emailAddress, homeAddress, nTNNo, customerType, recoveryBy, insertedBy, UpdatedBy) Values (  '"+customer+"','" + customerName + "', '" + fatherName + "', '" + cNIC + "', '" + hPASales + "', '" + residentialNo + "', '" + officeNo + "', '" + cellNo1 + "', '" + cellNo2 + "', '" + driverNo + "', '" + emailAddress + "','" + homeAddress + "', '" + nTNNo + "', '" + customerType + "', '" + insertedBy + "', '" + UpdatedBy + "' ,'"
            +UpdatedBy+"')";
            SqlCommand mycommand = new SqlCommand(insertQuery, sqlC);
            try
            {
                sqlC.Open();
                mycommand.ExecuteNonQuery();
                sqlC.Close();

            }
            catch (Exception ex) 
            {
                Response.Write(ex);
            }            

        }

        protected void BtnUpdate(object sender, EventArgs e)
        {
            string customer =        TbxCustomerId.Text;
            string customerName =    TbxCustomerName.Text;
            string fatherName =      TbxFatherName.Text;
            string dOB =             TbxDOB.Text;
            string cNIC =            TbxCNIC.Text;
            string hPASales =        TbxHPASales.Text;
            string residentialNo =   TbxResidentialNo.Text;
            string officeNo =        TbxOfficeNo.Text;
            string cellNo1 =         TbxCellNo1.Text;
            string cellNo2 =         TbxCellNo2.Text;
            string driverNo =        TbxDriverNo.Text;
            string emailAddress =    TbxEmailAddress.Text;
            string homeAddress =     TbxHomeAddress.Text;
            string nTNNo =           TbxNTNNo.Text;
            string customerType = DdnListCustomerType.Text;
            string recoveryBy = TbxRecdoveryBy.Text;
            string insertedBy = TbxInsertedBy.Text;
            string UpdatedBy = TbxUpdatedBy.Text;

            ConnectionStringClass myConnection = new ConnectionStringClass();
            SqlConnection sqlC = myConnection.getDatabaseConnection();
            string insertQuery = "Update CustomerMaster (customerID,CustomerName, fatherName, cNIC, hPASales, residentialNo, officeNo, cellNo1, cellNo2, driverNo, emailAddress, homeAddress, nTNNo, customerType, recoveryBy, insertedBy, UpdatedBy) Values (  '" + customer + "','" + customerName + "', '" + fatherName + "', '" + cNIC + "', '" + hPASales + "', '" + residentialNo + "', '" + officeNo + "', '" + cellNo1 + "', '" + cellNo2 + "', '" + driverNo + "', '" + emailAddress + "','" + homeAddress + "', '" + nTNNo + "', '" + customerType + "', '" + insertedBy + "', '" + UpdatedBy + "' ,'"
            + UpdatedBy + "')";
            SqlCommand mycommand = new SqlCommand(insertQuery, sqlC);
            try
            {
                sqlC.Open();
                mycommand.ExecuteNonQuery();
                sqlC.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }            
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {

            string searchCustomerID = TbxSearchCustomerID.Text;
            ConnectionStringClass connectionString = new ConnectionStringClass();
            SqlConnection sc = connectionString.getDatabaseConnection();
            string Query = "Select * from CustomerMaster where customerID = '"+searchCustomerID+"'";
            SqlCommand updateCommand = new SqlCommand(Query, sc);
            SqlDataAdapter myadapter = new SqlDataAdapter(updateCommand);
            DataTable myTable = new DataTable();
            try
            {
                sc.Open();
               int a = updateCommand.ExecuteNonQuery();
             
               sc.Close();
            }
            catch (Exception)
            {
                
                throw;
            }

            myadapter.Fill(myTable);

            TbxCustomerId.Text = myTable.Rows[0]["customerID"].ToString();
            TbxCustomerName.Text = myTable.Rows[0]["customerName"].ToString();
            TbxFatherName.Text = myTable.Rows[0]["fatherName"].ToString();
            TbxCNIC.Text = myTable.Rows[0]["cNIC"].ToString();
            TbxHPASales.Text = myTable.Rows[0]["hPASales"].ToString();
            TbxResidentialNo.Text = myTable.Rows[0]["residentialNo"].ToString();
            TbxOfficeNo.Text = myTable.Rows[0]["officeNo"].ToString();
            TbxCellNo1.Text = myTable.Rows[0]["cellNo1"].ToString();
            TbxCellNo2.Text = myTable.Rows[0]["cellNo2"].ToString();
            TbxDriverNo.Text = myTable.Rows[0]["driverNo"].ToString();
            TbxEmailAddress.Text = myTable.Rows[0]["emailAddress"].ToString();
            TbxHomeAddress.Text = myTable.Rows[0]["homeAddress"].ToString();
            TbxNTNNo.Text = myTable.Rows[0]["nTNNo"].ToString();
            TbxRecdoveryBy.Text = myTable.Rows[0]["recoveryBy"].ToString();
            TbxUpdatedBy.Text = myTable.Rows[0]["UpdatedBy"].ToString();
            TbxInsertedBy.Text = myTable.Rows[0]["insertedBy"].ToString();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MartanyProyecto
{
    
    public partial class Inicio : System.Web.UI.Page
    {
        Conexion obj = new Conexion();


        protected void Page_Load(object sender, EventArgs e)
        {
            string query= ("SELECT Id_Producto,Nombre,imgURL FROM Productos");
            obj.LlenarDropDownList(query);

            //string makehtml = string.Empty;
            //for (int i = 0; i < obj.ds.Tables[0].Rows.Count; i++)
            //{
            //    makehtml += "<div><span>DateEEE:</span> " + obj.ds.Tables[0].Rows[i]["Id_Producto"] + " <span>Title:</span> " + obj.ds.Tables[0].Rows[i]["Nombre"] + "< span > Content:</ span > ";
            //}
            lstVDataBind.DataSource = obj.ds;
            lstVDataBind.DataBind();
           

        }



        //protected void btnPostback_Click(object sender, EventArgs e)
        //{

        //    ListViewItem item = (sender as LinkButton).NamingContainer as ListViewItem;
        //    int id = (int)ListView1.DataKeys[item.DataItemIndex].Values["ID"];
        //    ListViewItem item = lstVDataBind.Items[lstVDataBind.SelectedIndex];
        //    Label c = (Label)item.FindControl("here type the lable id!!");
        //    ListViewItem Item = ((Button)sender).NamingContainer as
        //          ListViewItem;
        //    int Klub_ID = (int)lstVDataBind.DataKeys[Item.DataItemIndex]["Id_Producto"];
        //    //int id = (int)lstVDataBind.SelectedDataKey.Value;


        //    Label lbl = Item.FindControl("lblNombre") as Label;






        //    Response.Redirect("Producto.aspx");
        //}

        protected void lstVDataBind_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if(e.CommandName == "Ver")
            {
                ListViewDataItem dataItem = (ListViewDataItem)e.Item;


            }
        }

       
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ListViewItem item = (sender as LinkButton).NamingContainer as ListViewItem;
            int id = (int)lstVDataBind.DataKeys[item.DataItemIndex].Values["Id_Producto"];

        }


    }
}
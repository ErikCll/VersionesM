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
    }
}
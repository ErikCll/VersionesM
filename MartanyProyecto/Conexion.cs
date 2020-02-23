using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace MartanyProyecto
{

    public class Conexion
    {
        private string cadena = "Server=tcp:servermartany.database.windows.net,1433;Initial Catalog=BDMA;Persist Security Info=False;User ID=serverma;Password=Sqlserver123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        //Server=tcp:serversensorti.database.windows.net,1433;Initial Catalog=SensorTII;Persist Security Info=False;User ID=sensorti;Password=Server123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;
        //Data Source = LAPTOP-FNP8TLRF; Initial Catalog = SensorTI; Integrated Security = True
        public SqlConnection conn;
        //private SqlCommandBuilder cmb;
        public SqlCommand cmd;
        public DataSet ds;
        public SqlDataAdapter da;
        public SqlDataReader dr;
        public int Id;
        public DataTable dt = new DataTable();

        private void Conectar()
        {
            conn = new SqlConnection(cadena);
        }
        public Conexion()
        {
            Conectar();
        }


        public DataTable Consultar(string sqlQuery)
        {
            try
            {
                conn.Open();
                cmd = new SqlCommand(sqlQuery, conn);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);


            }
            catch (Exception ex)
            {
            }
            finally
            {
                conn.Close();
            }
            return dt;
        }

        public DataSet LlenarDropDownList(string sqlQuery)
        {
            conn.Open();
            cmd = new SqlCommand(sqlQuery, conn);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            conn.Close();
            return ds;
        }

        public bool Insertar(string sqlQuery)
        {
            conn.Open();
            cmd = new SqlCommand(sqlQuery, conn);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (i > 0)
                return true;
            else
                return false;
        }




        public bool Eliminar(string sqlQuery)
        {
            conn.Open();
            cmd = new SqlCommand(sqlQuery, conn);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (i > 0)
                return true;
            else
                return false;
        }


        public bool Modificar(string sqlQuery)
        {
            conn.Open();
            cmd = new SqlCommand(sqlQuery, conn);
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            if (i > 0)
                return true;
            else
                return false;
        }

        public bool Autenticar(string usuario, string password)
        {
            string sqlQuery = "SELECT COUNT(*) FROM Usuario  WHERE Nombre = '" + usuario + "' AND Password = '" + password + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            //string sqlQuery = "SELECT COUNT(*) FROM Usuario  WHERE Nombre =@Nombre AND Password =@Password";
            //conn.Open();
            //SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            //cmd.Parameters.Add(new SqlParameter("Nombre", usuario));
            //cmd.Parameters.Add(new SqlParameter("Password", password));
            var i = cmd.ExecuteScalar();
            int ii = Convert.ToInt16(i);
            conn.Close();
            if (ii > 0)
            {
                return true;


            }
            else
                return false;

        }

        public int ObtenerIdUsuario(string Usuario)
        {
            string sqlString = "SELECT Id FROM Usuario WHERE Nombre='" + Usuario + "'";
            conn.Open();
            cmd = new SqlCommand(sqlString, conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            Id = dr.GetInt32(0);
            conn.Close();
            return Id;
        }

        public bool AutenticarAdministrador(int IdUsuario)
        {
            string sqlQuery = "SELECT COUNT(*) FROM Usuario WHERE Id=" + IdUsuario.ToString() + " AND EsAdministrador=1 AND Activado IS NULL";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);

            var i = cmd.ExecuteScalar();
            int ii = Convert.ToInt16(i);
            conn.Close();
            if (ii > 0)
            {
                return true;


            }
            else
                return false;

        }

        public bool CambioContrasena(int IdUsuario, string Password)
        {
            string sqlQuery = "SELECT COUNT(*) FROM Usuario WHERE Id=" + IdUsuario + " AND Password='" + Password + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);

            var i = cmd.ExecuteScalar();
            int ii = Convert.ToInt16(i);
            conn.Close();
            if (ii > 0)
            {
                return true;


            }
            else
                return false;

        }


    }

}
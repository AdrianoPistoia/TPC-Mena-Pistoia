using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPC_Mena_Pistoia
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Dominio.Producto> listaProductos { get; set; }

        public List<Dominio.Producto> listaFavoritos { get; set; }

        public ProductoNegocio negocio = new ProductoNegocio();
        public int dll_valor = 0;
        public static int dll_iterator = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                listaProductos = negocio.listar("");

                repeater.DataSource = negocio.listar("");
                repeater.DataBind();
                Session.Add("listaProductos", listaProductos);

                if (Session["listaFavoritos"] == null)
                {
                    listaFavoritos = new List<Dominio.Producto>();
                    Session.Add("listaFavoritos", listaFavoritos);
                }
                ddl_cantidad1.Items.Clear();
                foreach(var Producto in (List<Dominio.Producto>)Session["listaProductos"])
                {
                    for (int i = 1; i <= Decimal.ToInt32(Producto.Cantidad); i++)
                    {
                        ddl_cantidad1.Items.Add(i.ToString()); ;
                    }
                }
            }

            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);

                negocio.sql_SetFavorito( listaProductos.Find(producto => producto.ID == id), 1);

            }
        }

        protected void ddl_cantidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            int n = ddl_cantidad1.SelectedIndex;

        }



        
    }
}

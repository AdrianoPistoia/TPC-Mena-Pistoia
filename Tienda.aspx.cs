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

        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();

            if (!IsPostBack)
            {
                


                listaProductos = negocio.listar("");
                Session.Add("listaProductos", listaProductos);

                if (Session["listaFavoritos"] == null)
                {
                    listaFavoritos = new List<Dominio.Producto>();
                    Session.Add("listaFavoritos", listaFavoritos);
                }

            }

            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);



                listaFavoritos = (List<Dominio.Producto>)Session["listaFavoritos"];
                listaProductos = (List<Dominio.Producto>)Session["listaProductos"];

                Dominio.Producto nuevoFavorito = listaProductos.Find(producto => producto.ID == id);
               /// negocio.sql_SetFavorito(listaProductos.Find(producto => producto.ID == id));

                listaFavoritos.Add(nuevoFavorito);

                Session.Add("listaFavoritos", listaFavoritos);
            }
        }

        protected void ddl_cantidad_SelectedIndexChanged(object sender, EventArgs e)
        {




        }
    }
}

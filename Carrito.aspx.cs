using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TPC_Mena_Pistoia
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ProductoNegocio negocio = new ProductoNegocio();
        public List<Dominio.Producto> listaFavoritos { get; set; }
        public List<Dominio.Producto> listaProductos { get; set; }
        public int precioTotal = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            listaFavoritos = negocio.listar(Diccionario.WHERE_FAVORITOS_TRUE);
            
            foreach (Dominio.Producto prod in listaFavoritos)
            {
                
                precioTotal += Decimal.ToInt32(prod.Precio);
                
            }
            if (Request.QueryString["id"] != null && Request.QueryString["accion"] == "eliminar")
            {
                int id = int.Parse(Request.QueryString["id"]);
                ///  1 para valor true, 0 para false
                negocio.sql_SetFavorito(listaFavoritos.Find(producto => producto.ID == id), 0);
                Response.Redirect("/Carrito.aspx");
                
            }
            if (Request.QueryString["id"] != null && Request.QueryString["accion"] == "comprar")
            {
                int id = int.Parse(Request.QueryString["id"]);
                
                Response.Redirect("/Producto.aspx?id="+id.ToString());

            }
            if (listaFavoritos.Count == 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "hwa", "NoHayProductosEnElCarrito(); ", true);
            }
        }

        
    }
}
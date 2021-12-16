using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace TPC_Mena_Pistoia
{
    public partial class Producto : System.Web.UI.Page
    {
        public ProductoNegocio negocio = new ProductoNegocio();
        public List<Dominio.Producto> listaProductos { get; set; }
        public Dominio.Producto ProdPuntual { get; set; }
        public int precioTot;
        protected void Page_Load(object sender, EventArgs e)
        {
            listaProductos = (List<Dominio.Producto>)Session["listaProductos"];
            
            if (Request.QueryString["id"] != null)
            {
                
                int id = int.Parse(Request.QueryString["id"]);
                ProdPuntual = listaProductos.Find(s => s.ID == id);
                

                
                ProdPuntual.CantidadSeleccionada = Int32.Parse( Request.QueryString["cantidad"]);
                precioTot = (decimal.ToInt32(ProdPuntual.Precio) * Int32.Parse(Request.QueryString["cantidad"]));
                

               
                listaProductos = negocio.listar("");
                Session.Add("listaProductos", listaProductos);
                
                
                
            }
            else
            {
                Response.Redirect("Tienda.aspx");
            }
        }

        protected void Comprar_Click(object sender, EventArgs e)
        {

         
            
        }
    }
}
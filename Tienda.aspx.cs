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
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            listaProductos = negocio.listar();

            TituloProducto1.Text = ""+listaProductos[0].Nombre;
            Precio1.Text = "$"+listaProductos[0].Precio;
        }
    }
}
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
        public List<Dominio.Producto> listaProductos { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            listaProductos = (List<Dominio.Producto>)Session["listaProductos"];
        }

        
    }
}
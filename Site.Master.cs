using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPC_Mena_Pistoia
{
    public partial class SiteMaster : MasterPage
    {
        public List<Dominio.Producto> listaProductos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            listaProductos = negocio.listar("");

            
        }
    }
}
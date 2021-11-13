using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
<<<<<<< HEAD
using Dominio;
=======
>>>>>>> 12170725e6e4a80c35150e5fdffc2bdb993efc4d

namespace TPC_Mena_Pistoia
{
    public partial class WebForm1 : System.Web.UI.Page
    {
<<<<<<< HEAD
        public List<Dominio.Producto> listaProductos { get; set; }

=======

        public List<Dominio.Producto> listaProductos { get; set; }
>>>>>>> 12170725e6e4a80c35150e5fdffc2bdb993efc4d
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            listaProductos = negocio.listar();
<<<<<<< HEAD
        }

        protected void btnAgregarProducto_Click(object sender, EventArgs e)
        {
            
=======

            TituloProducto1.Text = ""+listaProductos[0].Nombre;
            Precio1.Text = "$" + (int)listaProductos[0].Precio;
            DescripcionProducto1.Text = listaProductos[0].Descripcion;
>>>>>>> 12170725e6e4a80c35150e5fdffc2bdb993efc4d
        }
    }
}
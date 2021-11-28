using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace TPC_Mena_Pistoia
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public List<Dominio.Producto> listaFavoritos { get; set; }
        public int precioTotal = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            listaFavoritos = (List<Dominio.Producto>)Session["listaFavoritos"];
            
            foreach (Dominio.Producto prod in listaFavoritos)
            {
                
                
                /// 
                precioTotal += Decimal.ToInt32(prod.Precio);
                
            }

        }

        protected void EliminarFav_Click(object sender, EventArgs e)
        {
            
        }
    }
}
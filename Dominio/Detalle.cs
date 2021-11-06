using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Detalle
    {
        public int ID { get; set; }
        public Pedido Pedido { get; set; }
        //public int Pedido { get; set; }
        public Producto Producto  { get; set; }
        public decimal Cantidad { get; set; }
    }
}

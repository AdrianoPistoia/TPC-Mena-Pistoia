using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Pedido
    {
        public int ID { get; set; }
        public Usuario Usuario { get; set; }
        public Estado Estado { get; set; }
        public Detalle Detalle { get; set; }
    }
}

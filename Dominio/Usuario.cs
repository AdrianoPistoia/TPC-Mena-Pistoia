using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Usuario
    {
        public int ID { get; set; }
        public string Alias { get; set; }
        public string Mail { get; set; }
        public string Password { get; set; }
        public Datos Datos { get; set; }
        public Direccion Direccion { get; set; }
    }
}

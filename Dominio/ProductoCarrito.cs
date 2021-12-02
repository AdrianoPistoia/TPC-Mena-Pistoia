using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class ProductoCarrito
    {
        Producto _producto;
        int _cantidad;
        
        public int getCantidad() { return _cantidad; }
        public void setCantidad(int n) { _cantidad += n; }

        ProductoCarrito(Producto prod,int n)
        {
            
            _producto = prod;
            _cantidad = n;
        }
    }
}

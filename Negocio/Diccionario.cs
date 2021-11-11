using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    class Diccionario
    {
        public static string CONEXION_SERVER = "server =.\\SQLEXPRESS; database=TheCarpetShop_DB; integrated security = true";

        public static string LISTAR_TODOS_ARTICULOS =   "select P.Id, P.Codigo, P.Nombre, P.Descripcion, M.Descripcion as Marca, P.IdMarca, C.Descripcion as Categoria, P.IdCategoria, I.Link,  P.Precio, P.Cantidad " +
                                                        "from PRODUCTO P inner join MARCA M on M.Id = P.IdMarca inner join CATEGORIA C on C.Id = P.IdCategoria inner join Imagen I on I.ID = P.IdImagen";



    }
}

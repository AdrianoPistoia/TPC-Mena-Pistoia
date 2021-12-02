using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Diccionario
    {
        public static string CONEXION_SERVER = "server =.\\SQLEXPRESS; database=TheCarpetShop_DB; integrated security = true";
        public static string WHERE_FAVORITOS_TRUE = "where P.Favoritos = 1";
        public static string WHERE_FAVORITOS_FALSE = "where P.Favoritos = 0";

        public static string UPDATE_FAVORITO  = "update Producto set Favorito = @favorito where ID = @id";

        public static string LISTAR_TODOS_ARTICULOS =   "select P.Id, P.Codigo, P.Nombre, P.Descripcion, M.Descripcion as Marca, P.IdMarca, C.Descripcion as Categoria,P.Favorito, P.IdCategoria, P.IdImagen, I.Descripcion as ImDesc, I.Link as Link,  P.Precio, P.Cantidad " +
                                                        "from PRODUCTO P inner join MARCA M on M.Id = P.IdMarca inner join CATEGORIA C on C.Id = P.IdCategoria inner join Imagen I on I.ID = P.IdImagen";


    }
}

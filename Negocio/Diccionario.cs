﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    class Diccionario
    {
        public static string CONEXION_SERVER = "server =.\\SQLEXPRESS; database=TheCarpetShop_DB; integrated security = true";

<<<<<<< HEAD
        public static string LISTAR_TODOS_ARTICULOS = "select P.Id, P.Codigo, P.Nombre, P.Descripcion, M.ID as IdMarca, M.Descripcion as Marca, C.ID as IdCategoria, C.Descripcion as Categoria, I.ID as IdImagen, I.Descripcion as Imagen, I.Link, P.Precio, P.Cantidad from PRODUCTO P inner join MARCA M on M.Id = P.IdMarca inner join CATEGORIA C on C.Id = P.IdCategoria inner join Imagen I on I.ID = P.IdImagen";
=======
        public static string LISTAR_TODOS_ARTICULOS =   "select P.Id, P.Codigo, P.Nombre, P.Descripcion, M.Descripcion as Marca, P.IdMarca, C.Descripcion as Categoria, P.IdCategoria, I.Link,  P.Precio, P.Cantidad " +
                                                        "from PRODUCTO P inner join MARCA M on M.Id = P.IdMarca inner join CATEGORIA C on C.Id = P.IdCategoria inner join Imagen I on I.ID = P.IdImagen";


>>>>>>> 12170725e6e4a80c35150e5fdffc2bdb993efc4d

    }
}

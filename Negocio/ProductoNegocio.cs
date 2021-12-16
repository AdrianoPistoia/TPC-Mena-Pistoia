using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;


namespace Negocio
{
    public class ProductoNegocio
    {
        
        public void sql_SetFavorito(Dominio.Producto aModificar,int ToF)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.UPDATE_FAVORITO);

                datos.setearParametro("@id", aModificar.ID);
                datos.setearParametro("@Favorito", ToF);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public List<Dominio.Producto> listar(string Lectura)//En caso de querer listar todos, dejar parametro vacio
        {
            if (String.IsNullOrEmpty(Lectura) || Lectura == null)
            {
                Lectura = "";
            }
            List<Dominio.Producto> lista = new List<Dominio.Producto>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.LISTAR_TODOS_ARTICULOS+Lectura);

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {



                    Producto aux = new Producto();
                    aux.Marca = new Marca();
                    aux.Categoria = new Categoria();
                    aux.Imagen = new Imagen();


                    aux.ID = (int)datos.Lector["Id"];
                    aux.Codigo = (string)datos.Lector["Codigo"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.Marca.ID = (int)datos.Lector["IdMarca"]; 
                    aux.Marca.Descripcion = (string)datos.Lector["Marca"];
                    aux.Categoria.ID = (int)datos.Lector["IdCategoria"];
                    aux.Categoria.Descripcion = (string)datos.Lector["Categoria"];

                    aux.Imagen.ID = (int)datos.Lector["IdImagen"];
                    aux.Imagen.Descripcion = (string)datos.Lector["ImDesc"];
                    aux.Imagen.Link = (string)datos.Lector["Link"];


                    aux.Precio = decimal.ToInt32((decimal)datos.Lector["Precio"]);
                    aux.Cantidad = (decimal)datos.Lector["Cantidad"];
                    aux.Favorito = (bool)datos.Lector["Favorito"];
                    /*

                    //aux.ID = datos.Lector.GetInt32(0);
                    //aux.Codigo = datos.Lector.GetString(1);
                    aux.Nombre = datos.Lector.GetString(2);
                    aux.Descripcion = datos.Lector.GetString(3);
                    aux.Precio = datos.Lector.GetDecimal(8);
                    aux.Imagen = new Imagen();
                    aux.Imagen.Link = datos.Lector.GetString(6);

                    */

                    lista.Add(aux);
                }

                return lista;

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }

        
    }
    
}

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
        public List<Dominio.Producto> listar()
        {
            List<Dominio.Producto> lista = new List<Dominio.Producto>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.LISTAR_TODOS_ARTICULOS);

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Dominio.Producto aux = new Dominio.Producto();

                    aux.ID = (int)datos.Lector["Id"];
                    aux.Codigo = (string)datos.Lector["Codigo"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.Marca = new Marca();
                    aux.Marca.ID = (int)datos.Lector["IdMarca"];
                    aux.Marca.Descripcion = (string)datos.Lector["Marca"];
                    aux.Categoria = new Categoria();
                    aux.Categoria.ID = (int)datos.Lector["IdCategoria"];
                    aux.Categoria.Descripcion = (string)datos.Lector["Categoria"];
                    aux.Imagen = new Imagen();
                    aux.Imagen.ID = (int)datos.Lector["IdImagen"];
                    aux.Imagen.Descripcion = (string)datos.Lector["Imagen"];
                    aux.Imagen.Link = (string)datos.Lector["Link"];
                    aux.Precio = (decimal)datos.Lector["Precio"];
                    aux.Cantidad = (decimal)datos.Lector["Cantidad"];

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

        /*

        public void agregar(Producto nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.AGREGAR_ARTICULO);

                datos.setearParametro("@codigo", nuevo.Codigo);
                datos.setearParametro("@nombre", nuevo.Nombre);
                datos.setearParametro("@descripcion", nuevo.Descripcion);
                datos.setearParametro("@idMarca", nuevo.Marca.ID);
                datos.setearParametro("@idCategoria", nuevo.Categoria.ID);
                datos.setearParametro("@imagen", nuevo.Imagen);
                datos.setearParametro("@precio", nuevo.Precio);

                datos.ejecutarAccion();
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

        public void modificar(Articulo modificar)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(Diccionario.MODIFICAR_ARTICULO);

                datos.setearParametro("@codigo", modificar.Codigo);
                datos.setearParametro("@nombre", modificar.Nombre);
                datos.setearParametro("@descripcion", modificar.Descripcion);
                datos.setearParametro("@IdMarca", modificar.Marca.ID);
                datos.setearParametro("@IdCategoria", modificar.Categoria.ID);
                datos.setearParametro("@imagenUrl", modificar.Imagen);
                datos.setearParametro("@precio", modificar.Precio);
                datos.setearParametro("@ID", modificar.Id);

                datos.ejecutarAccion();

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

        public void eliminar(String Codigo)
        {
            AccesoDatos datos = new AccesoDatos();
          
            try
            {
                datos.setearConsulta(Diccionario.BORRAR_POR_CODIGO) ;
                datos.setearParametro("@codigo", Codigo);
                datos.ejecutarAccion();

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

        */
    }
    
}

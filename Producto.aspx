<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="TPC_Mena_Pistoia.Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div> <!-- caja contenido -->
        <div><!-- caja imagen de producto, titulo, precio, breve desc, stock, comprar!, agregar al carrito! --> 
            <div><!-- caja contenedor de imagen + textos-->
                <asp:Panel runat="server"><!--caja + imagen en clase -->

                </asp:Panel>
                <div><!--caja textos -->
                    <div> <!-- caja titulo + precio -->
                        <asp:Label Text="text" runat="server" /> <!-- titulo item -->
                        <asp:Label Text="text" runat="server" /> <!-- precio -->
                    </div>
                    <asp:Panel runat="server"> <!-- caja de descripcion -->
                        <p id="Descripcion"><!-- contenido de descripcion -->

                        </p>
                    </asp:Panel>
                </div>
            </div>
        </div>
        <div><!-- caja especificaciones y leyenda-->
            <div> <!-- caja especificaciones -->
                <p><!-- texto especificaciones -->

                </p>
            </div>
            <div> <!--caja leyenda -->
                <p><!-- leyenda -->

                </p>
            </div>
        </div>
    </div>
</asp:Content>

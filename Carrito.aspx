<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPC_Mena_Pistoia.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel runat="server">
          <asp:Panel ID="containerResultado" runat="server" style="border:5px black solid;" CssClass="BorderShadowLB  DisInline VerticalStretch1200px">
<%--  --%>
        <div class="container BGWarmGreen">

            <asp:Panel ID="CartaProducto"  CssClass="CartaProducto" runat="server"> <! –– DESPUES SE EMPROLIJA Y PARAMETRIZA LA CARTA DE PRODUCTO PARA MANDARLE IMG, TITULO,DESC,PRECIO Y QUE SE PUSHEE O POPEE DE UNA LISTA ––>
                
                <asp:Image ID="ImagenProducto" ImageUrl="~/Content/Question-Box.png" CssClass="Small" style="border:5px solid black;" runat="server" />
            <a href="~/Producto" runat="server">
                <asp:Panel ID="Texto" style="width:66.5vw" runat="server">
                    <asp:Label ID="TituloProducto" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                    <asp:Label ID="Precio" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                    <asp:Label Text="DescripcionProducto" runat="server" > Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion <br /> economica en el mercado</asp:Label>
                    
                </asp:Panel>
            </a>
                    <asp:Panel style="width:100px;border-left:5px solid black" CssClass="BGWarmGreen " runat="server">
                        <div style="height:100%;display:flex;justify-content:space-evenly;flex-direction:column">
                            <button type="button" style="height:33%;border-radius:0px;border-bottom:5px solid black;" class="btn btn-outline-secondary Bolder noBorderRadius">Modificar</button>
                            <button type="button" style="height:33%;border-radius:0px;border-bottom:5px solid black;" class="btn btn-outline-secondary Bolder noBorderRadius">Eliminar</button>
                            <button type="button" style="height:33%;border-radius:0px;" class="btn btn-outline-secondary Bolder noBorderRadius">Comprar</button>
                        </div>
                    </asp:Panel>
            </asp:Panel>

  
        
        </div>
    </asp:Panel>
    </asp:Panel>



</asp:Content>

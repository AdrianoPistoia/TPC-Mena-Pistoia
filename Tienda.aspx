<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tienda.aspx.cs" Inherits="TPC_Mena_Pistoia.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<asp:Panel ID="containBuscador" runat="server" CssClass ="CenteredBox margin-top5 ">

    <input id="buscador" type="text" placeholder="Qué estas buscando?" style="background-color: #313131; font-weight:bolder" class="stretch-60 borderColor TextRoyalBlue"/>
</asp:Panel>
    <asp:Panel ID="containerResultado" runat="server"  CssClass="Theme1 DisInline VerticalStretch1200px">
        <asp:Panel ID="containFiltros" runat="server" CssClass="TextAliceBlue Theme2">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                Precio: Mayor a Menor
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
              <label class="form-check-label" for="flexCheckChecked">
                Precio: Menor a Mayor
              </label>
            </div>
        </asp:Panel>
        <div class="container stretch-60 Theme3">

            <asp:Panel ID="CartaProducto"  CssClass="CartaProducto" runat="server"> <! –– DESPUES SE EMPROLIJA Y PARAMETRIZA LA CARTA DE PRODUCTO PARA MANDARLE IMG, TITULO,DESC,PRECIO Y QUE SE PUSHEE O POPEE DE UNA LISTA ––>
                <asp:Image ID="ImagenProducto" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                <asp:Panel ID="Texto" runat="server">
                    <asp:Label ID="TituloProducto" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                    <asp:Label ID="Precio" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                    <asp:Label Text="DescripcionProducto" runat="server" > Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion <br /> economica en el mercado</asp:Label>
                    
                </asp:Panel>
            </asp:Panel>
                        <asp:Panel ID="Panel1"  CssClass="CartaProducto" runat="server">
                <asp:Image ID="Image1" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label1" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                    <asp:Label ID="Label2" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                    <asp:Label Text="DescripcionProducto" runat="server" > Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion <br /> economica en el mercado</asp:Label>
                    
                </asp:Panel>
            </asp:Panel>
             <asp:Panel ID="Panel3"  CssClass="CartaProducto" runat="server">
                <asp:Image ID="Image2" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                <asp:Panel ID="Panel4" runat="server">
                    <asp:Label ID="Label3" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                    <asp:Label ID="Label4" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                    <asp:Label Text="DescripcionProducto" runat="server" > Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion <br /> economica en el mercado</asp:Label>
                    
                </asp:Panel>
            </asp:Panel>
        
        </div>
    </asp:Panel>
   
</asp:Content>

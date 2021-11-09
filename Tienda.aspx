<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tienda.aspx.cs" Inherits="TPC_Mena_Pistoia.WebForm1" %>
<asp:Content ID="Content1"  ContentPlaceHolderID="MainContent"  runat="server">

    <asp:Panel ID="containBuscador" runat="server" Style="border: 5px solid black;" CssClass=" BGLightBeige CenteredBox margin-top5 ">

        <input id="buscador" type="text" placeholder="Qué estas buscando?" class="stretch-60 darkGrayBackground CPText Bolder" />
    </asp:Panel>

    <asp:Panel ID="containerResultado" runat="server" Style="border-right: 5px black solid; border-left: 5px black solid; border-bottom: 5px black solid;" CssClass=" DisInline VerticalStretch1200px">
        <asp:Panel ID="containFiltros" runat="server" Style="border-right: 5px black solid; width: 10vw" CssClass="TextAliceBlue BGLightBeige">

            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">

                <label class="form-check-label text-nowrap" for="flexRadioDefault1">
                    Canastos
                </label>

            </div>
            <div class="form-check">
                <input class="form-check-input text-nowrap" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                <label class="form-check-label text-nowrap" for="flexRadioDefault2">
                    Individuales  
                </label>
            </div>
        </asp:Panel>
        <div class="container stretch-60 BGWarmGreen">



            <asp:Panel ID="CartaProducto" CssClass="CartaProducto" runat="server">
                <! –– DESPUES SE EMPROLIJA Y PARAMETRIZA LA CARTA DE PRODUCTO PARA MANDARLE IMG, TITULO,DESC,PRECIO Y QUE SE PUSHEE O POPEE DE UNA LISTA ––>
                
                <asp:Image ID="ImagenProducto" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                <a href="~/Producto" runat="server">
                    <asp:Panel ID="Texto" runat="server">

                        <asp:Label ID="TituloProducto1" runat="server" CssClass="Bolder ocupametodo" Text="">  </asp:Label>
                        <asp:Label ID="Precio1" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                        <asp:Label Text="DescripcionProducto" runat="server"> Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion <br /> economica en el mercado</asp:Label>
                    </asp:Panel>
                </a>
            </asp:Panel>


            <asp:Panel ID="Panel1" CssClass="CartaProducto" runat="server">
                <! –– DESPUES SE EMPROLIJA Y PARAMETRIZA LA CARTA DE PRODUCTO PARA MANDARLE IMG, TITULO,DESC,PRECIO Y QUE SE PUSHEE O POPEE DE UNA LISTA ––>
                <asp:Image ID="Image1" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                <a href="~/Producto" runat="server">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:Label ID="TituloProducto2" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                        <asp:Label ID="Precio2" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                        <asp:Label Text="DescripcionProducto" runat="server"> Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion <br /> economica en el mercado</asp:Label>
                    </asp:Panel>
                </a>
            </asp:Panel>

        </div>
    </asp:Panel>
   
</asp:Content>

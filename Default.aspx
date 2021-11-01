<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPC_Mena_Pistoia._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="cardRecepcion" class="bordeTest darkGrayBackground TextAliceBlue" >   
        <div id="titulo">
            <h1 class="Bolder">Mercado Libren´t, el lugar en donde termina lo que sea que tengas en tu imaginacion.</h1>
        </div>
        <div id="desc" style="display:inline-block">
            <p class="Bolder">
                Alguna vez habras pensado... "De chico imaginaba cosas muy locas" o cosas como ... " si lo que pensaba de chico fuese real, la vida seria mas colorida... "
                Aqui les traemos la solucion a todos* sus deseos!
                Gracias a</p>
            <h6 class ="ilegible">fuentes reservadas</h6>
            <p class="Bolder">podras buscar y obtener cosas inimiaginables!</p>
        </div >
        <div id="sliderProductos">
            <div class ="MCcarta " id="prod1">
                             <asp:Panel ID="Panel3"  CssClass="CartaProducto TextoDarkGray" runat="server">
                    <asp:Image ID="Image2" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                    <asp:Panel ID="Panel4" runat="server">
                        <asp:Label ID="Label3" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                        <asp:Label ID="Label4" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                        <asp:Label Text="DescripcionProducto" runat="server" > Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion economica en el mercadon´t.</asp:Label>
                    
                    </asp:Panel>
                </asp:Panel>
            </div>
            <div class ="MCcarta " id="prod2">
                             <asp:Panel ID="Panel1"  CssClass="CartaProducto TextoDarkGray" runat="server">
                    <asp:Image ID="Image1" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:Label ID="Label1" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                        <asp:Label ID="Label2" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                        <asp:Label Text="DescripcionProducto" runat="server" > Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion economica en el mercadon´t.</asp:Label>
                    
                    </asp:Panel>
                </asp:Panel>
            </div>
            <div class ="MCcarta " id="prod3">
                             <asp:Panel ID="Panel5"  CssClass="CartaProducto TextoDarkGray" runat="server">
                    <asp:Image ID="Image3" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                    <asp:Panel ID="Panel6" runat="server">
                        <asp:Label ID="Label5" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                        <asp:Label ID="Label6" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                        <asp:Label Text="DescripcionProducto" runat="server" > Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion economica en el mercadon´t.</asp:Label>
                    
                    </asp:Panel>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

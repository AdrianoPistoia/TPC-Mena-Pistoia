<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tienda.aspx.cs" Inherits="TPC_Mena_Pistoia.WebForm1" %>

<asp:Content ID="Content1"  ContentPlaceHolderID="MainContent"  runat="server">

    <asp:Panel ID="containBuscador" runat="server" Style="border: 5px solid black;" CssClass=" BGLightBeige CenteredBox margin-top5 ">

        <input id="buscador" type="text" placeholder="Qué estas buscando?" style="width:1020px;position:relative;left:67px;margin-top:2px;margin-bottom:2px" class="stretch-60 darkGrayBackground CPText Bolder" />
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



            <asp:Panel ID="CartaProducto" style="background-color: rgba(19,14,10,0.3);" CssClass="CartaProducto " runat="server">


               
                <% foreach (var Producto in listaProductos)



                    { %>
                    
                    <div id="<%="ProdID_"+Producto.ID.ToString()%>" class="BGLightBeige" style="width: 18rem; border: solid 3px black; padding: 10px; margin: 13px;">
                        <img src="<%= !(string.IsNullOrEmpty(Producto.Imagen.Link)) ? Producto.Imagen.Link : "Content/Images/Placeholder.png"%>" class="card-img-top" width="155" height="155" style="border:black solid 2px;display:flex;flex-direction:column;"  alt="..." />
                        <div class="card-body Bolder">
                            <h4 class="card-title Bolder"  style="text-align:center" ><%: Producto.Nombre %></h4>
                            <p class="card-text" style="text-align:center" >Descripcion: <%: Producto.Descripcion %></p>
                            <p class="card-text" style="text-align:center" >Precio: $<%:Decimal.ToInt32(Producto.Precio)%></p>
                        </div>
                        <asp:Button style="disaply:flex;align-self:center"  ID="btnAgregarProducto" OnClick="btnAgregarProducto_Click" runat="server" Text="Agregar al carrito" />
                    </div>

                <% } %>

            </asp:Panel>
        </div>
    </asp:Panel>
   
</asp:Content>

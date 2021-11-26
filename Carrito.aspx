<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPC_Mena_Pistoia.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="boldersticky BGCozyRed" style="width: 150px; height: 100px; position: sticky; left: 0px; top: 50vh; border-top: 5px solid black; border-right: 5px solid black; border-bottom: 5px solid black; padding-left: 20px;">
        <asp:Panel runat="server" Style="top: 20%; position: relative;">
            <!-- barra de "comprar carrito"+"precio total" -->
            <div style="display: grid; justify-content: center;">
                <!--  panel corrector -->
                <asp:Label CssClass="Bolder" Style="justify-self: center; align-self: center" Text="Precio total: $X" runat="server" />
                <asp:Button Text="Comprar Carrito!" runat="server" />
            </div>
        </asp:Panel>
        <!-- -->
    </div>

    <asp:Panel runat="server">
        <asp:Panel ID="containerResultado" runat="server" Style="border: 5px black solid;" CssClass="BorderShadowLB  DisInline VerticalStretch1200px">

            <div class="container BGCutePink">
                <asp:Panel runat="server" CssClass="BGWarmGreen2" Style="border: 5px solid black; width: 83.5vw; height: 1170px; margin-top: 10px;display:flex;flex-direction:row;">
                    <!-- lista del carrito -->
                    
                    <% foreach (Dominio.Producto Producto in listaFavoritos)
                    { %>
                        <!-- Producto -->

                        <%--<asp:Panel ID="CartaProducto" CssClass="CartaProducto" runat="server">
                            <asp:Image ID="ImagenProducto" ImageUrl="~/Content/Question-Box.png" CssClass="Small" Style="border: 5px solid black;" runat="server" />
                            <a href="~/Producto" runat="server">
                                <asp:Panel ID="Texto" Style="width: 66.5vw" runat="server">
                                    <asp:Label ID="TituloProducto" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                                    <asp:Label ID="Precio" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                                    <asp:Label Text="DescripcionProducto" runat="server"> Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion <br /> economica en el mercado</asp:Label>
                                </asp:Panel>
                            </a>
                            <asp:Panel Style="width: 100px; border-left: 5px solid black;" CssClass="BGWarmGreen" runat="server">
                                <div style="height: 100%; display: flex; justify-content: space-evenly; flex-direction: column; width: 83.5px;">
                                    <asp:TextBox ID="TextBox1" style="height: 33%; border-radius: 0px; border-bottom: 5px solid black;" class="btn btn-outline-secondary Bolder noBorderRadius" runat="server">Cantidad</asp:TextBox>
                                    <button type="button" style="height: 33%; border-radius: 0px; border-bottom: 5px solid black;" class="btn btn-outline-secondary Bolder noBorderRadius">Cantidad</button>
                                    <button type="button" style="height: 33%; border-radius: 0px; border-bottom: 5px solid black;" class="btn btn-outline-secondary Bolder noBorderRadius">Eliminar</button>--%>

                                    <%--<button type="button" style="height: 33%; border-radius: 0px;" class="btn btn-outline-secondary Bolder noBorderRadius">Comprar</button>--%>
                              
                                <%--</div>
                            </asp:Panel>
                        </asp:Panel>--%>

                      <div id="prod" class="BGLightBeige" style="width: 18rem; border: solid 3px black; padding: 10px; margin: 13px;display:flex;flex-direction:column;align-self:center">
                            <img src="<%= !(string.IsNullOrEmpty(Producto.Imagen.Link)) ? Producto.Imagen.Link : "Content/Images/Placeholder.png"%>" class="card-img-top" width="155" height="155" style="border:black solid 2px;display:flex;flex-direction:column;"  alt="..." />
                            <div class="card-body Bolder">
                                <h4 class="card-title Bolder"  style="text-align:center" ><%: Producto.Nombre %></h4>
                                <p class="card-text" style="text-align:center" >Descripcion: <%: Producto.Descripcion %></p>
                                <p class="card-text" style="text-align:center" >Precio: $<%:Decimal.ToInt32(Producto.Precio)%></p>
                            </div>
                            <a type="button" style="background-color:rgba(108,134,60,0.9)" class="btn btn-primary" onclick="<%  %>" href="/Tienda.aspx?id=<%: Producto.ID.ToString() %>" >Agregar al carrito!</a>
                    </div>

                        <!-- fin de  producto-->    
                <% } %>


                </asp:Panel>
            </div>
        </asp:Panel>
    </asp:Panel>



</asp:Content>

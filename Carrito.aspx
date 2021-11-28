<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPC_Mena_Pistoia.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="boldersticky BGCozyRed" style="width: 150px; height: 100px; position: sticky; left: 0px; top: 50vh; border-top: 5px solid black; border-right: 5px solid black; border-bottom: 5px solid black; padding-left: 20px;">
        <asp:Panel runat="server" Style="top: 20%; position: relative;">
            <!-- barra de "comprar carrito"+"precio total" -->
            <div style="display: grid; justify-content: center;">
                <!--  panel corrector -->
                <p ID="PrecioTotal" class="Bolder" Style="justify-self: center; align-self: center" >Precio total: $<%:precioTotal.ToString()%></p>
                <asp:Button Text="Comprar Carrito!" runat="server" />
            </div>
        </asp:Panel>
        <!-- -->
        </div>
    <asp:Panel runat="server">
        <asp:Panel ID="containerResultado" runat="server" Style="border: 5px black solid;" CssClass="BorderShadowLB  DisInline VerticalStretch1200px">

            <div class="container BGCutePink">
                <asp:Panel runat="server" CssClass="BGWarmGreen2" Style="border: 5px solid black; width: 83.5vw; height: 1170px; display:flex;">
                    <!-- lista del carrito -->
                    
                    <% 
                        foreach (Dominio.Producto Producto in listaFavoritos)
                        { %>
                        <!-- Producto -->

                        
                        <div id="prod" class="BGLightBeige" style="width: 18rem; border: solid 3px black; padding: 10px; margin: 13px;display:flex;flex-direction:column;align-self:center">
                            <img src="<%= !(string.IsNullOrEmpty(Producto.Imagen.Link)) ? Producto.Imagen.Link : "Content/Images/Placeholder.png"%>" class="card-img-top" width="155" height="155" style="border:black solid 2px;display:flex;flex-direction:column;"  alt="..." />
                            <div class="card-body Bolder">
                                <h4 class="card-title Bolder"  style="text-align:center" ><%: Producto.Nombre %></h4>
                                <p class="card-text" style="text-align:center" >Descripcion: <%: Producto.Descripcion %></p>
                                <p class="card-text" style="text-align:center" >Precio: $<%:Decimal.ToInt32(Producto.Precio)%></p>
                            </div>
                            <asp:Button ID="EliminarFav" Text="Eliminar del carrito!" runat="server" type="button" style="background-color:rgba(206,60,50,0.97);" class="btn btn-primary" OnClick="EliminarFav_Click" /> 
                        </div>
                        
                        <!-- fin de  producto-->    
                        <%}%>
                            
                            


                </asp:Panel>
            </div>
        </asp:Panel>
    </asp:Panel>



</asp:Content>

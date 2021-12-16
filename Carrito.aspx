<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPC_Mena_Pistoia.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="boldersticky BGCozyRed" style="width: 150px; height: 100px; position: fixed; left: 0px; top: 50vh; border-top: 5px solid black; border-right: 5px solid black; border-bottom: 5px solid black; ">
        <asp:Panel runat="server" Style="top: 20%; position: relative; " >
            <!-- barra de "comprar carrito"+"precio total" -->
            <div style="display: flex;flex-direction:column; justify-content: center;align-items:center;">
                <!--  panel corrector -->
                <p ID="PrecioTotal" class="Bolder" Style="justify-self: center; align-self: center;color:black;" >Precio total: $<%:precioTotal.ToString()%></p>
                <asp:Button type="button" Text="Comprar Carrito!" CssClass=" btn btn-primary Bolder" style=";background-color: rgba(108,134,60,0.9);border-color:black;width:90%;padding-left:6px;color:black" runat="server" />
            </div>
        </asp:Panel>
        <!-- -->
        </div>
    <asp:Panel runat="server">
        <asp:Panel ID="containerResultado" runat="server" Style="border: 5px black solid;height:max-content" CssClass="BorderShadowLB  DisInline VerticalStretch1200px">

            <div class="container BGCutePink">
                <asp:Panel runat="server" CssClass="BGWarmGreen2" Style="border-bottom: 5px solid black;border-left: 5px solid black;border-right: 5px solid black; width: 83.5vw; height: max-content; display:flex;">
                    <asp:Panel ID="CartaProducto" style="background-color: rgba(19,14,10,0.3);height:max-content;min-height:36rem;width:1200px;flex-direction:column" CssClass="CartaProducto " runat="server">
                    <!-- lista del carrito -->
                    <% 
                        foreach (Dominio.Producto Producto in listaFavoritos)
                        { %>
                        <div id="prod<%:Producto.ID%>" class="BGLightBeige" style="width:stretch;height:18rem; border: solid 3px black; padding: 10px; margin: 5px;display:flex;flex-direction:row;align-items:center">
                            <a style="display:flex;flex-direction:row;align-items:center;width:stretch" href="/Producto?id=<%: Producto.ID.ToString() %>">
                                <img src="<%= !(string.IsNullOrEmpty(Producto.Imagen.Link)) ? Producto.Imagen.Link : "Content/Images/Placeholder.png"%>" class="card-img-top" width="150" height="150" style="border:black solid 2px;"  alt="..." />
                                <div class="card-body Bolder" style="width:750px">
                                    <h4 class="card-title Bolder"  style="text-align:center" ><%: Producto.Nombre %></h4>
                                    <p class="card-text" style="text-align:center" >Descripcion: <%: Producto.Descripcion %></p>
                                    <p class="card-text" style="text-align:center" >Precio: $<%:Decimal.ToInt32(Producto.Precio)%></p>
                                </div>
                            </a>
                            <div style="display:flex;flex-direction:column;">
                                <a  type="button" href="Carrito.aspx?id=<%:Producto.ID%>&accion=comprar"  Class="btn Bolder btn-secondary" style="background-color:rgba(108,134,60,0.8);color:black;border-bottom-left-radius:0;border-bottom-right-radius:0;border-top:2px solid black;border-left:2px solid black;border-right:2px solid black" >Comprar!</a>
                                <a  type="button" href="Carrito.aspx?id=<%:Producto.ID%>&accion=eliminar"   Class="btn Bolder btn-secondary" style="background-color:rgba(206,60,50,0.8);color:black;border-top-left-radius:0;border-top-right-radius:0;border:2px solid black"  >Eliminar del carrito!</a>
                            </div>
                           
                        </div>
                        <!-- fin de  producto-->    
                        <%}%>
                    </asp:Panel>
                </asp:Panel>
            </div>
        </asp:Panel>
    </asp:Panel>
    <script type="text/javascript">    
        function NoHayProductosEnElCarrito() {
            let Marco;
            Marco = document.createElement("div");
            Marco.style.cssText += 'height:18rem;display:flex;align-items:center;justify-content: center;color:rgba(255,255,255,0.4);font-weight:bolder;font-size:36px;';
            Marco.innerText = "NO HAY NINGUN PRODUCTO EN EL CARRITO.";
            document.getElementById("MainContent_CartaProducto").appendChild(Marco);

        }
    </script>


</asp:Content>

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
                <asp:Panel runat="server" CssClass="BGWarmGreen2" Style="border: 5px solid black; width: 83.5vw; height: 1170px; margin-top: 10px;">
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

                        <div style="width: 18rem; border: solid 1px grey; padding: 10px; margin: 15px;">
                            <img src="<%= !(string.IsNullOrEmpty(Producto.Imagen.Link)) ? Producto.Imagen.Link : "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAREAAAC4CAMAAADzLiguAAAANlBMVEXp7vG6vsHs8fS2ur3c4eTU2dzm6u3P1Ne4vL/u8/a4vL67v8G0ubzDx8rY3eDEyMvh5unKz9Izr04MAAADb0lEQVR4nO2c63KrIBRGFY1CY4x5/5c93nKiICZGGOvuWj86adowYc0HWxgxSQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOC3oiJwdJ/2oJr6Epy6Sc4qxeTXKtNPfoYfP9NXDj//f0xfv97oX2X6cU4l5pGl6TWNgdbF0b37AnPXUWwMVEd37wvqLKKQNnzm6A5uxcRMSEuWH93DrTRV/8XbaVBnQdFj9u4nm13Vpc+ILk3wy5FCn3LYqHL43hG+9ti0PqmRCNGO2HRMVJlGNqIx8mpakpEQyzRBRlSSd+u0vT0RY8Tkt6rq1mnXcl9fpBjp130DOt2Vk8HI9exG1G16VV81u5qWkBF7Ibxn6SrDSF5ZC7UdqxIRRoyzcZR9P25EGCnsiLRLwK87JMGIqt3NkjdL15VdQxFGSkfIm+v7Irt7jUmovm0f3B3o1Q7pVHuViMjIZeOo6aYdffP8hwQjSePuQq+U33Ee9ikRYcQ4tSar/Z996vMoEWHkue31wTSiJpV6WYkII4myjFS5rz/FdIAtKpFhxJpJqod3Xp3POEtKJFTf7vdGv2KSeYU4F7cLSoRkJFHJvRqcZDr3CnFrkntdIsVIW3CK8tam/ZEbb1+ckrSUEjlG2jeNUsbvw10PjimZf0KSkfVPLAyZxYHzV4woT0LcgSOk1rylWLu7YpaSv5KR9ftvpin5G0ZWhoyjRKIRU1tvF9XbO5JeSgQaMXU1nyrfJmSmRJ6RVkia3iZ/+CAhaVdcRiXijPRCpoPAex3iSYm06qvq+Q7ZZ0NmVDIxIiYjTyGdkv5vG4SINGIm9/32Kfl4yAg1YuppIlolWxIi0Yip7R2ybTdGizNiC9mMFlZr1O6zA8Iysjsh0oy0ZXf36SNRRsxlU1WRb8RcQpw/EmSkuw4JcGJPkJE6wJBJJVXfxXuMdho5d0YwkmDEBSM2GLGJboRaYxs5d0YSjNgZeVRBjoNXYowkTR6GsWkBRgI3jRG7aYzYTWPEbvqkRqI97sCc1MiwaaYfSRGa/JzPH3k+oyYNciEyZ2j4dE8Ac49vhmXHYdCjyOM+68p3QusXY8owm6uL6LPNqz0RlWTXozv3Haq5R5hXW66XMyakxwRb400p/IcNAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4FD+AZS0NBe99dfKAAAAAElFTkSuQmCC" %>" class="card-img-top" alt="..." width="100%">
                            <div class="card-body">
                                <h5 class="card-title"><%: Producto.Nombre %></h5>
                                <p class="card-text">Descripcion: <%: Producto.Descripcion %></p>
                                <p class="card-text">Precio: <%: Producto.Precio %></p>
                                <%--<asp:Button ID="btnAgregarProducto" OnClick="btnAgregarProducto_Click" runat="server" Text="Agregar al carrito" />--%>
                                <a class="btn btn-primary" href="Tienda.aspx?id=<%:Producto.ID%>">Agregar a favorito</a>
                            </div>
                        </div>

                        <!-- fin de  producto-->    
                <% } %>


                </asp:Panel>
            </div>
        </asp:Panel>
    </asp:Panel>



</asp:Content>

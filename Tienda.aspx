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
<<<<<<< HEAD

               
                <% foreach (var Producto in listaProductos)
=======
                <! –– DESPUES SE EMPROLIJA Y PARAMETRIZA LA CARTA DE PRODUCTO PARA MANDARLE IMG, TITULO,DESC,PRECIO Y QUE SE PUSHEE O POPEE DE UNA LISTA ––>
                
                <asp:Image ID="ImagenProducto" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                <a style="width:100%" href="~/Producto" runat="server">
                    <asp:Panel ID="Texto" runat="server">

                        <asp:Label ID="TituloProducto1" runat="server" CssClass="Bolder ocupametodo" Text="">  </asp:Label>
                        <asp:Label ID="Precio1" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> <br /></asp:Label>
                        <asp:Label ID="DescripcionProducto1" Text="" runat="server"> Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion <br /> economica en el mercado</asp:Label>
                    </asp:Panel>
                </a>
            </asp:Panel>


            <asp:Panel ID="Panel1" CssClass="CartaProducto" runat="server">
                <! –– DESPUES SE EMPROLIJA Y PARAMETRIZA LA CARTA DE PRODUCTO PARA MANDARLE IMG, TITULO,DESC,PRECIO Y QUE SE PUSHEE O POPEE DE UNA LISTA ––>
                <asp:Image ID="Image1" ImageUrl="~/Content/Question-Box.png" CssClass="Small" runat="server" />
                <a style="width:100%" href="~/Producto" runat="server">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:Label ID="TituloProducto2" runat="server" CssClass="Bolder  ocupametodo" Text="Label">Producton´t</asp:Label>
                        <asp:Label ID="Precio2" runat="server" CssClass=" Bolder ocupametodo preciotag" Text="Label"> $100 <br /></asp:Label>
                        <asp:Label Text="DescripcionProducto" runat="server"> Este Producto carece de veracidad, es un producto irreal creado por la ficcion narrada en su cabeza, estando asi , certificado por <br />cualquier cantidad de entidades ficticias de alta estima y posicion <br /> economica en el mercado</asp:Label>
                    </asp:Panel>
                </a>
            </asp:Panel>
>>>>>>> 12170725e6e4a80c35150e5fdffc2bdb993efc4d

                    { %>
                    
                    <div style="width: 18rem; border: solid 1px grey; padding: 10px; margin: 15px;">
                        <img src="<%= !(string.IsNullOrEmpty(Producto.Imagen.Link)) ? Producto.Imagen.Link : "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAREAAAC4CAMAAADzLiguAAAANlBMVEXp7vG6vsHs8fS2ur3c4eTU2dzm6u3P1Ne4vL/u8/a4vL67v8G0ubzDx8rY3eDEyMvh5unKz9Izr04MAAADb0lEQVR4nO2c63KrIBRGFY1CY4x5/5c93nKiICZGGOvuWj86adowYc0HWxgxSQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOC3oiJwdJ/2oJr6Epy6Sc4qxeTXKtNPfoYfP9NXDj//f0xfv97oX2X6cU4l5pGl6TWNgdbF0b37AnPXUWwMVEd37wvqLKKQNnzm6A5uxcRMSEuWH93DrTRV/8XbaVBnQdFj9u4nm13Vpc+ILk3wy5FCn3LYqHL43hG+9ti0PqmRCNGO2HRMVJlGNqIx8mpakpEQyzRBRlSSd+u0vT0RY8Tkt6rq1mnXcl9fpBjp130DOt2Vk8HI9exG1G16VV81u5qWkBF7Ibxn6SrDSF5ZC7UdqxIRRoyzcZR9P25EGCnsiLRLwK87JMGIqt3NkjdL15VdQxFGSkfIm+v7Irt7jUmovm0f3B3o1Q7pVHuViMjIZeOo6aYdffP8hwQjSePuQq+U33Ee9ikRYcQ4tSar/Z996vMoEWHkue31wTSiJpV6WYkII4myjFS5rz/FdIAtKpFhxJpJqod3Xp3POEtKJFTf7vdGv2KSeYU4F7cLSoRkJFHJvRqcZDr3CnFrkntdIsVIW3CK8tam/ZEbb1+ckrSUEjlG2jeNUsbvw10PjimZf0KSkfVPLAyZxYHzV4woT0LcgSOk1rylWLu7YpaSv5KR9ftvpin5G0ZWhoyjRKIRU1tvF9XbO5JeSgQaMXU1nyrfJmSmRJ6RVkia3iZ/+CAhaVdcRiXijPRCpoPAex3iSYm06qvq+Q7ZZ0NmVDIxIiYjTyGdkv5vG4SINGIm9/32Kfl4yAg1YuppIlolWxIi0Yip7R2ybTdGizNiC9mMFlZr1O6zA8Iysjsh0oy0ZXf36SNRRsxlU1WRb8RcQpw/EmSkuw4JcGJPkJE6wJBJJVXfxXuMdho5d0YwkmDEBSM2GLGJboRaYxs5d0YSjNgZeVRBjoNXYowkTR6GsWkBRgI3jRG7aYzYTWPEbvqkRqI97sCc1MiwaaYfSRGa/JzPH3k+oyYNciEyZ2j4dE8Ac49vhmXHYdCjyOM+68p3QusXY8owm6uL6LPNqz0RlWTXozv3Haq5R5hXW66XMyakxwRb400p/IcNAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4FD+AZS0NBe99dfKAAAAAElFTkSuQmCC" %>" class="card-img-top" alt="..." width="100%">
                        <div class="card-body">
                            <h5 class="card-title"><%: Producto.Nombre %></h5>
                            <p class="card-text">Descripcion: <%: Producto.Descripcion %></p>
                            <p class="card-text">Precio: <%: Producto.Precio %></p>
                            <asp:Button ID="btnAgregarProducto" OnClick="btnAgregarProducto_Click" runat="server" Text="Agregar al carrito" />
                        </div>
                    </div>

                <% } %>

            </asp:Panel>
        </div>
    </asp:Panel>
   
</asp:Content>

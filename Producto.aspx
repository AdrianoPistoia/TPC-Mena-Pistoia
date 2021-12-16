<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="TPC_Mena_Pistoia.Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel runat="server" ID="VentanaDeCompra" style="z-index:90;display:none;position:absolute;top:55px;min-height:840px;min-width:1200px;background-color: rgba(0,0,0,0.6);justify-content:center;"  >
        <div id ="fondo-borde" style =" width:90vw;height:90vh;display:flex;justify-content:center;background-color: rgba(219,194,155,0.9);text-align:center;border:solid 5px black;position:relative;top:0px;">

            <div id="Opciones" class="Bolder" style="display:flex;flex-direction:column;justify-content:center;">
                <h1 id="Efectivo"type="button" class=" Bolder" style="user-select:none ;background-color:rgba(108, 134, 60, 0.9);padding-left:50px;padding-right:20px;color:black;padding-top:10px;padding-bottom:10px;border-radius:5px">Efectivo</h1>
                <h1 id="Credito" type="button" class=" Bolder" style="user-select:none ;background-color:rgba(108, 134, 60, 0.9);padding-left:50px;padding-right:20px;color:black;padding-top:10px;padding-bottom:10px;border-radius:5px">Tarjeta de Credito</h1>
                <h1 id="Debito"  type="button" class=" Bolder" style="user-select:none ;background-color:rgba(108, 134, 60, 0.9);padding-left:50px;padding-right:20px;color:black;padding-top:10px;padding-bottom:10px;border-radius:5px">Tarjeta de Debito</h1>
                <h1 id="MP"      type="button" class=" Bolder" style="user-select:none ;background-color:rgba(108, 134, 60, 0.9);padding-left:50px;padding-right:20px;color:black;padding-top:10px;padding-bottom:10px;border-radius:5px">Mercado Pago</h1>
            </div>
            
        </div>
    </asp:panel>
    
    
<div id="sticky" class="boldersticky" style=" background-color:rgba(100,160,60,0.5);display:flex;justify-content:center;align-items:center;width: 200px; height: 100px; position: fixed; left: 0px; top: 50vh; border-top: 5px solid black; border-right: 5px solid black; border-bottom: 5px solid black; ">
    <asp:Panel runat="server" Style=""  >
            
        <div style="display:flex;flex-direction:column; justify-content: center;align-items:center;">
        <!--  panel corrector -->
            <a ID="Comprar" Text="Comprar!"  style="width:150px;background-color:rgba(108,134,60,0.8);border-bottom-left-radius:0;border-bottom-right-radius:0;border-top:2px solid black;border-left:2px solid black;border-right:2px solid black" Class="btn Bolder btn-secondary"  >Comprar!</a>                        
            <a type="button" style="width:150px;background-color:rgba(246,230,215,0.6);border-top-left-radius:0;border-top-right-radius:0;border:2px solid black" class="btn Bolder btn-secondary" href="/Producto.aspx?id=<%: ProdPuntual.ID.ToString() %>" >Agregar al carrito!</a>

        </div>
    </asp:Panel>
<!-- -->
</div>

        <div id="cardRecepcion1" class="BorderLB BorderShadowLB Bolder TextAliceBlue BGLightBeige " style="width:86vw;min-height: 32vw; margin: 10px;display:flex; flex-direction:column;">
            <h2 class="Bolder" style="display:flex;align-self:center;color:black;background-color:rgba(100,160,60,0.5);padding:2px 10px 5px 10px;border:3px solid black;"><%:ProdPuntual.Nombre%>.</h2>
            <div style="display:flex;flex-direction:row;align-self:center;border:5px solid black;margin-bottom:20px;">
                <img src="<%:ProdPuntual.Imagen.Link%>" alt="Alternate Text" class="" style="width:400px;min-height:400px;border-right:5px solid black"/>
                <div class="Bolder BGWarmGreen" style="display:flex;justify-content:space-evenly;flex-direction:column;align-items:center;padding:5px 10px 5px 10px;text-align:center;color:black">
                    <h4 class="Bolder" style="max-width:700px;align-self:center;"><%:ProdPuntual.Descripcion%></h4>
                    <p style="max-width:900px"><%:ProdPuntual.Descripcion%></p >
                    <p style="max-width:900px">Contamos con una cantidad de <%:ProdPuntual.Cantidad %> de este ejemplar! </p>
                    <p style="max-width:900px">Ante cualquier problema, no dude en contactarnos: <a href="https://adrianopistoia.github.io" style="color:black">011-pagame-elcafe</a>.</p>
                </div>
            </div>
        </div> 
            <script type="text/javascript">
                var boton = document.getElementById("Comprar");
                var Efectivo = document.getElementById("Efectivo");
                var div1 = document.createElement("div");
                div1.id ="ancla";
                


                boton.onclick = function () {
                    document.getElementById("cardRecepcion1").style.visibility = "hidden";
                    document.getElementById("MainContent_VentanaDeCompra").style.display = "flex";
                    document.getElementById("sticky").remove();
                }

                Efectivo.onclick = function () {
                    if (document.getElementById("Contenido") != null) { document.getElementById("Contenido").remove() };
                    document.getElementById("Opciones").insertAdjacentHTML("afterend", "<div id='Contenido'  style='display: flex; overflow: auto; flex-direction: column; align-items: center; min-width: 50vw; max-width: 40vw; padding-left: 60px; padding-right: 60px; color: black; font-weight: bolder; background-color: rgba(108, 134, 60, 0.9); '> <h2 id = 'precio' style = 'font-weight:bolder;padding-left:40px' > Precio a pagar:<%:precioTot%></h2> <h3 id='cantidad' style='font-weight:bolder;padding-left:40px'>Llevando <%:ProdPuntual.CantidadSeleccionada%> </h3><h3 style='font-weight:bolder;padding-left:40px'>Se le enviara un mensaje a su casilla de email con el producto comprados.</h3><h3 id='metodo' style='font-weight:bolder;padding-left:40px'>Este metodo consiste de 3 pasos, el primero siendo la finalizacion de la compra, luego se coordinara un punto de encuentro finalizando con la entrega y pago del producto.</h3><h3 id='ubicacion' style='font-weight:bolder;padding-left:40px'>Nos contactaremos en el transcurso de 2 dias habiles(48hrs) para coordinar un punto de encuentro, para la entrega del producto.</h3><button id='finalizar' type='button' class='btn btn-secondary Bolder hardBtnFin'> Finalizar compra.</button></div >");
                    
                    var btnFin = document.getElementById("finalizar");
                    if (btnFin != null) {
                        btnFin.onclick = function () {
                            document.getElementById("Opciones").remove();
                            document.getElementById("Contenido").remove();

                            document.getElementById("fondo-borde").appendChild(div1)
                            document.getElementById("ancla").insertAdjacentHTML("afterend", "<p style='display:flex;align-self:center;font-size:56px;font-weight:bolder;color:black;user-select:none;'>Has comprado el siguiente producto: </br> <%:ProdPuntual.Nombre%> </br> exitosamente! </p>");

                        }
                    } 
                }


            </script>

</asp:Content>

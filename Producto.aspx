<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="TPC_Mena_Pistoia.Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%
            if (ProdPuntual == null)
            {
                Response.Redirect("/Default.aspx");
            }
            %>
        <div id="cardRecepcion1" class="BorderLB BorderShadowLB Bolder TextAliceBlue BGLightBeige " style="width:86vw;min-height: 32vw; margin: 10px;display:flex; flex-direction:column;">
            <h2 class="Bolder" style="display:flex;align-self:center;color:black;background-color:rgba(100,160,60,0.5);padding:2px 10px 5px 10px;border:3px solid black;"><%:ProdPuntual.Nombre%>.</h2>
            <div style="display:flex;flex-direction:row;align-self:center;border:5px solid black;margin-bottom:20px;">
                <img src="<%:ProdPuntual.Imagen.Link%>" alt="Alternate Text" class="" style="width:400px;min-height:400px;border-right:5px solid black"/>
                <div class="Bolder BGWarmGreen" style="display:flex;flex-direction:column;align-items:center;padding:5px 10px 5px 10px;text-align:center;color:black">
                    <h4 class="Bolder" style="max-width:700px;align-self:center;"><%:ProdPuntual.Descripcion%></h4>
                    <p style="max-width:900px"><%:ProdPuntual.Descripcion%></p >
                    <p style="max-width:900px">Contamos con una cantidad de <%:ProdPuntual.Cantidad %> de este ejemplar! </p>
                    <p style="max-width:900px">Ante cualquier problema, no dude en contactarnos: <a href="https://adrianopistoia.github.io" style="color:black">011-pagame-elcafe</a>.</p>
                    <div style="display:flex;flex-direction:column;">
                        <a type="button" style="background-color:rgba(108,134,60,0.9)" class="btn Bolder btn-secondary" href="/Producto.aspx?id=<%: ProdPuntual.ID.ToString() %>" >Compra ya!</a>                        
                        <a type="button" style="background-color:rgba(108,134,60,0.9)" class="btn Bolder btn-secondary" href="/Producto.aspx?id=<%: ProdPuntual.ID.ToString() %>" >Agregar al carrito!</a>
                    </div>
                </div>
            </div>
        </div> 

</asp:Content>

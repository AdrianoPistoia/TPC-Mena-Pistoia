<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TPC_Mena_Pistoia.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
<div id="cardRecepcion1" class="BorderLB BorderShadowLB Bolder TextAliceBlue BGLightBeige " style="width:86vw;min-height: 32vw; margin: 10px;display:flex; flex-direction:column">
    <h2 class="Bolder" style="display:flex;align-self:center"><%: Title %> us.</h2>
    <div style="display:flex;flex-direction:row;align-self:center;border:5px solid black">
        <div class="adrImage" style="width:200px;min-height:200px;"></div>
        <div style="width:70vw;min-height:200px;display:flex;flex-direction:column;align-content:space-evenly;align-items:center;background-color:rgba(100,100,100,0.8)">
            <h4 class="Bolder" style="max-width:700px;align-self:center;">Soy Adriano Pistoia, estudiante de la UTN Facultad Regional de General Pacheco</h4>
            <p style="max-width:900px">Estoy en la Tecnicatura Universitaria de Programación, en el segundo año de cursada. Ademas por parte de la UTNBA, finalize el curso de Desarrollo de Videojuegos.</p >
            <p style="max-width:900px">Esto es texto filler para cubrir un poco mas de espacio y ver si se rompe algo, por lo tanto voy a poner un toque elLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quis facilisis leo. Fusce quis consequat ipsum. Suspendisse gravida vel arcu id mollis. Morbi pharetra bibendum sem ac volutpat. Etiam ac purus quis sem accumsan pretium. Praesent pellentesque ultricies pulvinar. Donec rutrum pretium augue, nec gravida neque facilisis ut. Donec non eros elit. Curabitur vitae turpis hendrerit, scelerisque lectus vel, pretium magna. Curabitur ac pharetra metus. In quis interdum velit. Integer eleifend lorem ligula, sit amet pulvinar elit ullamcorper sed.  </p>
            <p style="max-width:900px">Mi portfolio virtual con proyectos y otras cositas esta en este enlace: <a href="https://adrianopistoia.github.io" style="text-decoration: underline;color:white">Ahora con boton de retroceso!(:D)</a></p>
        </div>
    </div>
    <div style="display:flex;flex-direction:row;align-self:center;border:5px solid black;margin-top:10px">
        <div class="gerImage" style="width:200px;min-height:200px;"></div>
        <div style="width:70vw;min-height:200px;display:flex;flex-direction:column;align-content:space-evenly;align-items:center;background-color:rgba(100,100,100,0.8)">
            <h4 class="Bolder" style="max-width:700px;align-self:center;">Soy German Mena, estudiante de la UTN Facultad Regional de General Pacheco</h4>
            <p style="max-width:900px"> y tengo que rellenar esto.</p >
            <br />
            <p style="max-width:900px"> y a lo mejor este</p>
            <br />
            <p style="max-width:900px">y a lo mejor este otro tambien.</p>
            <br />
        </div>
    </div>
</div>
</asp:Content>

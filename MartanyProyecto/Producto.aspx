<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="MartanyProyecto.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Productos
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
.zoom {
 
  background-color:transparent;
  transition: transform .2s; /* Animation */

  margin: 0 auto;
}

.zoom:hover {
  transform: scale(1.1); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
}

</style>
    <div class="col-lg-12">
        <div class="container">

<div class="row">
<%--                        <asp:LinkButton  runat="server" id="btnPostback" style="display:none" OnClick="btnPostback_Click1"/>--%>


            <asp:ListView ID="lstVDataBind" runat="server" DataKeyNames="Id_Producto" OnItemCommand="lstVDataBind_ItemCommand">

                                    <ItemTemplate>
                                        <br />
                                            <div class="col-lg-4">
                                                <br />
                                           <asp:LinkButton runat="server" class="card shadow zoom" OnClick="Unnamed_Click" ForeColor="Black">
                                                   <div class="card-header"><%#Eval("Id_Producto")%></div>
                                                   <div class="card-body">
                                                       <img class="img-fluid" src='<%#Eval("imgURL")%>'/>
                                                     <asp:Label Text='<%#Eval("Nombre")%>' runat="server" ID="lblNombre"></asp:Label> 
                                                   </div>
                                                   <div class="card-footer">
                                                       Precio:
                                                   </div>
                                               </asp:LinkButton>
                                            </div>
                                      
                                    </ItemTemplate>
                        </asp:ListView>


        </div>
        </div>
              
      
    </div>
    
    

    <script type="text/javascript">
                     Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
            function BeginRequestHandler(sender, args) { var oControl = args.get_postBackElement(); oControl.disabled = true; }

               Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(function(){

       //$('.card').hover(
       //         function () {
       //             $(this).animate({
       //                 marginTop: "-=2%",

       //             }, 200);
       //         },
       //         function () {
       //             $(this).animate({
       //                 marginTop: "0%"
       //             }, 200);
       //         }

       //     );
       // });
                  
     

            

    </script>
</asp:Content>




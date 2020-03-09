<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="MartanyProyecto.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Productos
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div class="container">

<div class="row">
            <asp:ListView ID="lstVDataBind" runat="server">

                                    <ItemTemplate>
                                        <br />
                                            <div class="col-lg-4">
                                                <br />
                                               <div class="card">
                                                   <div class="card-header"><%#Eval("Id_Producto")%></div>
                                                   <div class="card-body">
                                                       <img class="img-fluid" src='<%#Eval("imgURL")%>'/>
                                                       <%#Eval("Nombre")%>
                                                   </div>
                                                   <div class="card-footer">
                                                       Precio:
                                                   </div>
                                               </div>
                                            </div>
                                      
                                    </ItemTemplate>
                        </asp:ListView>


        </div>
        </div>
              
      
    </div>
 
</asp:Content>



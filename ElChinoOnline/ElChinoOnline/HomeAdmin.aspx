<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Administrador.master" CodeBehind="HomeAdmin.aspx.vb" Inherits="ElChinoOnline.HomeAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenido1" runat="server">
    <div id="login-page" class="row">
        <div class="row margin">
                <br /><br />
        </div>
        <div class="col m3 l4">
            <br />
        </div>
        <div class="col s12 m6 l4 z-depth-4 card-panel center-block">
            
            <div class="login-form center">
                <div class="row">
                    <div class="input-field col s12 center">
                        <h5>Opciones de Administración</h5>
                    </div>
                </div>
                <div class="row margin">
                    <div class="col s6">
                        <p class="left-align">
                            <asp:Button ID="BtnProductos" runat="server" Text="Productos" CssClass="btn waves-light" />
                        </p>
                    </div>
                    <div class="col s6">
                        <p class="right-align">
                        <asp:Button ID="BtnAdministradores" runat="server" Text="Arministradores" CssClass="btn waves-light" />
                            </p>
                    </div>
                </div>
                <div class="row margin">
                    <div class="col s6">
                        <p class="left-align">
                            <asp:Button ID="BtnCategorias" runat="server" Text="Categorías" CssClass="btn waves-light" />
                        </p>
                    </div>
                    <div class="col s6">
                        <p class="right-align">
                            <asp:Button ID="BtnEmpleados" runat="server" Text="Empleados" CssClass="btn waves-light" />
                        </p>
                    </div>
                </div>
                <div class="row margin">
                    <div class="col s6">
                        <p class="left-align">
                            <asp:Button ID="BtnOrdenes" runat="server" Text="Ordenes de Compra" CssClass="btn waves-light" />
                        </p>
                    </div>
                    <div class="col s6">
                        <p class="right-align">
                            <asp:Button ID="BtnClientes" runat="server" Text="Clientes" CssClass="btn waves-light" />
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col m3 l4">
            <br />
        </div>
    </div>
</asp:Content>

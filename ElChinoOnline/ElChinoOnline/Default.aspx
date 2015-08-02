<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="Default.aspx.vb" Inherits="ElChinoOnline._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col m3 l4">
            <br />
        </div>
        <div class="col s12 m6 l4">
            <h2 class="center-align">Login</h2>
                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="TxtEmail" runat="server" type="email" CssClass="validate"></asp:TextBox>
                            <label for="email">Email</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="TxtPassword" runat="server" type="password" CssClass="validate"></asp:TextBox>
                            <label for="pass">Password</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12">
                            <p>
                                <input type="checkbox" id="remember"/>
                                <label for="remember">Recordarme</label>
                            </p>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="col s12">
                            <p>
                                <label for="registro">Sí no tienes una cuenta, por favor ingresar al siguiente link</label>
                                <a href="Registro.aspx">Registrarme</a>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col m12">
                            <p class="right-align">
                                <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn btn-medium waves-light" />
                            </p>
                        </div>
                    </div>
        </div>
    </div>
</asp:Content>

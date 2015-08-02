<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="Registro.aspx.vb" Inherits="ElChinoOnline.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="login-page" class="row">
        <div class="col m3 l4">
            <br />
        </div>
        <div class="col s12 m6 l4 z-depth-4 card-panel center-block">
            <div class="login-form center">
                <div class="row">
                    <div class="input-field col s12 center">
                        <h4>Registro</h4>
                        <p class="center">Por favor ingresar todos los datos que se le indican en el siguiente formulario.</p>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">&#xE7FD;</i>
                        <asp:TextBox ID="TxtNombre" runat="server" TextMode="SingleLine" CssClass="validate"></asp:TextBox>
                        <label for="nombre">Nombre:</label>
                    </div>
                    <div class="input-field col s6">
                        <asp:TextBox ID="TxtApellidos" runat="server" TextMode="SingleLine" CssClass="validate"></asp:TextBox>
                        <label for="apellidos">Apellidos:</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">&#xE551;</i>
                        <asp:TextBox ID="TxtTelefono" runat="server" CssClass="validate" TextMode="Number"></asp:TextBox>
                        <label for="telefono">Teléfono:</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">&#xE52E;</i>
                        <asp:TextBox ID="TxtDireccion" runat="server" TextMode="MultiLine" CssClass="validate materialize-textarea" MaxLength="50" length="51" ></asp:TextBox>
                        <label for="direccion">Dirección:</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">&#xE0BE;</i>
                        <asp:TextBox ID="TxtEmail" runat="server" TextMode="email" CssClass="validate"></asp:TextBox>
                        <label for="email" data-error="Incorrecto" data-success="Correcto">Email:</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">&#xE899;</i>
                        <asp:TextBox ID="TxtPassword1" runat="server" TextMode="password" CssClass="validate"></asp:TextBox>
                        <label for="password1">Contraseña:</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">&#xE897;</i>
                        <asp:TextBox ID="TxtPassword2" runat="server" TextMode="password" CssClass="validate"></asp:TextBox>
                        <label for="password2">Confirmar Contraseña:</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar" CssClass="btn waves-light col s12" />
                    </div>
                    <div class="input-field col s12">
                        <p class="margin center medium-small sign-up">Ya posees una cuenta? <a href="page-login.html">Login</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col m3 l4">
            <br />
        </div>
    </div>
</asp:Content>

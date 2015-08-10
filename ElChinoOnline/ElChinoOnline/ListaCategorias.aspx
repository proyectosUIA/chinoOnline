<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Administrador.master" CodeBehind="ListaCategorias.aspx.vb" Inherits="ElChinoOnline.ListaCategorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido1" runat="server">
  
    
    <table class="pagination">
        <tr>
            <td>
                <asp:Panel ID="PNLupdate" runat="server" BackColor="#FFFFCC" BorderColor="Black" Height="473px">
                    <table class="pagination">
                        <tr>
                            <td style="width: 166px">
                                <asp:Label ID="Label1" runat="server" Text="Seleccionar categoria"></asp:Label>
                                &nbsp;</td>
                            <td>
                                
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DSCategorias" DataTextField="nombre_categoria" DataValueField="id_categoria" style="display: block;">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="DSCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:conexionBD %>" SelectCommand="SELECT * FROM [Categoria_producto]"></asp:SqlDataSource>
                                
                            </td>
                            <td>
                                <asp:Button ID="BTNConsultar" runat="server" Text="Consultar" />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 78px; width: 166px">
                                <asp:Label ID="Label3" runat="server" Text="Nombre de Categoria"></asp:Label>
                            </td>
                            <td style="height: 78px">
                                <asp:Label ID="Label4" runat="server" Text="Descripcion"></asp:Label>
                            </td>
                            <td style="height: 78px"></td>
                        </tr>
                        <tr>
                            <td style="width: 166px">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 166px">&nbsp;</td>
                            <td>Nuevos datos</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 166px">
                                <asp:TextBox ID="TXTnuevoNombre" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TXTnuevadescripcion" runat="server" Width="307px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 166px">
                                <asp:Button ID="BTNCancelar" runat="server" Text="Cancelar" />
                            </td>
                            <td>
                                <asp:Button ID="BTNactualizar" runat="server" Text="Actulizar" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 166px">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="PNLInsert" runat="server" BackColor="#CCFFFF" BorderColor="Black" Height="473px">
                    <table class="pagination">
                        <tr>
                            <td class="center-on-small-only" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="text-decoration: underline"><strong>&nbsp;Insertar Nueva Categoria</strong></span></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Nombre de Categoria1"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TXTNomCategoria0" runat="server"></asp:TextBox>
                            </td>
                            <td rowspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Descripcion"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TXTDescripcion0" runat="server" Width="313px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="BTNagregar" runat="server" Text="Agregar Categoria" Width="162px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
  
    
</asp:Content>

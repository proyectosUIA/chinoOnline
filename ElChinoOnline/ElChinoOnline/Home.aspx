<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Clientes.master" CodeBehind="Home.aspx.vb" Inherits="ElChinoOnline.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenido1" runat="server">
    <div id="login-page" class="row">
        <div class="row margin">
            <br />
            <br />
        </div>
        <div class="col m3 ">
            <br />
        </div>
        <div class="col s12 m6 z-depth-4 card-panel center-block">
                <div class="row">
                    <div class="input-field col s12 center">
                        <h5>Lista de Productos</h5>
                    </div>
                </div>
                <div class="row margin">
                    <div class="col s6">
                        <p>
                            Para listar los productos seleccione una categoría:
                        <asp:DropDownList ID="DrlCategoria" runat="server" DataSourceID="DSCategorias" DataTextField="nombre_categoria" DataValueField="id_categoria" style="display: block;">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="DSCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:ElchinoOnline %>" SelectCommand="SELECT [id_categoria], [nombre_categoria] FROM [Categoria_producto]"></asp:SqlDataSource>
                        <asp:Button ID="BtnListar" runat="server" Text="Listar productos" CssClass="btn waves-light" />
                        </p>
                    </div>
                    <div class="col s12">

                        <asp:GridView ID="GrvProductos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField>
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Seleccionar" />
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" Text="Ver Detalles"></asp:LinkButton>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>

                    </div>
                </div>
        </div>
        <div class="col m3 l4">
            <br />
        </div>
    </div>
</asp:Content>

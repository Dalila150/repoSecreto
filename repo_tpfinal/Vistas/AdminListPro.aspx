﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminListPro.aspx.cs" Inherits="Vistas.AdminListPro" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="StyleSheet" ; href="/css/home.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/footer.css" ; type="text/css" />
    <link rel="StyleSheet" ; href="/css/headerAdmin.css" ; type="text/css" />

    <title>Lista Productos - Admin</title>
    <script src="https://kit.fontawesome.com/475f4f5709.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 45%;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <header>
        <div class="EspacioLogo">
            <img src="/img/logo.jpg" ; class="Logo" />
        </div>


        <div class="EspacioAtajos" style="padding-top: 50px;">
            <a href="/home.html" class="fa fa-sign-out"
                style="text-decoration: none; font-size: 30px;color: black;"></a>
        </div>
        <div class="EspacioBarraNavegacion" style="padding-top: 35px;">
            <ul class="nav">
                <li class="name">
                    <a href="/AdminHome.aspx">Home</a>
                </li>
                <li class="name">
                    <a href="/AdminHome.aspx">Administracion</a>
                    <ul>
                        <li>
                            <a href="/AdminListarProductos.aspx">Productos</a>
                        </li>
                        <li>
                            <a href="/AdminUsuarios.html">Usuarios</a>
                        </li>
                        <li>
                            <a href="/AdminListarCategorias.html">Categorias</a>
                        </li>
                        <li>
                            <a href="/AdminListarMarcas.html">Marcas</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

    </header>
    <!------------------------------------------------------------>
    <div style="display: inline-block;width: 80%;padding-top: 100px;padding-left: 10%">
        <div style="    background-color: rgba(197, 93, 102, 0.404);
    margin-left: 15%;margin-right: 15%;border-radius: 8px;    padding-bottom: 5%;">
            <h1 style="padding-top: 20px; text-align: center ">Productos</h1>
            <div class="EspacioBuscador">
                <asp:TextBox ID="txtBuscar" runat="server" name="search" placeholder="Buscar" class="bus" autocomplete="off" AutoPostBack="True" OnTextChanged="txtBuscar_TextChanged" TabIndex="1" onkeyup="RefreshUpdatePanel()" onfocus="this.selectionStart = this.selectionEnd = this.value.length;"></asp:TextBox>
            </div>
           
            <br />
            <div style="font-size: 20px;margin-left: 17%;width: 70%;text-align: center;" class="auto-style1">
            <asp:GridView ID="grdProductos" runat="server" style="width:100%; border-radius:5px" CellPadding="4" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanging="grdProductos_SelectedIndexChanging" AllowPaging="True" AutoGenerateDeleteButton="True" OnRowDeleting="grdProductos_RowDeleting" ForeColor="#333333" GridLines="None" OnPageIndexChanging="grdProductos_PageIndexChanging" PageSize="5" OnRowDataBound="grdProductos_RowDataBound" >
                <AlternatingRowStyle BackColor="#BCC8C3" ForeColor="" />
                <Columns>
                    <asp:TemplateField HeaderText="Id" Visible="False">
                        <ItemTemplate>
                            <asp:Label class="info-user" ID="lblId" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PRODUCTO">
                        <ItemTemplate>
                            <asp:Label ID="lblProd" runat="server" Text='<%# Bind("Producto") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MARCA">
                        <ItemTemplate>
                            <asp:Label ID="lblMarca" runat="server" Text='<%# Bind("Marca") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PRECIO">
                        <ItemTemplate>
                            <asp:Label ID="lblPrecio" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="STOCK">
                        <ItemTemplate>
                            <asp:Label ID="lblStock" runat="server" Text='<%# Bind("Disponibles") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ESTADO">
                        <ItemTemplate>
                            <asp:Label ID="lblEstado" runat="server" Text='<%# Bind("estado") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#90648B" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#AE4750" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#6D887D" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F4F6F5" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                </div>
                <div style="text-align:center;width:100%;margin:10px;height: 35px;">
                    <asp:Button ID="btnCrearProducto" runat="server" Text="Crear Nuevo Producto" style="width: 25%;height: 100%;background-color: rgba(174, 64, 74, 0.84); border: none;border-radius: 10px;" Font-Bold="True" Font-Size="Medium" OnClick="btnCrearProducto_Click"/>
                </div>
        </div>
        
    </div>
    <footer>
        <div>
            <h2 class="cont">Contactenos</h2>
            <!-- Iconos de redes sociales -->
            <ul>
                <li class="primerIco">
                    <a href="https://www.instagram.com/"><i class="fab fa-instagram-square tamIcoRed" ;></i></a>
                </li>
                <li class="icoRedes">
                    <a href="https://twitter.com/"><i class="fab fa-twitter tamIcoRed"></i></a>
                </li>
                <li class="icoRedes">
                    <a href="https://facebook.com/"><i class="fab fa-facebook-square tamIcoRed"></i></a>
                </li>
                <li class="icoRedes">
                    <a href="https://github.com/"><i class="fab fa-github tamIcoRed"></i></a>
                </li>
            </ul>
            <ul>
                <li class="primero">
                    <i>Instagram</i>
                </li>
                <li class="redes">
                    <i>Twitter</i>
                </li>
                <li class="redes">
                    <i>Facebook</i>
                </li>
                <li class="redes">
                    <i>Github</i>
                </li>
            </ul>
        </div>
    </footer>
        <br />
    </form>
</body>
    <!-- BUSQUEDA -->
    <!-- CADA VEZ QUE CAMBIA LA LETRA HACE POSTBACK -->
    <script type="text/javascript">
        function RefreshUpdatePanel() {
            __doPostBack('<%= txtBuscar.ClientID %>', '');
        };
    </script>
    <!-- SI HIZO POSTBACK PARA SEGUIR ESCRIBIENDO NORMAL PONGO EL CURSOR AL FINAL -->
    <script type="text/javascript">
        function SetCursorToTextEnd(textControlID) {
            document.getElementById("txtBuscar").focus();
            var text = document.getElementById(textControlID);
            if (text != null && text.value.length > 0) {
                if (text.createTextRange) {
                    var FieldRange = text.createTextRange();
                    FieldRange.moveStart('character', text.value.length);
                    FieldRange.collapse();
                    FieldRange.select();
                }
            }
        }
    </script>
    <!-- CADA VEZ QUE ENTRO PONGO LA BUSQUEDA ACTIVA -->
    <script type="text/javascript">
        document.getElementById("txtBuscar").focus();
    </script>
</html>
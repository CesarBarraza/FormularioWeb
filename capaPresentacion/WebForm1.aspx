<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="capaPresentacion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/> 
<link rel="stylesheet" href="estilos.css" />
    <title></title>

</head>
<body>
   <h2 class="mb-3 mt-3">Gestión de Producto</h2>
    <form id="form1" runat="server">
       <div class="row">
        <div class="col-md-4 ml-3">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Label">Nombre: </asp:Label>
            <asp:TextBox Cssclass="txt" ID="txtNombre" runat="server"></asp:TextBox>
        </div>
        <div class="form-group" >
            <asp:Label ID="Label2" runat="server" Text="Label">Descripción: </asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Label">Precio: </asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Label">Stock: </asp:Label>
            <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-outline-info"/>
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CssClass="btn btn-outline-danger" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" CssClass="btn btn-outline-warning" />

        </div>
        <div class="col-md-6 ml-4">
            <div class="container" style="height:300px; overflow:auto">
                 <asp:GridView ID="dgvProducto" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="50%" Width="100%" OnRowCommand="dgvProducto_RowCommand">
               <AlternatingRowStyle BackColor="White" />
                     <Columns>
                         <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Seleccionar" />
                     </Columns>
               <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
               <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
               <SortedAscendingCellStyle BackColor="#FDF5AC" />
               <SortedAscendingHeaderStyle BackColor="#4D0000" />
               <SortedDescendingCellStyle BackColor="#FCF6C0" />
               <SortedDescendingHeaderStyle BackColor="#820000" />
           </asp:GridView>
            </div>
            
        </div>
    </div>
  </form> 

</body>
</html>

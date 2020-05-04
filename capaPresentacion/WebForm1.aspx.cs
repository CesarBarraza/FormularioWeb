using System;
using System.Web.UI.WebControls;
using capaDominio;
using CapaNegocio;

namespace capaPresentacion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int IDProducto;   
        //CN_producto cN_Producto = new CN_producto();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {         
                cargarGrid();
            }
        }
        public void cargarGrid()
        {
            dgvProducto.DataSource = CN_producto.MostrarProductos();
            dgvProducto.DataBind();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Producto producto = obtenerProducto();
            CN_producto.agregarProducto(producto);
            limpiar();
            cargarGrid();
            Page.Session["IDProducto"] = IDProducto;
        }

        protected void dgvProducto_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "Select")
                {
                    int rowIndex = Convert.ToInt32(e.CommandArgument);
                    GridViewRow row = dgvProducto.Rows[rowIndex];
                    Page.Session["IDProducto"] = Convert.ToInt32(row.Cells[1].Text);
                    txtNombre.Text = row.Cells[2].Text;
                    txtDescripcion.Text = row.Cells[3].Text;
                    txtPrecio.Text = row.Cells[4].Text;
                    txtStock.Text = row.Cells[5].Text;
                }
            }
            catch (System.Web.HttpRequestValidationException ex)
            {
                Console.Error.WriteLine(ex.Message);
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            CN_producto.EliminarProducto(Convert.ToInt32(Page.Session["IDProducto"]));
            limpiar();
            cargarGrid();
        }

        public Producto obtenerProducto()
        {
            Producto producto = new Producto();
            try
            {
                producto.IDProducto = Convert.ToInt32(Page.Session["IDProducto"]);
                producto.Nombre = txtNombre.Text;
                producto.Descripcion = txtDescripcion.Text;
                producto.Precio = Convert.ToDouble(txtPrecio.Text);
                producto.Stock = Convert.ToInt32(txtStock.Text);            }
            catch (FormatException ex)
            {
                Console.Error.WriteLine(ex.Message);
            }
            return producto;
        }

        public void limpiar()
        {
            Page.Session["IDProducto"] = IDProducto;
            txtNombre.Text = "";
            txtDescripcion.Text="";
            txtPrecio.Text = "";
            txtStock.Text = "";
            txtNombre.Focus();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            limpiar();
        }
    }
}
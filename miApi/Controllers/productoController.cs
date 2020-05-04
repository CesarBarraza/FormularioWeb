using System.Collections.Generic;
using System.Web.Http;
using System.Web.Services;
using System.Web.UI;
using capaDominio;
using CapaNegocio;

namespace miApi.Controllers
{
    public class productoController : ApiController
    {
        // GET: api/Api
        [WebMethod]
        public IEnumerable<Producto> Get()
        {
            return CN_producto.MostrarProductos();
        }

        // GET: api/Api/5
        //public string Get(int id)
        //{
        //    return "value";
        //}

        // POST: api/Api
        public void Post([FromBody]Producto producto)
        {
            CN_producto.agregarProducto(producto);
        }

        // PUT: api/Api/5
        public void Put([FromBody]Producto producto)
        {
            CN_producto.agregarProducto(producto);
        }

        // DELETE: api/Api/5
        public void Delete(int id)
        { 
            CN_producto.EliminarProducto(id);
        }
    }
}

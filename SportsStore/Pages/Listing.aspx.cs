using SportsStore.Models;
using SportsStore.Models.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace SportsStore.Pages
{
    public partial class Listing : System.Web.UI.Page
    {
        private int pageSize = 4;
        private Repository repo = new Repository();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected IEnumerable<Product> GetProducts()
        {
            return repo.Products.OrderBy(p => p.productID).Skip((CurrentPage - 1) * pageSize).Take(pageSize); 
        }
        protected int CurrentPage
        {
            
            get { 
                    int page;
                    return int.TryParse(Request.QueryString["page"], out page) ? page : 1;
            }
        }
    }
}
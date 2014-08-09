using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportsStore.Models.Repository
{
    public class Repository
    {
        private EFDbContext content = new EFDbContext();
        public IEnumerable<Product> Products { get { return content.Products; } }
    }
}
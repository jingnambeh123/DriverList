using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Driver_list
{
    public class Global : HttpApplication

    {
        public const string CS = @"
        Data Source=(LocalDB)\mssqllocaldb;
AttachDbFilename=|DataDirectory|\driverlist.mdf;
";
        public const string DB = @"
        Data Source=(LocalDB)\mssqllocaldb;
AttachDbFilename=|DataDirectory|\reviews.mdf;
";
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}
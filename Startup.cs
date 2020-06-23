using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DaybookSchoolboy.Startup))]
namespace DaybookSchoolboy
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

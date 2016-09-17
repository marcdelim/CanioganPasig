using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Caniogan.Startup))]
namespace Caniogan
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

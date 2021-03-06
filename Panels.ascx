<%@ Control Language="C#" ClassName="DNNWorld" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>

<style type="text/css">
    #panels-demo { position:relative; }
</style>

<div class="dnnForm" id="panels-demo">
    <div class="dnnFormExpandContent"><a href="">Expand All</a></div>
    <div>
        <h2 id="wolverine" class="dnnFormSectionHead"><a href="#">Wolverine</a></h2>
        <fieldset>
            <img src="<%= ResolveUrl("Images/Wolverine.png") %>" alt="Wolverine" />
        </fieldset>
    </div>
    <div>
        <h2 id="juggernaut" class="dnnFormSectionHead"><a href="#">Juggernaut</a></h2>
        <fieldset>
            <img src="<%= ResolveUrl("Images/Juggernaut.jpg") %>" alt="Juggernaut" />
        </fieldset>
    </div>
    <div>
        <h2 id="storm" class="dnnFormSectionHead"><a href="#">Storm</a></h2>
        <fieldset>
            <img src="<%= ResolveUrl("Images/Storm.jpg") %>" alt="Storm" />
        </fieldset>
    </div>
</div>

<script type="text/javascript">
    jQuery(function ($) {
        var setupModule = function () {
            $('#panels-demo').dnnPanels();
            $('#panels-demo .dnnFormExpandContent a').dnnExpandAll({
                targetArea: '#panels-demo'
            });
        };

        setupModule();

        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () {
            // note that this will fire when _any_ UpdatePanel is triggered,
            // which may or may not cause an issue
            setupModule();
        });
    });
</script>

<script runat="server">
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        jQuery.RequestDnnPluginsRegistration();
    }
</script>

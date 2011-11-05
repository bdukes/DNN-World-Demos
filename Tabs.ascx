<%@ Control Language="C#" ClassName="DNNWorld" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>

<div class="dnnForm" id="tabs-demo">
    <ul class="dnnAdminTabNav">
        <li><a href="#chewy">Chewbacca</a></li>
        <li><a href="#anakin">Darth Vader</a></li>
        <li><a href="#slj">Mace Windu</a></li>
    </ul>
    <div id="chewy">
        <img src="<%=ResolveUrl("Images/Chewbacca.jpg") %>" alt="Chewbacca" />
    </div>
    <div id="anakin">
        <img src="<%=ResolveUrl("Images/Darth Vader.jpg") %>" alt="Darth Vader" />
    </div>
    <div id="slj">
        <img src="<%=ResolveUrl("Images/Mace Windu.jpg") %>" alt="Mace Windu" />
    </div>
</div>
<script type="text/javascript">
    jQuery(function ($) {
        $('#tabs-demo').dnnTabs();
    });
</script>

<script runat="server">
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        jQuery.RequestDnnPluginsRegistration();
    }
</script>
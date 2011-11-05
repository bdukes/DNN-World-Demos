<%@ Control Language="C#" ClassName="DNNWorld" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>
<style type="text/css">
    .dnnDialog img { float:left; }
    .dnnDialog blockquote { font-size: 1.7em; padding-left:1ex; }
</style>

<ul id="dialogs-demo" class="dnnActions">
    <li><a class="alert dnnPrimaryAction" href="#">Warp Power!</a></li>
    <li><a class="confirm dnnPrimaryAction" href="/Sickbay.aspx">Report to Sickbay</a></li>
</ul>

<script type="text/javascript">
    jQuery(function ($) {
        $('#dialogs-demo .confirm').dnnConfirm();
        $('#dialogs-demo .alert').click(function (event) {
            event.preventDefault();

            $.dnnAlert({ 
                text: '<img src="<%=ResolveUrl("Images/Geordi La Forge.jpg")%>" alt="Geordi La Forge"/> <blockquote>Matter-antimatter mixture ratio settings... at optimum balance. Reaction sequence... corresponding to specified norms. Magnetic plasma transfer to warp field generators per program specs. Commander, we should be going like a bat out of hell!</blockquote>',
                width: 700
            });
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

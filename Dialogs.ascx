<%@ Control Language="C#" ClassName="DNNWorld" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>
<div id="dialogs-demo">
    <a class="confirm">Confirm?</a>
    <a class="alert">Alert!</a>
</div>

<script type="text/javascript">
    jQuery(function ($) {
        $('#dialogs-demo .confirm').dnnConfirm();
        $('#dialogs-demo .alert').dnnAlert();
    });
</script>

<script runat="server">
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        jQuery.RequestDnnPluginsRegistration();
    }
</script>

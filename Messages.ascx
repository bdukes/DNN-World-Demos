<%@ Control Language="C#" ClassName="DNNWorld.Messages" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>
<%@ Import Namespace="DotNetNuke.UI.Skins.Controls" %>

<p class="dnnFormMessage dnnFormSuccess">This is a success message!</p>

<p>
    <span class="dnnFormMessage dnnFormValidationSummary">This is bad!</span>
</p>

<div class="dnnForm">
    <fieldset>
        <div class="dnnFormItem">
            <label>A label</label>
            <input />
            <span class="dnnFormMessage dnnFormError">This is invalid!</span>
        </div>
    </fieldset>
</div>

<script runat="server">
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        Skin.AddModuleMessage(this, "This is a warning!", ModuleMessage.ModuleMessageType.YellowWarning);
        Skin.AddModuleMessage(this, "Info", "This is informational!", ModuleMessage.ModuleMessageType.BlueInfo);
    }
</script>


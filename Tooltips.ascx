<%@ Control Language="C#" ClassName="DNNWorld" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" %>

<div class="dnnForm">
    <fieldset>
        <div class="dnnFormItem">
            <dnn:Label runat="server" ControlName="NameTextBox" Text="Name" HelpText="It's the name of the thing" />
            <asp:TextBox ID="NameTextBox" runat="server" />
        </div>
    </fieldset>
</div>
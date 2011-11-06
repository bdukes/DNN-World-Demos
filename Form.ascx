<%@ Control Language="C#" ClassName="DNNWorld" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke.Web" Namespace="DotNetNuke.Web.UI.WebControls" %>
<style type="text/css">
    .dnnFormItem.dnnFormHelp { margin-top: 2em; }
</style>

<div class="dnnForm" id="form-demo">
    <asp:Label runat="server" CssClass="dnnFormMessage dnnFormInfo" ResourceKey="Intro" />
    
    <div class="dnnFormItem dnnFormHelp dnnClear">
        <p class="dnnFormRequired"><asp:Label runat="server" ResourceKey="Required Indicator" /></p>
    </div>

    <fieldset>
        <div class="dnnFormItem">
            <dnn:Label runat="server" ControlName="NameTextBox" ResourceKey="Name" />
            <asp:TextBox runat="server" ID="NameTextBox" CssClass="dnnFormRequired" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="NameTextBox" 
                CssClass="dnnFormMessage dnnFormError" ResourceKey="Name.Required" />
        </div>
        <div class="dnnFormItem">
            <dnn:Label runat="server" ControlName="DescriptionTextBox" ResourceKey="Description" />
            <asp:TextBox runat="server" TextMode="MultiLine" ID="DescriptionTextBox" />
        </div>
        <div class="dnnFormItem">
            <dnn:Label runat="server" ControlName="ChoiceDropDown" ResourceKey="Choice" />
            <asp:DropDownList runat="server" ID="ChoiceDropDown">
                <asp:ListItem Text="-- Make a Choice --" />
                <asp:ListItem Text="First Choice" />
                <asp:ListItem Text="Second Choice" />
            </asp:DropDownList>
        </div>
        <div class="dnnFormItem">
            <dnn:Label runat="server" ControlName="RateRadioButtons" ResourceKey="Rate" />
            <asp:RadioButtonList runat="server" ID="RateRadioButtons"
                RepeatDirection="Horizontal" RepeatLayout="Flow"
                CssClass="dnnFormRadioButtons">
                <asp:ListItem Text="1" />
                <asp:ListItem Text="2" />
                <asp:ListItem Text="3" />
                <asp:ListItem Text="4" />
                <asp:ListItem Text="5" />
            </asp:RadioButtonList>
        </div>
        <div class="dnnFormItem">
            <dnn:Label runat="server" ControlName="AgreeCheckbox" ResourceKey="Agree" />
            <asp:CheckBox runat="server" ID="AgreeCheckbox" />
        </div>
        <div class="dnnFormItem">
            <asp:Label runat="server" CssClass="dnnFormLabel" AssociatedControlID="StartDatePicker" ResourceKey="Start Date" />
            <dnn:DnnDatePicker runat="server" CssClass="dnnFormInput" ID="StartDatePicker" />
        </div>
    </fieldset>
    <ul class="dnnActions dnnClear">
        <li><asp:LinkButton runat="server" CssClass="dnnPrimaryAction" ResourceKey="Save" /></li>
        <li><asp:HyperLink runat="server" CssClass="dnnSecondaryAction" NavigateUrl="/" ResourceKey="Cancel" /></li>
    </ul>
</div>
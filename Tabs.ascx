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
        try
        {
            rptControls.ItemDataBound += (_, args) => args.Item.FindControl("phControl").Controls.Add(new System.Web.UI.WebControls.Image { ImageUrl = ((dynamic)args.Item.DataItem).src });
            rptControls.DataSource = rptTabs.DataSource = new[] { 
            new { src = ResolveUrl("Images/Thing.jpg"), DashboardControlKey = "Thing", LocalizedTitle = "Thing" },
            new { src = ResolveUrl("Images/Mr. Fantastic.jpg"), DashboardControlKey = "Mr-Fantastic", LocalizedTitle = "Mr. Fantastic" },
            new { src = ResolveUrl("Images/Invisible Woman.jpg"), DashboardControlKey = "Invisible-Woman", LocalizedTitle = "Invisible Woman" },
            new { src = ResolveUrl("Images/Human Torch.png"), DashboardControlKey = "Human-Torch", LocalizedTitle = "Human Torch" },
        };
            rptTabs.DataBind();
            rptControls.DataBind();
        }
        catch (Exception exc) { Exceptions.ProcessModuleLoadException(this, exc); }
    }
</script>

<div class="dnnForm dnnDashBoard dnnClear" id="dnnDashBoard">
    <asp:Repeater ID="rptTabs" runat="server">
        <HeaderTemplate>
            <ul class="dnnAdminTabNav dnnClear" id="">
        </HeaderTemplate>
        <ItemTemplate>
            <li><a href='#<%# Eval("DashboardControlKey") %>-tab'><%# Eval("LocalizedTitle")%></a></li>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>        
    </asp:Repeater>
    <asp:Repeater ID="rptControls" runat="server">
        <ItemTemplate>
            <div id='<%# Eval("DashboardControlKey") %>-tab' class="dnnDashboardPanel">
                <div class="dashboardHeader">
                </div>
                <asp:PlaceHolder ID="phControl" runat="server" />
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
<script type="text/javascript">
    jQuery(function ($) {
        $('#dnnDashBoard').dnnTabs();
    });
</script>

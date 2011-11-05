<%@ Control Language="C#" ClassName="DNNWorld" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>
<%@ Import Namespace="DotNetNuke.Entities.Icons" %>
<style type="text/css">
    #icons-demo li { height:95px; float:left; list-style:none; text-align:center; padding: 1em 1em 0; }
        #icons-demo li:nth-child(even) { background-color:#ddd; }
        #icons-demo li.bad-image h3 { color:#e11; }
</style>

<ul id="icons-demo" class="dnnClear">
    <li><img src="/Icons/Sigma/Add_32x32_Standard.png" alt="Add" /><h3>Add</h3></li>
    <li><img src="/Icons/Sigma/About_32x32_Standard.png" alt="About" /><h3>About</h3></li>
    <li><asp:Image runat="server" IconKey="ActionDelete" AlternateText="ActionDelete" /><h3>ActionDelete</h3></li>
    <li><asp:Image runat="server" IconKey="ActionRefresh" AlternateText="ActionRefresh" /><h3>ActionRefresh</h3></li>
    <asp:Repeater ID="SmallIconsRepeater" runat="server">
        <ItemTemplate><li><img src="<%#IconController.IconURL((string)Container.DataItem) %>" alt="<%#Container.DataItem %>" /><h3><%#Container.DataItem %></h3></li></ItemTemplate>
    </asp:Repeater>
    <asp:Repeater ID="LargeIconsRepeater" runat="server">
        <ItemTemplate><li><img src="<%#IconController.IconURL((string)Container.DataItem, IconController.DefaultLargeIconSize)%>" alt="<%#Container.DataItem %>" /><h3><%#Container.DataItem %></h3></li></ItemTemplate>
    </asp:Repeater>
    <asp:Repeater ID="IconKeyRepeater" runat="server">
        <ItemTemplate><li><asp:Image runat="server" IconSize="32x32" IconKey="<%#Container.DataItem %>" AlternateText="<%#Container.DataItem %>" /><h3><%#Container.DataItem %></h3></li></ItemTemplate>
    </asp:Repeater>
</ul>

<script type="text/javascript">
    jQuery('#icons-demo img').error(function () {
        $(this).closest('li').addClass('bad-image');
    });
</script>

<script runat="server">
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        
        SmallIconsRepeater.DataSource = new[] {
            "ActivateLicense",
            "AddFolder",
            "AddFolderDisabled",
            "AddTab",
            "Appintegrity",
            "Authentication",
            "BulkMail",
            "Cancel",
            "CancelDisabled",
            "CatalogCart",
            "CatalogDetails",
            "CatalogForge",
            "CatalogLicense",
            "CatalogModule",
            "CatalogOther",
            "CatalogSkin",
            "Checked",
            "CheckedDisabled",
            "Configuration",
            "Console",
            "CopyFile",
            "CopyFileDisabled",
            "CopyTab",
            "Dashboard",
            "Delete",
            "DeleteDisabled",
            "DeleteFolder",
            "DeleteFolderDisabled",
            "DeleteTab",
            "DelFolderDisabled",
            "Deny",
            "Dn",
            "DnnSearch",
            "DragDrop",
            "Edit",
            "EditDisabled",
            "EditTab",
            "Email",
            "ExportTab",
        };
        LargeIconsRepeater.DataSource = new[] {
            "ExtArj",
            "ExtAsa",
            "ExtAsax",
            "ExtAscx",
            "ExtAsmx",
            "ExtAsp",
            "ExtAspx",
            "ExtAu",
            "ExtAvi",
            "ExtBat",
            "ExtBmp",
            "ExtCab",
            "ExtChm",
            "ExtClosedFolder",
            "ExtCom",
            "ExtConfig",
            "ExtCopy",
            "ExtCs",
            "ExtCss",
            "ExtDisco",
            "ExtDll",
            "ExtDoc",
            "Extensions",
            "ExtExe",
            "ExtFile",
            "ExtGif",
            "ExtHlp",
            "ExtHtm",
            "ExtInc",
            "ExtIni",
            "ExtJpg",
            "ExtJs",
            "ExtLog",
            "ExtMdb",
            "ExtMid",
            "ExtMidi",
            "ExtMov",
            "ExtMove",
            "ExtMp",
            "ExtMpeg",
            "ExtMpeq",
            "ExtMpg",
            "ExtPdf",
            "ExtPng",
            "ExtPpt",
            "ExtSys",
            "ExtTif",
            "ExtTxt",
            "ExtTxts",
            "ExtVb",
            "ExtVbs",
            "ExtVsdisco",
            "ExtWav",
            "ExtWri",
            "ExtXls",
            "ExtXml",
            "ExtZip",
        };
        IconKeyRepeater.DataSource = new[] {
            "File",
            "Files",
            "Folder",
            "FolderDisabled",
            "FolderProperties",
            "Forge",
            "Fwd",
            "GoogleAnalytics",
            "GoogleSearch",
            "Grant",
            "Health",
            "Help",
            "HostConsole",
            "Hostsettings",
            "Hostuser",
            "ImportTab",
            "Integrity",
            "Kb",
            "Languages",
            "Licensemanagement",
            "Lists",
            "Lock",
            "Lt",
            "Marketplace",
            "Max",
            "Min",
            "Minus",
            "ModuleBind",
            "Moduledefinitions",
            "ModuleUnbind",
            "MoveFile",
            "MoveFileDisabled",
            "MoveFirst",
            "MoveLast",
            "MoveNext",
            "MovePrevious",
            "Mytickets",
            "Plus",
            "Profeatures",
            "Profile",
            "PublishLanguage",
            "RedError",
            "Refresh",
            "RefreshDisabled",
            "Register",
            "Required",
            "Restore",
            "Rt",
            "Save",
            "SaveDisabled",
            "ScheduleHistory",
            "Search",
            "SearchDisabled",
            "SecurityRoles",
            "Shared",
            "Site",
            "Sitelog",
            "SiteLog",
            "Sitemap",
            "SiteSettings",
            "Skins",
            "Software",
            "Solutions",
            "Source",
            "Sql",
            "Support",
            "Synchronize",
            "SynchronizeDisabled",
            "SynchronizeEnabled",
            "Tabs",
            "Tag",
            "Tanslate",
            "Total",
            "Translate",
            "Translated",
            "Trash",
            "TrashDisabled",
            "Unchecked",
            "UncheckedDisabled",
            "Untranslate",
            "Unzip",
            "Up",
            "UploadFile",
            "UploadFileDisabled",
            "User",
            "UserOnline",
            "Users",
            "Vendors",
            "View",
            "ViewStats",
            "Webserver",
            "Webservers",
            "Whatsnew",
            "Wizard",
        };
        SmallIconsRepeater.DataBind();
        LargeIconsRepeater.DataBind();
        IconKeyRepeater.DataBind();
    }
</script>

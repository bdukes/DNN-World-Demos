<%@ Control Language="C#" ClassName="DNNWorld" Inherits="DotNetNuke.Entities.Modules.PortalModuleBase" %>
<%@ Import Namespace="DotNetNuke.Entities.Icons" %>
<style type="text/css">
    #icons-demo ul { clear:left; }
    #icons-demo li { height:95px; float:left; list-style:none; text-align:center; padding: 1em 1em 0; }
        #icons-demo li:nth-child(even) { background-color:#ddd; }
        #icons-demo li.bad-image h3 { color:#e11; }
    #icons-demo h2 { display:none; }
    #icons-demo.auth h2 { clear:left; display:block; }
</style>

<div id="icons-demo" class="dnnClear <%= Request.IsAuthenticated ? "auth" : string.Empty %>">
    <h2><code>IconKey="abc" IconSize="32x32"</code></h2>
    <ul>
    <asp:Repeater ID="LargeSizeIconKeyRepeater" runat="server">
        <ItemTemplate><li><asp:Image runat="server" IconSize="32x32" IconKey="<%#Container.DataItem %>" AlternateText="<%#Container.DataItem %>" /><h3><%#Container.DataItem %></h3></li></ItemTemplate>
    </asp:Repeater>
    </ul>
    
    <h2><code>IconKey="abc"</code></h2>
    <ul>
    <asp:Repeater ID="DefaultSizeIconKeyRepeater" runat="server">
        <ItemTemplate><li><asp:Image runat="server" IconKey="<%#Container.DataItem %>" AlternateText="<%#Container.DataItem %>" /><h3><%#Container.DataItem %></h3></li></ItemTemplate>
    </asp:Repeater>
    </ul>
    
    <h2><code>IconController.IconURL(iconKey, "32x32")</code></h2>
    <ul>
    <asp:Repeater ID="LargeSizeIconControllerRepeater" runat="server">
        <ItemTemplate><li><img src="<%#IconController.IconURL((string)Container.DataItem, IconController.DefaultLargeIconSize)%>" alt="<%#Container.DataItem %>" /><h3><%#Container.DataItem %></h3></li></ItemTemplate>
    </asp:Repeater>
    </ul>
    
    <h2><code>IconController.IconURL(iconKey)</code></h2>
    <ul>
    <asp:Repeater ID="DefaultSizeIconControllerRepeater" runat="server">
        <ItemTemplate><li><img src="<%#IconController.IconURL((string)Container.DataItem) %>" alt="<%#Container.DataItem %>" /><h3><%#Container.DataItem %></h3></li></ItemTemplate>
    </asp:Repeater>
    </ul>
</div>

<script type="text/javascript">
    jQuery(function ($) {
        $('#icons-demo img').error(function () {
            $(this).closest('li').addClass('bad-image');
        }).load(function () {
            $(this).attr('title', function () {
                return $(this).attr('src') + '\n' + $(this).width() + 'x' + $(this).height();
            });
        });
    });
</script>

<script runat="server">
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        
        DefaultSizeIconControllerRepeater.DataSource =
            LargeSizeIconControllerRepeater.DataSource =
            DefaultSizeIconKeyRepeater.DataSource =
            LargeSizeIconKeyRepeater.DataSource = new[] {
                "About",
                "Action",
                "ActionDelete",
                "ActionRefresh",
                "Activatelicense",
                "Add",
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
        DefaultSizeIconControllerRepeater.DataBind();
        LargeSizeIconControllerRepeater.DataBind();
        DefaultSizeIconKeyRepeater.DataBind();
        LargeSizeIconKeyRepeater.DataBind();
    }
</script>

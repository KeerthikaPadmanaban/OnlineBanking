#pragma checksum "C:\Users\STS562-GOKULKANNA G\Desktop\MainP\Project1\Project1\Views\Dashboard\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "272553cab6ae4039c889ac62f39c124fd01fbcd8"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Dashboard_Index), @"mvc.1.0.view", @"/Views/Dashboard/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\STS562-GOKULKANNA G\Desktop\MainP\Project1\Project1\Views\_ViewImports.cshtml"
using Project1;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\STS562-GOKULKANNA G\Desktop\MainP\Project1\Project1\Views\_ViewImports.cshtml"
using Project1.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"272553cab6ae4039c889ac62f39c124fd01fbcd8", @"/Views/Dashboard/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4f8a1206ad760d99a32967ca6cf008da4df4ac8e", @"/Views/_ViewImports.cshtml")]
    public class Views_Dashboard_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "C:\Users\STS562-GOKULKANNA G\Desktop\MainP\Project1\Project1\Views\Dashboard\Index.cshtml"
  
    ViewData["Title"] = "Dashboard";
    Layout = "~/Views/Shared/Dashboard.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
            DefineSection("head", async() => {
                WriteLiteral("\r\n    <style type=\"text/css\">\r\n        body {\r\n            background-image: url(\'/image/gk1.jpg\');\r\n            background-repeat: no-repeat;\r\n            background-size: cover;\r\n            margin: 0;\r\n        }\r\n    </style>\r\n");
            }
            );
            WriteLiteral("<h3>Dashboard</h3>\r\n<hr />\r\n\r\n\r\n\r\n<br />\r\n<div>\r\n    <input type=\"button\"\r\n           value=\"Account Details\"");
            BeginWriteAttribute("onclick", "\r\n           onclick=\"", 454, "\"", 533, 3);
            WriteAttributeValue("", 476, "location.href=\'", 476, 15, true);
#nullable restore
#line 26 "C:\Users\STS562-GOKULKANNA G\Desktop\MainP\Project1\Project1\Views\Dashboard\Index.cshtml"
WriteAttributeValue("", 491, Url.Action("AccountDetails","Dashboard"), 491, 41, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 532, "\'", 532, 1, true);
            EndWriteAttribute();
            WriteLiteral(" />\r\n\r\n</div>\r\n<br />\r\n<div>\r\n    <input type=\"button\"\r\n           value=\"Fund Transfer\"");
            BeginWriteAttribute("onclick", "\r\n           onclick=\"", 622, "\"", 697, 3);
            WriteAttributeValue("", 644, "location.href=\'", 644, 15, true);
#nullable restore
#line 33 "C:\Users\STS562-GOKULKANNA G\Desktop\MainP\Project1\Project1\Views\Dashboard\Index.cshtml"
WriteAttributeValue("", 659, Url.Action("transfer","Transaction"), 659, 37, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 696, "\'", 696, 1, true);
            EndWriteAttribute();
            WriteLiteral(" />\r\n</div>\r\n<br />\r\n<div>\r\n    <input type=\"button\"\r\n           value=\"Change Password\"");
            BeginWriteAttribute("onclick", "\r\n           onclick=\"", 786, "\"", 865, 3);
            WriteAttributeValue("", 808, "location.href=\'", 808, 15, true);
#nullable restore
#line 39 "C:\Users\STS562-GOKULKANNA G\Desktop\MainP\Project1\Project1\Views\Dashboard\Index.cshtml"
WriteAttributeValue("", 823, Url.Action("ChangePassword","Dashboard"), 823, 41, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 864, "\'", 864, 1, true);
            EndWriteAttribute();
            WriteLiteral(" />\r\n</div>\r\n<br />\r\n<div>\r\n    <input type=\"button\"\r\n           value=\"Account Statement\"");
            BeginWriteAttribute("onclick", "\r\n           onclick=\"", 956, "\"", 1030, 3);
            WriteAttributeValue("", 978, "location.href=\'", 978, 15, true);
#nullable restore
#line 45 "C:\Users\STS562-GOKULKANNA G\Desktop\MainP\Project1\Project1\Views\Dashboard\Index.cshtml"
WriteAttributeValue("", 993, Url.Action("Statement","Dashboard"), 993, 36, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1029, "\'", 1029, 1, true);
            EndWriteAttribute();
            WriteLiteral(" />\r\n</div>\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591

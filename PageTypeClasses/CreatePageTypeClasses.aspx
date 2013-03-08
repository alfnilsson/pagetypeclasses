<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="CreatePageTypeClasses.aspx.cs"
    Inherits="Toders.Web.Plugins.CreatePageTypeClasses" Title="Create Page Type Classes" %>

<%@ Register TagPrefix="EPiServerUI" Namespace="EPiServer.UI.WebControls" Assembly="EPiServer.UI" %>
<%-- ReSharper disable Asp.ContentPlaceholderNotResolved --%>
<asp:content id="Content1" contentplaceholderid="MainRegion" runat="server">
<%-- ReSharper restore Asp.ContentPlaceholderNotResolved --%>
    <div class="epi-formArea">
        <div class="epi-size20 epi-paddingVertical-small">
            <asp:PlaceHolder ID="PlaceHolderInput" runat="server">
                <div>
                    <asp:Label runat="server" AssociatedControlID="PrefixTextBox">Prefix class name:</asp:Label>
                    <asp:TextBox ID="PrefixTextBox" runat="server"></asp:TextBox>
                </div>
            
                <div>
                    <asp:Label runat="server" AssociatedControlID="SuffixTextBox">Suffix:</asp:Label>
                    <asp:TextBox ID="SuffixTextBox" runat="server">Page</asp:TextBox>
                </div>
            
                <div>
                    <asp:Label runat="server" AssociatedControlID="BaseClassTextBox">PageType base class:</asp:Label>
                    <asp:TextBox ID="BaseClassTextBox" runat="server">PageData</asp:TextBox>
                </div>
            
                <div>
                    <asp:Label runat="server" AssociatedControlID="NamespaceTextBox">Namespace:</asp:Label>
                    <asp:TextBox ID="NamespaceTextBox" runat="server" />
                    <asp:RequiredFieldValidator ID="NamespaceRequiredFieldValidator" ControlToValidate="NamespaceTextBox" runat="server" Text="*" ErrorMessage="You need to specify a namespace"/>
                </div>
            
                <div>
                    <asp:Label runat="server" AssociatedControlID="OutputTextBox">Output directory (relative to Server.MapPath):</asp:Label>
                    <asp:TextBox ID="OutputTextBox" runat="server">PageTypes</asp:TextBox>
                </div>
            
                <div class="epi-indent epi-paddingVertical">
                    <label>Exclude following page types:</label>
                    <asp:CheckBoxList ID="PageTypeCheckBoxList" RepeatDirection="Horizontal" RepeatColumns="3" runat="server" />
                </div>
            
                <div class="epi-indent epi-paddingVertical">
                    <asp:Label runat="server" AssociatedControlID="UsingTextBox">Using</asp:Label>
                    <asp:TextBox ID="UsingTextBox" TextMode="MultiLine" Width="400" Height="200" runat="server">using System;
using System.ComponentModel.DataAnnotations;
using EPiServer;
using EPiServer.Core;
using EPiServer.DataAbstraction;
using EPiServer.DataAnnotations;
using EPiServer.Filters;
using EPiServer.Framework.DataAnnotations;
using EPiServer.SpecializedProperties;
using EPiServer.Web;</asp:TextBox>
                </div>
                <div class="epi-indent">
                    <EPiServerUI:ToolButton OnClick="ButtonSubmitClick" runat="server" text="Create Classes" skinid="Import" />
                </div>
            </asp:PlaceHolder>
            <asp:Literal ID="OutputLiteral" runat="server" />
        </div>
    </div>
</asp:content>

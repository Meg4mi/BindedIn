﻿<%@ Page Title="Page d'accueil" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="BindedIn._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   

    <%--<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetUtilisateurs" TypeName="Business.UtilisateurService">
    </asp:ObjectDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
    <ItemTemplate>
    <%#Eval("Nom") %> , <%#Eval("Prenom") %><br />
    </ItemTemplate>
    </asp:Repeater>   --%>
    <asp:Label ID="Label1" runat="server" Text="Favorite Movie :"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="ButUpdate" runat="server" onclick="ButUpdate_Click" 
        Text="Update" />
&nbsp;

</asp:Content>

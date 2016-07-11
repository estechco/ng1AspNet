<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.pas" Inherits="ng1AspNet._Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <script>
        angular.element(document).ready(function() {
          var myDiv = document.getElementById("divTest");
          angular.bootstrap(myDiv, ["ng1AspNet.MyApp"]);
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    Some content
  <!--
    <my-app>Loading...</my-app>
  -->
    <div id="divTest">
        <my-app id="testName"></my-app>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="server">
    <script type="text/javascript" src="js/Components/MyApp/myApp.directive.js"></script>
</asp:Content>

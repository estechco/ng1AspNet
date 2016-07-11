<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.pas" Inherits="ng1AspNet.Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <script>
        angular.element(document).ready(function() {
          var myDiv = document.getElementById("divTest2");
          angular.bootstrap(myDiv, ["ng1AspNet.MyApp2"]);
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <div id="divTest2" ng-controller="myApp2Controller as al">
        {{al.name}}
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="server">
    <script type="text/javascript" src="js/Components/MyApp2/myApp2.module.js"></script>
    <script type="text/javascript" src="js/Components/MyApp2/myApp2.factory.js"></script>
    <script type="text/javascript" src="js/Components/MyApp2/myApp2.controller.js"></script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.pas" Inherits="ng1AspNet._Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <script>
        angular.element(document).ready(function() {
          var myDiv = document.getElementById("divTest");
          angular.bootstrap(myDiv, ["ng1AspNet.MyApp"]);

          var myDiv = document.getElementById("divTest2");
          angular.bootstrap(myDiv, ["ng1AspNet.DatePicker"]);
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
    <div id="divTest2">
        <date-picker wrap="date_wrapper input-group" sdf="sdf" ph="To Date" entry="criteria.dt"/>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphFooter" runat="server">
    <script type="text/javascript" src="js/Components/MyApp/myApp.directive.js"></script>
    <script type="text/javascript" src="js/Components/DatePicker/datePicker.directive.js"></script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wizard2.aspx.cs" Inherits="MasterSoftMachineTest.wizard2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div id="wizard">
        <h2>Personal Information</h2>
        <section>
            <label>First Name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            <label>Last Name:</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
        </section>
        <h2>Address Information</h2>
        <section>
            <label>Address:</label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
        </section>
        <h2>Photo Upload and Signature Capture</h2>
        <section>
            <label>Photo:</label>
            <asp:FileUpload ID="filePhoto" runat="server" CssClass="form-control"></asp:FileUpload>
            <label>Signature:</label>
            <asp:FileUpload ID="fileSignature" runat="server" CssClass="form-control"></asp:FileUpload>
        </section>
        <h2>Summary</h2>
        <section>
            <asp:Button ID="btnGeneratePDF" runat="server" Text="Generate PDF" CssClass="btn btn-success" />
        </section>
    </div>
    <script>
        
        $(document).ready(function () {
            $("#wizard").steps({
                headerTag: "h2",
                bodyTag: "section",
                transitionEffect: "slideLeft",
                onStepChanging: function (event, currentIndex, newIndex) {
                    // Add custom step validation
                    return true;
                },
                onFinished: function (event, currentIndex) {
                    $("#wizardForm").submit();
                }
            });
        });
    </script>
   

</asp:Content>

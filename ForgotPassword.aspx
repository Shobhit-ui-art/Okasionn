<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container">
        <div class="form-horizontal">
            <h2>Recover Password</h2>
            <br />
            <h3>Please enter your E-mail address , we will send you the recovery link for your Account. </h3>
            <div class="form-group">
                <asp:Label ID="lblemail" cssclass="col-md-2" runat="server" Text="Enter your e-mail address"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtemail" cssclass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is required" ControlToValidate="txtemail" cssclass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnreset" cssclass="btn btn-default" runat="server" Text="Send" OnClick="btnreset_Click" />
                    <asp:Label ID="lblmsg" runat="server" cssclass="table-success"></asp:Label>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


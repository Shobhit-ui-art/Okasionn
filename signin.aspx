<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Okasion-Sign In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="keywords" content="Okasion,Event management,Wedding planner,Corporate event planner">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="resources/css/Custome.css" rel="stylesheet">
<link href="css/chocolat.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- web-fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="//fonts.googleapis.com/css?family=Niconne" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
         <!-- header -->
	<div class="header">
		<div class="container">
			<div class="header-w3left">
				<p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>  +012-333-4444</p>
			</div>
			<div class="header-w3right">
				<ul>
					<li><a href="mailto:okasion.eventplanner2021@gmail.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> okasion.eventplanner2021@gmail.com</a></li>
					<li>|</li>
					<li><a class="scroll" href="#contact">Contact</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header -->

        <!---Sign in--->
        <div class="container">
            <div class="form-horizontal">
                <hr />
                <h2>Login Form</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" Cssclass="col-md-2 control-label" runat="server" Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="uname" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter username" ControlToValidate="uname" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" Cssclass="col-md-2 control-label" runat="server" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="pass" class="form-control" textmode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" ControlToValidate="pass" CssClass="text-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" text="Remember me" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="btnlogin" CssClass="btn-success" runat="server" Text="Login&raquo;" OnClick="btnlogin_Click" />
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="Label3" runat="server" Text="Don't have an account?"></asp:Label>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="lblerror" CssClass="text-danger" runat="server" ></asp:Label>
                    </div>
                </div>
            </div>
        </div>

     <footer class ="footer-pos">
            <div class="container">
                <p class ="pull-right"><a href="#">xBack to top</a></p>
                <p>2021&copy;Okasion.in &middot; <a href ="index.html">Home</a>&middot;<a href="#">About</a>&middot;</a><a href="#">Contacts</a>&middot;</a></p>
            </div>
     </footer>
    </form>
</body>
</html>

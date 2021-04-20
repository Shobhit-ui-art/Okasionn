<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Okasion-Login</title>
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
<!-- //web-fonts --> 
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
      
          <!---Signup page--->
        <div class="center-page">
            <label class="col-xl-11">Full Name:</label>
            <div class="col-xl-11">
            <asp:TextBox ID="name" runat="server" Class="form-control" placeholder="Enter your Name"></asp:TextBox>
             <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Name not valid."></asp:RequiredFieldValidator>

            </div>
            <label class="col-xl-11">Username:</label>
            <div class="col-xl-11">
            <asp:TextBox ID="uname" runat="server" Class="form-control" placeholder="Enter your Username"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator2" runat="server" ControlToValidate="uname" ErrorMessage="Username not valid."></asp:RequiredFieldValidator>
               
            </div>
            <label class="col-xl-11">Email:</label>
            <div class="col-xl-11">
            <asp:TextBox ID="email" runat="server" Class="form-control" placeholder="Enter your Email"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Email not valid."></asp:RequiredFieldValidator>
            </div>

            <label class="col-xl-11">Mobile No.:</label>
            <div class="col-xl-11">
            <asp:TextBox ID="mob" runat="server" Class="form-control" placeholder="Enter your Mobile Number"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator6" runat="server" ControlToValidate="mob" ErrorMessage="Phone No.not valid."></asp:RequiredFieldValidator>
            </div>
            <label class="col-xl-11">New Password:</label>
            <div class="col-xl-11">
            <asp:TextBox ID="npass" runat="server" Class="form-control" TextMode="Password" placeholder="Enter new Password"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator4" runat="server" ControlToValidate="npass" ErrorMessage="Password not valid."></asp:RequiredFieldValidator>
            </div>
            <label class="col-xl-11">Confirm Password:</label>
            <div class="col-xl-11">
            <asp:TextBox ID="cpass" runat="server" Class="form-control" TextMode="Password" placeholder="Enter password again"></asp:TextBox> 
            <asp:RequiredFieldValidator CssClass="alert" ID="RequiredFieldValidator5" runat="server" ControlToValidate="cpass" ErrorMessage="C password not valid."></asp:RequiredFieldValidator>
            </div>
            <label class="col-xl-11"></label>
            <div class="col-xl-11">
                <asp:Button ID="signup" class="btn btn-success" runat="server" Text="Sign Up" OnClick="signup_Click" />
            </div>
        </div>
        <!---Signup page ends--->



        
        <footer class ="footer-pos">
            <div class="container">
                <p class ="pull-right"><a href="#">xBack to top</a></p>
                <p>2021&copy;Okasion.in &middot; <a href ="index.html">Home</a>&middot;<a href="#">About</a>&middot;</a><a href="#">Contacts</a>&middot;</a></p>
            </div>
        </footer>




    </form>
    
</body>
</html>

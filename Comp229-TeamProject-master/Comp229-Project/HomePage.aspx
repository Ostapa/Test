<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Comp229_Project.HomePage" %>

<%-- © LanTap Clinic - Aslan Mirsakiyev, Ostap Hamarnyk--%>
<%-- Comp229 Team Project --%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="banner" class="carousel-banner" data-ride="carousel">
        <!-- buttons to switch between the slides -->
        <ol class="carousel-indicators">
            <li data-target="#banner" data-slide-to="0" class="active"></li>
            <li data-target="#banner" data-slide-to="1"></li>
            <li data-target="#banner" data-slide-to="2"></li>
        </ol>

        <!-- slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="Assets/Images/banner_chilld_care.jpg" alt="Clinic" />
                <div class="carousel-caption">
                    <p class="lead">Our clinic is considered to be one of the best in Canada</p>
                </div>
            </div>
            <div class="item">
                <img src="Assets/Images/test1.jpg" alt="Clinic" /> <!-- change images here -->
                <div class="carousel-caption">
                    <p class="lead">Test of caption 2</p>
                </div>
            </div>
            <div class="item">
                <img src="Assets/Images/test2.jpg" alt="Clinic" />
                <div class="carousel-caption">
                    <p class="lead">Test of caption 3</p>
                </div>
            </div>
        </div>

        <!-- Buttons(Controls) to switch between slides -->
        <a class="left carousel-control" href="#banner" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#banner" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-7 col-sm-6 col-xs-12 well"> <!-- think were to put login if sx screen -->
                <h1 class="display-1">LanTap Clinic</h1>
                <p class="lead">We do our best to keep you healthy.</p>
                <!-- add more text here, maybe iFrame with news, will see -->
            </div>
            <div class="col-md-4 col-md-offset-1 col-sm-6 col-xs-12 well">
                <!-- login form goes here -->
                <div class="form-group"><!-- need to add validators here -->
                    <label for="txtUsername">Username:</label>                 
                    <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" /> 
                     <div>
                         <asp:RequiredFieldValidator ID="txtUsernameReqFieldValidator"
                                                    runat="server"
                                                    CssClass="validationError"
                                                    ControlToValidate="txtUsername"
                                                    ErrorMessage="* Please enter username" 
                                                    required="true"/>
                        </div>
                   
                    <label for="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" />
                    <div>
                         <asp:RequiredFieldValidator ID="txtPasswordReqFieldValidator"
                                                    runat="server"
                                                    CssClass="validationError"
                                                    ControlToValidate="txtPassword"
                                                    ErrorMessage="* Please enter password" 
                                                    required="true"/>
                    </div>
                    <small class="text-muted"><a href="#" class="unstyled">Forgot password?</a></small><br />  
                    <asp:Button ID="loginBtn" CssClass="btn btn-info" Text="Login" runat="server" />
                    

                    
                </div>
                <p class="lead">Do not have an account yet? Join us today!</p>
               <!-- form to register -->
                 <div class="form-group">
                     <label for="txtNewUsername">Username</label>
                     <asp:TextBox ID="txtNewUsername" CssClass="form-control" runat="server" />
                       <div>
                         <asp:RequiredFieldValidator ID="txtNewUsernameReqFieldValidator"
                                                    runat="server"
                                                    CssClass="validationError"
                                                    ControlToValidate="txtNewUsername"
                                                    ErrorMessage="* Please enter username" 
                                                    required="true"/>
                        </div>
                     <label for="newPassword">Password</label>
                     <asp:TextBox ID="newPassword" CssClass="form-control" TextMode="Password" runat="server" />
                       <div>
                         <asp:RequiredFieldValidator ID="newPasswordReqFieldValidator"
                                                    runat="server"
                                                    CssClass="validationError"
                                                    ControlToValidate="newPassword"
                                                    ErrorMessage="* Please enter password" 
                                                    required="true"/>
                    </div>
                     <label for="confirmPassword">Confirm Password</label>
                     <asp:TextBox ID="confirmPassword" CssClass="form-control" TextMode="Password" runat="server" />
                      <div>
                         <asp:CompareValidator ID="newPasswordCompareValidator" 
                                             runat="server" 
                                             ControlToValidate="newPassword"
                                             CssClass="validationError"
                                             ControlToCompare="confirmPassword"
                                             ErrorMessage="Passwords don't match" 
                                             ToolTip="Password must be the same" />
                    </div>
                     <asp:Button ID="registerBtn" CssClass="btn btn-info" Text="Create an account" runat="server" />
                </div>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-md-10 col-md-offset-1 col-sm-6 col-sm-offset-3 col-xs-12">
                <img src="Assets/Images/lantap_logo.png" alt="LanTap Logo" />
            </div>
            <div class="col-md-12">
                <h1 class="display-2 ">LanTap Clinic</h1>
                <p class="lead">Lantap clinic is downtown’s Toronto newest medical health care centre.<br /> It is one of the most popular due to its excellent customer service, great number of fully-qualified therapists and location.
                <p class="lead"> Thousands of customers attend clinic every day to get treatment, professional advice and medical support</p>
            </div>
        </div>  
    </div>

</asp:Content>

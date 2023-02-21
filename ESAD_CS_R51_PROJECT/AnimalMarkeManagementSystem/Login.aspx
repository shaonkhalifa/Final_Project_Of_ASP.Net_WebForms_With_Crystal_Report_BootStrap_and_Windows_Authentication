<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AnimalMarkeManagementSystem.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-warning" Visible="false">
        <h5>Login Faild!!</h5>
        <p>User Faild to Login!!</p>
    </asp:Panel>
    <section class="vh-80 ">
        <div class="container pt-2 pb-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9  col-xl-5">
                    <div class="card bg-info text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 ">

                            <div class="mb-md-3 mt-md-3 pb-3">
                                <div class="text-center mb-4">
                                    <h2 class="fw-bold mb-4 text-uppercase">Login</h2>
                                </div>

                                <p class="text-white mb-4 ml-4"></p>

                                <div class="form-outline form-white mb-2">
                                    <asp:TextBox ID="txtloginemail" class="form-control form-control-md" placeholder="Username " runat="server"></asp:TextBox>
                                    <asp:Label ID="Label1" class="form-label" For="txtloginemail" runat="server" Text="Username"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter User Name!!" ControlToValidate="txtloginemail" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-outline form-white mb-2">
                                    <asp:TextBox ID="txtloginPassword" class="form-control form-control-md" TextMode="Password" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label2" runat="server" class="form-label" for="txtloginPassword" Text="Label">Password</asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password!!" ControlToValidate="txtloginPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="text-center">
                                    <p class="small mb-3 pb-md-2"><a class="text-white " href="#!">Forgot password?</a></p>

                                    <asp:Button ID="btnLogin" class="btn btn-outline-light btn-md px-5 " runat="server" Text="Login" OnClick="btnLogin_Click" />
                                </div>


                                <div class="d-flex justify-content-center text-center mt-4 pt-1">
                                    <a href="#!" class="text-white"><i class="fa fa-facebook-f"></i></a>
                                    <a href="#!" class="text-white"><i class="fa fa-twitter  mx-4 px-2"></i></a>
                                    <a href="#!" class="text-white"><i class="fa fa-google "></i></a>
                                </div>

                            </div>

                            <div>
                                <p class="mb-0 text-center">
                                    Don't have an account? <a href="FrnRegister.aspx" class="text-white fw-bold">Register</a>
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

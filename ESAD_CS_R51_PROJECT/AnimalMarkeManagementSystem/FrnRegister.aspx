<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrnRegister.aspx.cs" Inherits="AnimalMarkeManagementSystem.FrnRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <div class=" mb-2 pb-5">
        <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-warning" Visible="false">
            <h5>Registration Faild!!</h5>
            <p>Faild to register User!!</p>
        </asp:Panel>
        <section class="vh-100  mt-2 ">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-9 col-xl-6">
                            <div class="card" style="border-radius: 15px;">
                                <div class="card-body p-5">
                                    <h2 class="text-uppercase text-center mb-5">Create an account</h2>
                                    <div class="form-outline mb-3">
                                        <asp:TextBox ID="txtName" class="form-control form-control-md" placeholder="Md.Shaon Khalifa" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label1" class="form-label p-2" for="txtName" runat="server" Text="Label">Your Name</asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your Name!!" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-outline mb-3">
                                        <asp:TextBox ID="txtUserName" class="form-control form-control-md" placeholder="Shaon_Khalifa" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label2" class="form-label p-2" for="txtUserName" runat="server" Text="Label">User Name</asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter User Name!!" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-outline mb-3">
                                        <asp:TextBox ID="txtmail" class="form-control form-control-md" placeholder="shaon@gmail.com" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label3" class="form-label p-2" for="txtmail" runat="server" Text="Label">Email</asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Emter Email!!" ControlToValidate="txtmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Put Valid Email!!" ControlToValidate="txtmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>

                                    <div class="form-outline mb-3">
                                        <asp:TextBox ID="txtpassword" TextMode="Password" class="form-control form-control-md" runat="server"></asp:TextBox>

                                        <asp:Label ID="Label4" class="form-label p-2" for="txtpassword" runat="server" Text="Label">Password</asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password Is Required!!" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-outline mb-3">
                                        <asp:TextBox ID="txtrepertpassword" TextMode="Password" class="form-control form-control-md" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label5" class="form-label p-2" for="txtrepertpassword" runat="server" Text="Label">Repeat Your Password</asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter password Again!!" ControlToValidate="txtrepertpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Does not Password !!" ControlToCompare="txtpassword" ControlToValidate="txtrepertpassword" ForeColor="Red"></asp:CompareValidator>
                                    </div>

                                    <div class="form-check d-flex justify-content-center mb-2">
                                        <input class="form-check-input me-2" type="checkbox" value="" id="chckboxInReg" />
                                        <label class="form-check-label" for="chckboxInReg">
                                            I agree all statements in <a href="Terms.aspx" class="text-body"><u>Terms of service</u></a>
                                        </label>
                                    </div>

                                    <div class="d-flex justify-content-center">
                                        <asp:Button ID="btnRegister" class="btn btn-success btn-block btn-md gradient-custom-4 text-white " runat="server" OnClick="btnRegister_Click" Text="Register" />
                                    </div>

                                    <p class="text-center text-muted mt-3 mb-0">
                                        Have already an account? <a href="Login.aspx"
                                            class="fw-bold text-body"><u>Login here</u></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuyerEntry.aspx.cs" Inherits="AnimalMarkeManagementSystem.BuyerEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="row justify-content-center mt-4">
        <div class="display-4 text-center mb-4 fw-semibold text-decoration-underline">
            Buyer Info Entry Form
        </div>
        <div class="col-8">
            <div class="d-flex justify-content-end ms-4 mb-2">
                <a href="BuyerShow.aspx" class="btn btn-light btn-sm">Go to Buyer List</a>
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" CssClass="alert alert-danger alert-dismissible fade show" HeaderText="Full-Fill these options" ShowMessageBox="false" />
            <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table  table-hover table-bordered table-sm ms-2" DefaultMode="Insert" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="BuyerDS" ForeColor="Black" GridLines="None" OnItemInserting="DetailsView1_ItemInserting" OnItemInserted="DetailsView1_ItemInserted">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                
                <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <Fields>
                    <asp:TemplateField HeaderText="buyerId" SortExpression="buyerId" Visible="false">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("buyerId") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("buyerId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" HeaderStyle-CssClass="fw-bold ps-4" SortExpression="name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtName" CssClass="form-control" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Bitrh" HeaderStyle-CssClass="fw-bold ps-4" SortExpression="dob">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtdob23" runat="server" Text='<%# Bind("dob") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtdob" CssClass="form-control" TextMode="Date" runat="server" Text='<%# Bind("dob","{0:yyyy-MM-dd}") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Date of Birth!!" ControlToValidate="txtdob" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Dob should Before 2011!!" ControlToValidate="txtdob" ForeColor="Red" Operator="LessThan" Type="Date" ValueToCompare="01-01-2011"></asp:CompareValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Date of Birth Between 1950 to 2010" ControlToValidate="txtdob" ForeColor="Red" MaximumValue="01-01-2010" MinimumValue="01-01-1950" Type="Date"></asp:RangeValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("dob") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender" HeaderStyle-CssClass="fw-bold ps-4" SortExpression="gender">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("gender") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:RadioButton ID="rbtnMale" Text="Male" GroupName="gender" runat="server" Value="Male" Checked='<%# Bind("gender") %>' />
                            <asp:RadioButton ID="rbtnFemale" Text="Femele" Value="Female" GroupName="gender" runat="server" />
                            <%--   <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("gender") %>' />--%>
                            <asp:CustomValidator runat="server" ErrorMessage="Select Gender!!" ForeColor="Red" OnServerValidate="Unnamed1_ServerValidate"></asp:CustomValidator>
                        </InsertItemTemplate>

                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("gender") %>' Enabled="false" />
                        </ItemTemplate>

                        <HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" HeaderStyle-CssClass="fw-bold ps-4" SortExpression="phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Text='<%# Bind("phone") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Phone Number!!" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Phone Number!!!" ControlToValidate="txtPhone" ForeColor="Red" ValidationExpression="^(?:\+?88|0088)?01[15-9]\d{8}$"></asp:RegularExpressionValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" HeaderStyle-CssClass="fw-bold ps-4" SortExpression="email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Email Address!!" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Email Address!!!" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Photo" SortExpression="photo" HeaderStyle-CssClass="fw-bold ps-4">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("photo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:FileUpload ID="fuUplode" runat="server" CssClass="form-control-sm" />
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                            <%--  <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("photo") %>'></asp:TextBox>--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Picture!!" ControlToValidate="fuUplode" ForeColor="Red"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("photo") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Addres" SortExpression="addres" HeaderStyle-CssClass="fw-bold ps-4">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("addres") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server" Text='<%# Bind("addres") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Address!!" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("addres") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="">
                        <InsertItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-outline-success ms-6 " ></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-outline-warning"></asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="Tan" />
                
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:ObjectDataSource ID="BuyerDS" runat="server" DataObjectTypeName="AnimalMarkeManagementSystem.Models.BuyerInfo" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="infos" TypeName="AnimalMarkeManagementSystem.Dal.BuyerInfoGetWay" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </div>
    <div>

    </div>
    <br />
    <br />
    <br />
    <div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

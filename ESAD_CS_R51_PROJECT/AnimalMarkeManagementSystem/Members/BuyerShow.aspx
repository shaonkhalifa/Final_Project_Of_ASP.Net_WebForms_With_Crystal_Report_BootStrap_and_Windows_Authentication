<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BuyerShow.aspx.cs" Inherits="AnimalMarkeManagementSystem.BuyerShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="row justify-content-center mt-4">
        <div class="display-4 text-center mb-4 fw-semibold text-decoration-underline">
            Buyer Info View Form
        </div>
        <div class="col-11">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover table-bordered table-sm ms-2" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ShowBuyerDS" GridLines="Horizontal" OnRowUpdating="GridView1_RowUpdating">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:TemplateField HeaderText="Id" SortExpression="buyerId" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                             <asp:Label ID="Label1" Visible="true" CssClass="form-control-sm" runat="server" Text='<%# Bind("buyerId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate >
                            <asp:Label ID="Label1" Visible="true" runat="server" Text='<%# Bind("buyerId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="name" HeaderStyle-ForeColor="White" >
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" Width="150px" CssClass="form-control-sm " runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Birth" SortExpression="dob" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" CssClass="form-control-sm" TextMode="Date" runat="server" Text='<%# Bind("dob","{0:yyyy-MM-dd}") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("dob","{0:yyyy-MM-dd}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="gender" SortExpression="gender" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                              <asp:RadioButton ID="rbtnMale" Checked='<%# Bind("gender") %>' Text="Male" Value="Yes" GroupName="gender" runat="server"  />
                            <asp:RadioButton ID="rbtnFemale"  Text="Female" Value="No" GroupName="gender" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <%# (Boolean.Parse(Eval("Gender").ToString())) ? "Male" : "Female" %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="phone"  HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" Width="150px" CssClass="form-control-sm" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="email"  HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" CssClass="form-control-sm" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Photo" SortExpression="photo"  HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                         <asp:FileUpload ID="fuUploder" Width="150px" runat="server" CssClass="form-control-sm" />
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="32" Width="32" ImageUrl='<%#  Eval("photo","~/Images/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Addres" SortExpression="addres"  HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" CssClass="form-control-sm" runat="server" Text='<%# Bind("addres") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("addres") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False" HeaderStyle-Width="100px">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-success btn-sm"><i class="fa fa-refresh"></i></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="true" CommandName="Cancel" CssClass="btn btn-warning btn-sm" Text="Cancel"><i class="fa fa-times"></i></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>

                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="true" CommandName="Edit" CssClass="btn btn-primary btn-sm " Text="Edit"><i class="fa fa-edit"></i></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="true" CommandName="Delete" CssClass="btn btn-danger btn-sm" Text="Delete"><i class="fa fa-trash"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>

            <asp:ObjectDataSource ID="ShowBuyerDS" runat="server" DataObjectTypeName="AnimalMarkeManagementSystem.Models.BuyerInfo" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="infos" TypeName="AnimalMarkeManagementSystem.Dal.BuyerInfoGetWay" UpdateMethod="Update"></asp:ObjectDataSource>

             <div class="d-flex justify-content-end ms-4 mb-2">
                <a href="BuyerEntry.aspx" class="btn btn-light btn-sm">Back to Buyer Entry</a>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

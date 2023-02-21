<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sellerList.aspx.cs" Inherits="AnimalMarkeManagementSystem.sellerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="text-center">
        <h3 class="display-4 fw-semibold">Seller List</h3>
    </div>
    <div class="row justify-content-center">
        <div class="col-10 ">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover table-bordered table-sm ms-2" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="seId" DataSourceID="SellerListShow" GridLines="Horizontal" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="seId" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("seId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("seId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="sName" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("sName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("sName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender" SortExpression="gender" HeaderStyle-ForeColor="White" HeaderStyle-Width="150px">
                        <EditItemTemplate>
                            <asp:RadioButton ID="rbtnMale" Checked='<%# Bind("gender") %>' Text="Male" Value="Yes" GroupName="gender" runat="server" />
                            <asp:RadioButton ID="rbtnFemale" Text="Female" Value="No" GroupName="gender" runat="server" />
                            <%--     <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("gender") %>' />--%>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <%# (Boolean.Parse(Eval("Gender").ToString())) ? "Male" : "Female" %>
                            <%--<asp:RadioButton ID="rbtnMale" Checked=<%# Bind("gender") %> Text="Male" Value="Yes" GroupName="gender" runat="server"  />
                            <asp:RadioButton ID="rbtnFemale" Text="Female" Value="No" GroupName="gender" runat="server" />--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="phone" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address" SortExpression="sAddress" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("sAddress") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("sAddress") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Photo" SortExpression="photo" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:FileUpload ID="fuUploder" runat="server" CssClass="form-control" />
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                            <%-- <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("photo") %>'></asp:TextBox>--%>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img src='<%# Eval("seId","/Members/DbImageHandler.ashx?seId={0}") %>' width="50" />
                            <%--  <asp:Image ID="Image1" runat="server" Height="32" Width="32" ImageUrl='<%# Eval("photo","~/Images/{0}") %>' />--%>
                            <%--     <asp:Label ID="Label1" runat="server" Text='<%# Bind("photo") %>'></asp:Label>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False" HeaderStyle-Width="100px">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-success btn-sm"><i class="fa fa-refresh"></i></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-warning btn-sm" Text="Cancel"><i class="fa fa-times"></i></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>

                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-primary btn-sm " Text="Edit"><i class="fa fa-edit"></i></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btn btn-danger btn-sm" Text="Delete"><i class="fa fa-trash"></i></asp:LinkButton>
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
            <asp:SqlDataSource ID="SellerListShow" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblSeller] WHERE [seId] = @seId" InsertCommand="INSERT INTO [tblSeller] ([sName], [gender], [phone], [sAddress], [photo]) VALUES (@sName, @gender, @phone, @sAddress, @photo)" SelectCommand="SELECT * FROM [tblSeller]" UpdateCommand="UPDATE [tblSeller] SET [sName] = @sName, [gender] = @gender, [phone] = @phone, [sAddress] = @sAddress, [photo] = @photo WHERE [seId] = @seId">
                <DeleteParameters>
                    <asp:Parameter Name="seId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sName" Type="String" />
                    <asp:Parameter Name="gender" Type="Boolean" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="sAddress" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sName" Type="String" />
                    <asp:Parameter Name="gender" Type="Boolean" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="sAddress" Type="String" />
                    <asp:Parameter Name="photo" DbType="Binary" />
                    <asp:Parameter Name="seId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
              <div class="d-flex justify-content-end ms-4 mb-2">
                <a href="frmSellerEntry.aspx" class="btn btn-light btn-sm">Back to Seller Entry</a>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmSellerEntry.aspx.cs" Inherits="AnimalMarkeManagementSystem.frmSellerEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="display-4 text-center mb-4 fw-semibold text-decoration-underline">
        Seller Entry
    </div>
    <div class="row justify-content-center">
        <div class="col-9 ">
            <div class="d-flex justify-content-end ms-4 mb-2">
                <a href="sellerList.aspx" class="btn btn-light btn-sm">Go to Seller List</a>
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="Red" CssClass="alert alert-danger alert-dismissible fade show" HeaderText="Full-Fill these options" ShowMessageBox="false" />
            <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table  table-hover table-bordered table-sm ms-2" DefaultMode="Insert" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="seId" DataSourceID="SellerDS" GridLines="Horizontal" OnItemInserting="DetailsView1_ItemInserting">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:TemplateField HeaderText="seId" InsertVisible="False" SortExpression="seId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("seId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("seId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="sName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtName" CssClass="form-control" runat="server" Text='<%# Bind("sName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Seller Name!!" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("sName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender" SortExpression="gender" ControlStyle-CssClass="form-check-inline">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("gender") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:RadioButton ID="rbtnMale" CssClass="form-check-input" Text="Male" GroupName="gender" runat="server" Value="Male" Checked='<%# Bind("gender") %>' />
                            <asp:RadioButton ID="rbtnFemale" Text="Femele" Value="Female" GroupName="gender" CssClass="form-check-input" runat="server" />
                            <%--  <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("gender") %>' />--%>

                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Choose Gender!!" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("gender") %>' Enabled="false" />
                        </ItemTemplate>

                        <ControlStyle CssClass="form-check-inline"></ControlStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Phone Number!!" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Phone Number!!! " ControlToValidate="txtPhone" ForeColor="Red" ValidationExpression="^(?:\+?88|0088)?01[15-9]\d{8}$"></asp:RegularExpressionValidator>
                         
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address" SortExpression="sAddress">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("sAddress") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtAddres" CssClass="form-control" runat="server" Text='<%# Bind("sAddress") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Address!!" ControlToValidate="txtAddres" ForeColor="Red"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("sAddress") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Photo" SortExpression="photo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("photo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:FileUpload ID="fuUploder" CssClass="form-control" runat="server" />
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                            <%--    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("photo") %>'></asp:TextBox>--%>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("photo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-outline-success "></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-outline-warning"></asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SellerDS" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblSeller] WHERE [seId] = @seId" InsertCommand="INSERT INTO [tblSeller] ([sName], [gender], [phone], [sAddress], [photo]) VALUES (@sName, @gender, @phone, @sAddress, @photo)" SelectCommand="SELECT * FROM [tblSeller]" UpdateCommand="UPDATE [tblSeller] SET [sName] = @sName, [gender] = @gender, [phone] = @phone, [sAddress] = @sAddress, [photo] = @photo WHERE [seId] = @seId">
                <DeleteParameters>
                    <asp:Parameter Name="seId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sName" Type="String" />
                    <asp:Parameter Name="gender" Type="Boolean" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="sAddress" Type="String" />
                    <asp:Parameter Name="photo" DbType="Binary" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sName" Type="String" />
                    <asp:Parameter Name="gender" Type="Boolean" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="sAddress" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                    <asp:Parameter Name="seId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <br />
    <br />
    <br />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

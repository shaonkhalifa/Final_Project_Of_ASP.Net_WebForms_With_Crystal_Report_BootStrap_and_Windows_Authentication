<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductEntry.aspx.cs" Inherits="AnimalMarkeManagementSystem.ProductEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="row justify-content-center mt-4">
        <div class="display-4 text-center mb-4 fw-semibold text-decoration-underline">
            Product Entry Form
        </div>
        <div class="col-7">
            <div class="d-flex justify-content-end ms-4 mb-2">
                <a href="ProductDetails.aspx" class="btn btn-light btn-sm">Go to Product List</a>
            </div>
            <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table  table-hover table-bordered table-sm ms-2" DefaultMode="Insert" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="spdId" DataSourceID="SqlDProductDetails" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="spdId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("spdId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("spdId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Seller Name" SortExpression="seId" HeaderStyle-CssClass="fw-bold ps-4">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("seId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DDlSellerInfo" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="DSSellerInfo" DataTextField="sName" DataValueField="seId" SelectedValue='<%# Bind("seId") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="DSSellerInfo" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblSeller] WHERE [seId] = @seId" InsertCommand="INSERT INTO [tblSeller] ([sName]) VALUES (@sName)" SelectCommand="SELECT [seId], [sName] FROM [tblSeller]" UpdateCommand="UPDATE [tblSeller] SET [sName] = @sName WHERE [seId] = @seId">
                                <DeleteParameters>
                                    <asp:Parameter Name="seId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="sName" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="sName" Type="String" />
                                    <asp:Parameter Name="seId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <%--  <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("seId") %>'></asp:TextBox>--%>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("seId") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Seller Location" SortExpression="slId" HeaderStyle-CssClass="fw-bold ps-4">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("slId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlSellerLocation" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDsLocation" DataTextField="BlockName" DataValueField="lId" SelectedValue='<%# Bind("slId") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDsLocation" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblLocation] WHERE [lId] = @lId" InsertCommand="INSERT INTO [tblLocation] ([BlockName]) VALUES (@BlockName)" SelectCommand="SELECT [lId], [BlockName] FROM [tblLocation]" UpdateCommand="UPDATE [tblLocation] SET [BlockName] = @BlockName WHERE [lId] = @lId">
                                <DeleteParameters>
                                    <asp:Parameter Name="lId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="BlockName" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="BlockName" Type="String" />
                                    <asp:Parameter Name="lId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <%--   <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("slId") %>'></asp:TextBox>--%>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("slId") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Animale Type" SortExpression="atId" HeaderStyle-CssClass="fw-bold ps-4">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("atId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlAnimalType" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="AnimalTyepDS" DataTextField="animalName" DataValueField="atId" SelectedValue='<%# Bind("atId") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="AnimalTyepDS" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblAnimalType] WHERE [atId] = @atId" InsertCommand="INSERT INTO [tblAnimalType] ([animalName]) VALUES (@animalName)" SelectCommand="SELECT * FROM [tblAnimalType]" UpdateCommand="UPDATE [tblAnimalType] SET [animalName] = @animalName WHERE [atId] = @atId">
                                <DeleteParameters>
                                    <asp:Parameter Name="atId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="animalName" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="animalName" Type="String" />
                                    <asp:Parameter Name="atId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <%--  <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("atId") %>'></asp:TextBox>--%>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("atId") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quintity" SortExpression="quintity" HeaderStyle-CssClass="fw-bold ps-4">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("quintity") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" CssClass="form-control-sm" runat="server" Text='<%# Bind("quintity") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Quintity!!" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Put Numberic Value" ControlToValidate="TextBox4" ForeColor="Red" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("quintity") %>'></asp:Label>
                        </ItemTemplate>

<HeaderStyle CssClass="fw-bold ps-4"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-outline-success ms-6 "></asp:LinkButton>
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
            <asp:SqlDataSource ID="SqlDProductDetails" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblSellerProductDetails] WHERE [spdId] = @spdId" InsertCommand="INSERT INTO [tblSellerProductDetails] ([seId], [slId], [atId], [quintity]) VALUES (@seId, @slId, @atId, @quintity)" SelectCommand="SELECT *,l.lId,l.BlockName,a.atId,a.animalName FROM tblSellerProductDetails sp inner join tblSeller s on sp.seId = s.seId inner join tblLocation l on sp.slId= l.lId
                    inner join tblAnimalType a on a.atId=sp.atId"
                UpdateCommand="UPDATE [tblSellerProductDetails] SET [seId] = @seId, [slId] = @slId, [atId] = @atId, [quintity] = @quintity WHERE [spdId] = @spdId">
                <DeleteParameters>
                    <asp:Parameter Name="spdId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="seId" Type="Int32" />
                    <asp:Parameter Name="slId" Type="Int32" />
                    <asp:Parameter Name="atId" Type="Int32" />
                    <asp:Parameter Name="quintity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="seId" Type="Int32" />
                    <asp:Parameter Name="slId" Type="Int32" />
                    <asp:Parameter Name="atId" Type="Int32" />
                    <asp:Parameter Name="quintity" Type="Int32" />
                    <asp:Parameter Name="spdId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

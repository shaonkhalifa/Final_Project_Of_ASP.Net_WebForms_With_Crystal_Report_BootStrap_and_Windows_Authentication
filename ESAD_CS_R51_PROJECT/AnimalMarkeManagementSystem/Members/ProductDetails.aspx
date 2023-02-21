<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="AnimalMarkeManagementSystem.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="row  col-md-2 mt-4 ms-4 ">
        <p class="form-label fw-3 text-center mb-2  fw-semibold text-decoration-underline">Choose a Seller</p>
        <asp:DropDownList ID="ddlSellerList" CssClass="form-control-sm " runat="server" AutoPostBack="True"  DataSourceID="SellerNameDS" DataTextField="sName" DataValueField="seId"></asp:DropDownList>
        <asp:SqlDataSource ID="SellerNameDS" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" SelectCommand="SELECT [sName], [seId] FROM [tblSeller]"></asp:SqlDataSource>
    </div>
    <div class="row justify-content-center mt-4"> 
        <p class="display-4 text-center mb-4 fw-semibold text-decoration-underline">Seller Product Details</p>
        <div class="col-7">
            <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table  table-hover table-bordered table-sm ms-2" AutoGenerateRows="False" CellPadding="3" DataKeyNames="spdId" DataSourceID="SellerProductDetails" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
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
                    <asp:TemplateField HeaderText="Seller Name" SortExpression="seId">
                        <EditItemTemplate>
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
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("seId") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("sName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Seller Location" SortExpression="slId">
                        <EditItemTemplate>
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
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("slId")%>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("BlockName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Animal Type" SortExpression="atId">
                        <EditItemTemplate>
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
                           <%-- <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("atId") %>'></asp:TextBox>--%>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("atId") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("animalName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quintity" SortExpression="quintity">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("quintity") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Quintity!!" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Put Numberic Value" ControlToValidate="TextBox4" ForeColor="Red" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("quintity") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("quintity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-outline-success"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-outline-warning"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-outline-primary"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-outline-danger"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />

            </asp:DetailsView>

            <asp:SqlDataSource ID="SellerProductDetails" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblSellerProductDetails] WHERE [spdId] = @spdId" InsertCommand="INSERT INTO [tblSellerProductDetails] ([seId], [slId], [atId], [quintity]) VALUES (@seId, @slId, @atId, @quintity)" SelectCommand="SELECT *,l.lId,l.BlockName,a.atId,a.animalName, s.sName FROM tblSellerProductDetails sp inner join tblSeller s on sp.seId = s.seId inner join tblLocation l on sp.slId= l.lId
                    inner join tblAnimalType a on a.atId=sp.atId WHERE sp.seId = @seId"
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlSellerList" Name="seId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="seId" Type="Int32" />
                    <asp:Parameter Name="slId" Type="Int32" />
                    <asp:Parameter Name="atId" Type="Int32" />
                    <asp:Parameter Name="quintity" Type="Int32" />
                    <asp:Parameter Name="spdId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div class="d-flex justify-content-end ms-4 mb-2">
                <a href="ProductEntry.aspx" class="btn btn-light btn-sm">Back to Product Entry</a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

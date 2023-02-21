<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="AnimalMarkeManagementSystem.Invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="row justify-content-center mt-4">
        <div class="display-4 text-center mb-4 fw-semibold text-decoration-underline">
            Invoice List
        </div>
        <div class="col-md-10 bg-info table table-info table-hover table-striped ">
            <asp:ListView ID="ListView1" runat="server" 
                SelectMethod="ListView1_GetData"
                InsertMethod="ListView1_InsertItem"
                UpdateMethod="ListView1_UpdateItem"
                ItemPlaceholderID="itemHolder"
                DeleteMethod="ListView1_DeleteItem"
                InsertItemPosition="LastItem"
                DataKeyNames="invoiceID"
                OnItemCommand="ListView1_ItemCommand"
                OnItemInserting="ListView1_ItemInserting"
            ItemType="AnimalMarkeManagementSystem.Models.tblInvoice"  >
                
                <ItemTemplate >
                     <tr>
                        <td><%# Eval("invoiceID") %></td>
                        <td><%# Eval("invoiceDate","{0:yyyy-MM-dd}") %></td>
                        <td><%# Eval("tblBuyer.buyerName") %></td>
                        <td><%# Eval("tblAnimalType.animalName") %></td>
                         <td><%# Eval("tblColor.cName") %></td>
                        <td><%# Eval("tblSeller.sName") %></td>
                        <td><%# Eval("price") %></td>
                         <td><%# Eval("commission") %></td>
                        <td >     
                         <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" CssClass="btn btn-outline-primary btn-sm" CausesValidation="false"><i class="fa fa-pencil"></i></asp:LinkButton>
                            <asp:LinkButton ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"><i class="fa fa-trash"></i></asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <EditItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblId" runat="server" Text='<%# Bind("invoiceID") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtInvoiceDate" TextMode="Date" CssClass="form-control" Text='<%# Bind("invoiceDate","{0:yyyy-MM-dd}") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                           
                             <asp:DropDownList ID="DDlBuyerName" CssClass="form-control-sm" runat="server" SelectedValue='<%# Bind("bId") %>' SelectMethod="ddlGetBuyerINfo" DataTextField="buyerName" DataValueField="bId" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="">----Select----</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAnimalType" CssClass="form-control-sm" runat="server" SelectedValue='<%# Bind("atId") %>' SelectMethod="ddlAnimalType" DataTextField="animalName" DataValueField="atId" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="">----Select----</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                         <td>
                              <asp:DropDownList ID="ddlColor" CssClass="form-control-sm" runat="server" SelectedValue='<%# Bind("cId") %>' SelectMethod="ddl_colorInfo" DataTextField="cName" DataValueField="cId" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="">----Select----</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                              <asp:DropDownList ID="ddlSellerList" CssClass="form-control-sm" runat="server" SelectedValue='<%# Bind("seId") %>' SelectMethod="ddl_sellerIno" DataTextField="sName" DataValueField="seId" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="">----Select----</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                           <td>
                              <asp:TextBox ID="txtPrice" CssClass="form-control" Text='<%# Bind("price") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                              <asp:TextBox ID="txtCommission" CssClass="form-control" Text='<%# Bind("commission") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:LinkButton ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-outline-success btn-sm" CausesValidation="false"><i class="fa fa-refresh"></i></asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-outline-warning btn-sm" CausesValidation="false"><i class="fa fa-times"></i></asp:LinkButton>
                          
                        </td>
                    </tr>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <tr>
                        <td>*</td>
                        <td>
                            <asp:TextBox ID="txtInvoiceDate" TextMode="Date" CssClass="form-control" Text='<%# Bind("invoiceDate") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                             <asp:DropDownList ID="DDlBuyerName" CssClass="form-control-sm" runat="server" SelectedValue='<%# Bind("bId") %>' SelectMethod="ddlGetBuyerINfo" DataTextField="buyerName" DataValueField="bId" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="">----Select----</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAnimalType" CssClass="form-control-sm" runat="server" SelectedValue='<%# Bind("atId") %>' SelectMethod="ddlAnimalType" DataTextField="animalName" DataValueField="atId" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="">----Select----</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                         <td>
                              <asp:DropDownList ID="DropDownList1" CssClass="form-control-sm" runat="server" SelectedValue='<%# Bind("cId") %>' SelectMethod="ddl_colorInfo" DataTextField="cName" DataValueField="cId" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="">----Select----</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                              <asp:DropDownList ID="DropDownList2" CssClass="form-control-sm" runat="server" SelectedValue='<%# Bind("seId") %>' SelectMethod="ddl_sellerIno" DataTextField="sName" DataValueField="seId" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="">----Select----</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                           <td>
                              <asp:TextBox ID="txtPrice" CssClass="form-control" Text='<%# Bind("price") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                              <asp:TextBox ID="txtCommission" CssClass="form-control" Text='<%# Bind("commission") %>' runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:LinkButton ID="btnInsert" runat="server" Text="Insert" CommandName="Insert" CssClass="btn btn-outline-primary btn-sm" CausesValidation="false" ><i class="fa fa-check-square"></i></asp:LinkButton>
                            <asp:LinkButton ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-outline-warning btn-sm" CausesValidation="false"><i class="fa fa-times"></i></asp:LinkButton>
                        </td>
                    </tr>
                </InsertItemTemplate>
                <LayoutTemplate>
                     <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Invoice ID</th>
                                <th>Date</th>
                                <th>Buyer Name</th>
                                <th>Animal Type</th>
                                <th>Color</th>
                                <th>Seller Name</th>
                                <th>Price</th>
                                <th>Commission</th>
                            </tr>
                        </thead>
                        <tbody id="itemHolder" runat="server"></tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblInvoice] WHERE [invoiceID] = @invoiceID" InsertCommand="INSERT INTO [tblInvoice] ([invoiceDate], [bId], [atId], [cId], [seId], [price], [commission]) VALUES (@invoiceDate, @bId, @atId, @cId, @seId, @price, @commission)" SelectCommand="SELECT * FROM [tblInvoice]" UpdateCommand="UPDATE [tblInvoice] SET [invoiceDate] = @invoiceDate, [bId] = @bId, [atId] = @atId, [cId] = @cId, [seId] = @seId, [price] = @price, [commission] = @commission WHERE [invoiceID] = @invoiceID">
                <DeleteParameters>
                    <asp:Parameter Name="invoiceID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="invoiceDate" Type="DateTime" />
                    <asp:Parameter Name="bId" Type="Int32" />
                    <asp:Parameter Name="atId" Type="Int32" />
                    <asp:Parameter Name="cId" Type="Int32" />
                    <asp:Parameter Name="seId" Type="Int32" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="commission" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="invoiceDate" Type="DateTime" />
                    <asp:Parameter Name="bId" Type="Int32" />
                    <asp:Parameter Name="atId" Type="Int32" />
                    <asp:Parameter Name="cId" Type="Int32" />
                    <asp:Parameter Name="seId" Type="Int32" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="commission" Type="Decimal" />
                    <asp:Parameter Name="invoiceID" Type="Int32" />
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

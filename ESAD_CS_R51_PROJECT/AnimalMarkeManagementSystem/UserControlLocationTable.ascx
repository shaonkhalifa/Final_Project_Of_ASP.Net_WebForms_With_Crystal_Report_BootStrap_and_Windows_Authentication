<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlLocationTable.ascx.cs" Inherits="AnimalMarkeManagementSystem.UserControlLocationTable" %>
<div class="row mb-4">

        <div class="col-4">
            <div class="display-4 text-center">
                <h3>Location Table Entry </h3>
            </div>
            <asp:FormView ID="frmAnimalType" runat="server" CellPadding="3" DataKeyNames="lId" DataSourceID="LocationDS" DefaultMode="Insert" CssClass="table table-striped table-hover table-bordered table-sm ms-2" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" GridLines="Both">
                <EditItemTemplate>
                    lId:
            <asp:Label ID="lIdLabel1" runat="server" Text='<%# Eval("lId") %>' />
                    <br />
                    BlockName:
            <asp:TextBox ID="BlockNameTextBox" runat="server" Text='<%# Bind("BlockName") %>' />
                    <br />
                    Row Number:
                    <asp:TextBox ID="RowNumberTextBox" runat="server" Text='<%# Bind("RowNumber") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    Block Name:
            <asp:TextBox ID="BlockNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("BlockName") %>' />
                   
                    Row Number:
                    <asp:TextBox ID="RowNumberTextBox" CssClass="form-control" runat="server" Text='<%# Bind("RowNumber") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-outline-success "/>
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-outline-warning"/>&nbsp;<asp:LinkButton ID="refreshbtnLocation" OnClick="refreshbtnLocation_Click"  runat="server"  CausesValidation="False" CommandName="Update" Text="Refresh"  CssClass="btn btn-outline-info" />
                </InsertItemTemplate>
                <ItemTemplate>
                    lId:
            <asp:Label ID="lIdLabel" runat="server" Text='<%# Eval("lId") %>' />
                    <br />
                    BlockName:
            <asp:Label ID="BlockNameLabel" runat="server" Text='<%# Bind("BlockName") %>' />
                    <br />

                    RowNumber:
                    <asp:Label ID="RowNumberLabel" runat="server" Text='<%# Bind("RowNumber") %>' />
                    <br />

                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />

            </asp:FormView>

            <asp:SqlDataSource ID="LocationDS" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblLocation] WHERE [lId] = @lId" InsertCommand="INSERT INTO [tblLocation] ([BlockName], [RowNumber]) VALUES (@BlockName, @RowNumber)" SelectCommand="SELECT * FROM [tblLocation]" UpdateCommand="UPDATE [tblLocation] SET [BlockName] = @BlockName, [RowNumber] = @RowNumber WHERE [lId] = @lId">
                <DeleteParameters>
                    <asp:Parameter Name="lId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="BlockName" Type="String" />
                    <asp:Parameter Name="RowNumber" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="BlockName" Type="String" />
                    <asp:Parameter Name="RowNumber" Type="Int32" />
                    <asp:Parameter Name="lId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
        <div class="col-7 me-1">
            <div class="display-4 text-center">
                <h3>Location Table Show </h3>
            </div>
            <asp:GridView ID="AnimalTypegrid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="lId" CssClass="table table-striped table-hover table-bordered table-sm text-white " DataSourceID="LocstionDSShow" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Id" HeaderStyle-ForeColor="White" InsertVisible="False" SortExpression="lId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("lId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("lId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Block Name" HeaderStyle-ForeColor="White" SortExpression="BlockName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("BlockName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("BlockName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Row Number" SortExpression="RowNumber" HeaderStyle-Width="150px" HeaderStyle-ForeColor="White" HeaderStyle-HorizontalAlign="Center" >
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("RowNumber") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("RowNumber") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False" HeaderStyle-Width="100px" >
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-success btn-sm"><i class="fa fa-refresh"></i></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-warning btn-sm"><i class="fa fa-times"></i></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-primary btn-sm "><i class="fa fa-edit" ></i></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-danger btn-sm"><i class="fa fa-trash"></i></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
       
            
       
            <asp:SqlDataSource ID="LocstionDSShow" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblLocation] WHERE [lId] = @lId" InsertCommand="INSERT INTO [tblLocation] ([BlockName], [RowNumber]) VALUES (@BlockName, @RowNumber)" SelectCommand="SELECT * FROM [tblLocation]" UpdateCommand="UPDATE [tblLocation] SET [BlockName] = @BlockName, [RowNumber] = @RowNumber WHERE [lId] = @lId">
                <DeleteParameters>
                    <asp:Parameter Name="lId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="BlockName" Type="String" />
                    <asp:Parameter Name="RowNumber" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="BlockName" Type="String" />
                    <asp:Parameter Name="RowNumber" Type="Int32" />
                    <asp:Parameter Name="lId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
       
            
       
        </div>

    </div>
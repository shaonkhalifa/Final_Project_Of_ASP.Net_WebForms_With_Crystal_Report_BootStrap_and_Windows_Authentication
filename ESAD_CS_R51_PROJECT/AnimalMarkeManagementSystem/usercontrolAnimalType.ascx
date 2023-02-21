<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="usercontrolAnimalType.ascx.cs" Inherits="AnimalMarkeManagementSystem.usercontrolAnimalType" %>
<div class="row">

        <div class="col-4">
            <div class="display-4 text-center">
                <h3>Animal Type Entry </h3>
            </div>
            <asp:FormView ID="frmAnimalType" runat="server" CellPadding="3" DataKeyNames="atId" DataSourceID="DsAnimalEnrty" DefaultMode="Insert" CssClass="table table-striped table-hover table-bordered table-sm ms-2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" OnItemInserted="frmAnimalType_ItemInserted">
                <EditItemTemplate>
                    atId:
            <asp:Label ID="atIdLabel1" runat="server" Text='<%# Eval("atId") %>' />
                    <br />
                    animalName:
            <asp:TextBox ID="animalNameTextBox" runat="server" Text='<%# Bind("animalName") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <InsertItemTemplate>
                    Name:
            <asp:TextBox ID="animalNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("animalName") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-outline-success "/>
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-outline-warning"  />  &nbsp;<asp:LinkButton ID="refreshbtnAnimal" OnClick="refreshbtnAnimal_Click"  runat="server"  CausesValidation="False" CommandName="Update" Text="Refresh"  CssClass="btn btn-outline-info" />
                </InsertItemTemplate>
                <ItemTemplate>
                    atId:
            <asp:Label ID="atIdLabel" runat="server" Text='<%# Eval("atId") %>' />
                    <br />
                    animalName:
            <asp:Label ID="animalNameLabel" runat="server" Text='<%# Bind("animalName") %>' />
                    <br />

                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />

            </asp:FormView>
        
            <asp:SqlDataSource ID="DsAnimalEnrty" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblAnimalType] WHERE [atId] = @atId" InsertCommand="INSERT INTO [tblAnimalType] ([animalName]) VALUES (@animalName)" SelectCommand="SELECT * FROM [tblAnimalType]" UpdateCommand="UPDATE [tblAnimalType] SET [animalName] = @animalName WHERE [atId] = @atId">
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
        
        </div>
        <div class="col-7 me-1">
            <div class="display-4 text-center">
                <h3>Animal Type Show </h3>
            </div>
            <asp:GridView ID="AnimalTypegrid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="atId" CssClass="table table-striped table-hover table-bordered table-sm text-white " DataSourceID="SqlDataAnimalType" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Id" HeaderStyle-ForeColor="White" InsertVisible="False" SortExpression="atId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("atId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("atId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="animalName" HeaderStyle-ForeColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("animalName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("animalName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  ShowHeader="False" HeaderStyle-Width="100px">
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
            <asp:SqlDataSource ID="SqlDataAnimalType" runat="server" ConnectionString="<%$ ConnectionStrings:AMMSDBCon %>" DeleteCommand="DELETE FROM [tblAnimalType] WHERE [atId] = @atId" InsertCommand="INSERT INTO [tblAnimalType] ([animalName]) VALUES (@animalName)" SelectCommand="SELECT * FROM [tblAnimalType]" UpdateCommand="UPDATE [tblAnimalType] SET [animalName] = @animalName WHERE [atId] = @atId">
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
        </div>

    </div>
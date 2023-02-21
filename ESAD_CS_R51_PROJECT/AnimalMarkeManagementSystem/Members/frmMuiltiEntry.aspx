<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmMuiltiEntry.aspx.cs" Inherits="AnimalMarkeManagementSystem.frmMuiltiEntry" %>

<%@ Register Src="~/usercontrolAnimalType.ascx" TagPrefix="uc1" TagName="usercontrolAnimalType" %>
<%@ Register Src="~/usercontrolColorTable.ascx" TagPrefix="uc1" TagName="usercontrolColorTable" %>
<%@ Register Src="~/UserControlLocationTable.ascx" TagPrefix="uc1" TagName="UserControlLocationTable" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
             <div class="col-3 ms-2 mt-4">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control  " runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="0">Animaltype Entry</asp:ListItem>
                    <asp:ListItem Value="1">Color Entry</asp:ListItem>
                    <asp:ListItem Value="2">Location Entry</asp:ListItem>
                    <asp:ListItem Selected="True" Value="3">---Select---</asp:ListItem>
                </asp:DropDownList>
               
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
      <asp:UpdateProgress ID="UpdateProgress1"  runat="server" AssociatedUpdatePanelID="UpdatePanel2">
        <ProgressTemplate >
            <div class="d-flex justify-content-center">
                 <img src="../Images/AAALodingLine.gif" />
            </div>
           <%-- <img src="../Images/AAALodingLine.gif" />--%>
           <%-- <img src="../Images/AALoder.gif" />
            <img src="../Images/AaLodingLine.gif" />--%>
        </ProgressTemplate>
    </asp:UpdateProgress>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        
        <ContentTemplate>
         
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="viewAnimalType" runat="server">
                    <uc1:usercontrolAnimalType runat="server" ID="usercontrolAnimalType" />
                </asp:View>
                <asp:View ID="ViewColor" runat="server">
                    <uc1:usercontrolColorTable runat="server" ID="usercontrolColorTable" />
                </asp:View>
                <asp:View ID="ViewLocation" runat="server">
                    <uc1:UserControlLocationTable runat="server" ID="UserControlLocationTable" />
                </asp:View>
            </asp:MultiView>

        </ContentTemplate>

    </asp:UpdatePanel>
  




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

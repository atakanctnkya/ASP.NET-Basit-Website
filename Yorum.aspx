<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Yorum.aspx.cs" Inherits="_1912901057_AtakanCetinkaya.Yorum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
       
        
         <tr>
            <td>
                <asp:Label ID="lblKonu" runat="server" Text="Konu"></asp:Label></td>
            <td class="auto-style1">
                <asp:TextBox ID="txtKonu" runat="server" TextMode="SingleLine" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Lütfen yorumunuzun konusunu girin" ControlToValidate="txtKonu"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblYorum" runat="server" Text="Yorum"></asp:Label></td>
            <td class="auto-style1">
                <asp:TextBox ID="txtYorum" runat="server" TextMode="MultiLine" Width="200px" Height="100px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtYorum" ErrorMessage="Lütfen yorumunuzu girin"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="lblYorumGuvenlik" runat="server" Text=""></asp:Label>
                &nbsp;sayıyı yazınız
                <td>
                <asp:TextBox ID="txtYorumGuvenlik" runat="server" Width="82px"></asp:TextBox></td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnYorumEkle" runat="server" Text="Yorum Ekle" OnClick="btnYorumEkle_Click"/>
            </td>
        </tr>
        
    </table>
    <asp:Label runat="server" ID="lblYorumUyari"></asp:Label>
</asp:Content>

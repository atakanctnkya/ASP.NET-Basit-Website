<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="UyeDetay.aspx.cs" Inherits="_1912901057_AtakanCetinkaya.UyeDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td class="auto-style1">Üye Numarası</td>
            <td class="auto-style1">
                <asp:Label runat="server" ID="lblUyeNo"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>Kullanıcı Adı</td>
            <td>
                <asp:TextBox runat="server" ID="txtKullaniciAdi" Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKullaniciAdi" ErrorMessage="Bir kullanıcı adı giriniz"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Parola</td>
            <td>
                <asp:TextBox runat="server" ID="txtParola"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtParola" ErrorMessage="Parola boş olamaz"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Parola Tekrar</td>
            <td>
                <asp:TextBox runat="server" ID="txtParolaTekrar"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtParola" ControlToValidate="txtParolaTekrar" ErrorMessage="Parolalar uyuşmuyor"></asp:CompareValidator>
            </td>
        </tr>
         <tr>
            <td>Adı</td>
            <td>
                <asp:TextBox runat="server" ID="txtAdi"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdi" ErrorMessage="Adınızı giriniz"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>Soyadı</td>
            <td>
                <asp:TextBox runat="server" ID="txtSoyadi"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSoyadi" ErrorMessage="Soyadını giriniz"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>E-Posta</td>
            <td>
                <asp:TextBox runat="server" ID="txtEPosta"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEPosta" ErrorMessage="E Posta formatı hatalı" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>Yetki</td>
            <td>
                <asp:DropDownList runat="server" ID="drpYetki" Width="150px">
                    <asp:ListItem Value="1">Yönetici</asp:ListItem>
                    <asp:ListItem Value="2">Kullanıcı</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblGuvenlik" runat="server" Text=""></asp:Label>
    &nbsp;sayıyı yazınız
    <asp:TextBox ID="txtGuvenlik" runat="server" Width="82px"></asp:TextBox>
    <br />
    <asp:LinkButton ID="btnUyeEkle" runat="server" OnClick="btnUyeEkle_Click">Üye Ekle</asp:LinkButton>
    &nbsp;<asp:LinkButton ID="btnGuncelle" runat="server" OnClick="btnGuncelle_Click">Bilgilerimi Güncelle</asp:LinkButton>
    <br />
    <asp:LinkButton ID="btnUyeSil" runat="server" OnClick="btnUyeSil_Click" Visible="False">Üye Sil</asp:LinkButton>
    <br />
    <asp:LinkButton ID="btnAnaSayfa" runat="server" OnClick="btnAnaSayfa_Click">Ana sayfaya dön</asp:LinkButton>
    <br />
    <asp:Label runat="server" ID="lblUyari"></asp:Label>
</asp:Content>

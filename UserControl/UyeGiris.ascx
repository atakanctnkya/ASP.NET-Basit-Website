<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UyeGiris.ascx.cs" Inherits="_1912901057_AtakanCetinkaya.UserControl.UyeGiris" %>
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
     <%--   Giriş--%>
        Kullanıcı Adı :<asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
        Parola :<asp:TextBox ID="txtParola" runat="server"></asp:TextBox>
        <asp:LinkButton ID="btnGiris" runat="server" OnClick="btnGiris_Click">Giriş</asp:LinkButton> | 
        <asp:LinkButton ID="btnUnuttum" runat="server" OnClick="btnUnuttum_Click">Parolamı Unuttum</asp:LinkButton> | 
        <asp:LinkButton ID="btnYeniUye" runat="server" OnClick="btnYeniUye_Click">Yeni Üyelik</asp:LinkButton>
    </asp:View>

    <asp:View ID="View2" runat="server">
       <%-- Giriş yapıldı--%>
        Hoşgeldin <asp:Label ID="lblAdSoyad" runat="server" Text=""></asp:Label>
        <asp:LinkButton ID="btnOturumuKapat" runat="server" OnClick="btnOturumuKapat_Click">Oturumu Kapat</asp:LinkButton>
        &nbsp;<asp:LinkButton ID="btnUyeBilgiGoster" runat="server" OnClick="btnUyeBilgiGoster_Click">Üyelik Bilgilerim</asp:LinkButton>
    </asp:View>

    <asp:View ID="View3" runat="server">
       <%-- Parolamı unuttum--%>
        Kullanıcı Adınızı Giriniz
        <asp:TextBox ID="txtKullaniciAdiUnuttum" runat="server"></asp:TextBox>
        <asp:LinkButton ID="btnParolaGonder" runat="server">Parolamı gönder</asp:LinkButton>
    </asp:View>

</asp:MultiView>
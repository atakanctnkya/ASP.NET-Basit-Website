<%@ Page Title="" Language="C#" MasterPageFile="~/Yonet.Master" AutoEventWireup="true" CodeBehind="YResimGaleri.aspx.cs" Inherits="_1912901057_AtakanCetinkaya.YResimGaleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Resim Galeri Yönetimi</h3>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
        <h4>Resim Listesi</h4>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [rn], [tarih], [aciklama] FROM [resimGaleri]"></asp:SqlDataSource>
        <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="rn" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="rn" HeaderText="rn" InsertVisible="False" ReadOnly="True" SortExpression="rn" />
                <asp:BoundField DataField="tarih" DataFormatString="{0:d}" HeaderText="tarih" SortExpression="tarih" />
                <asp:BoundField DataField="aciklama" HeaderText="aciklama" SortExpression="aciklama" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <br />
            <asp:LinkButton ID="btnDuzenle" runat="server" OnClick="btnDuzenle_Click">Resmi Düzenle</asp:LinkButton>
            &nbsp;|
            <asp:LinkButton ID="btnYeni" runat="server"  OnClick="btnYeni_Click">Yeni Resim Ekle</asp:LinkButton>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <h4>Resim Düzenle</h4>
            Resim No:
            <asp:Label ID="lblRn" runat="server" Text=""></asp:Label>
            <br />
            Açıklama:
            <asp:TextBox ID="txtAciklama" runat="server"></asp:TextBox>
            <br />
            Resim Seç:
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:LinkButton ID="btnKaydet" runat="server" OnClick="btnKaydet_Click">Değişikliği Kaydet</asp:LinkButton>
            <asp:LinkButton ID="btnEkle" runat="server" OnClick="btnEkle_Click">Resmi Ekle</asp:LinkButton>
            <br />
            Resim:
            <br />
            <asp:Image ID="Image1" runat="server"></asp:Image>
        </asp:View>
    </asp:MultiView>
</asp:Content>

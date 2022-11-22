<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="ResimGaleri.aspx.cs" Inherits="_1912901057_AtakanCetinkaya.ResimGaleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Resim Galeri</h3>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [resimGaleri]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="rn" DataSourceID="SqlDataSource1" GroupItemCount="2">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFFBD6;color: #333333;">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "resimGaleri/" + Eval("rn") + Eval("uzanti") %>' />
                <br />
                <asp:Label ID="tarihLabel" runat="server" Text='<%# Eval("tarih", "{0:d}") %>'></asp:Label>
                &nbsp;==
                <asp:Label ID="aciklamaLabel" runat="server" Text='<%# Eval("aciklama") %>' />
                <br /></td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #FFCC66; color: #000080;">rn:
                <asp:Label ID="rnLabel1" runat="server" Text='<%# Eval("rn") %>' />
                <br />uzanti:
                <asp:TextBox ID="uzantiTextBox" runat="server" Text='<%# Bind("uzanti") %>' />
                <br />tarih:
                <asp:TextBox ID="tarihTextBox" runat="server" Text='<%# Bind("tarih") %>' />
                <br />aciklama:
                <asp:TextBox ID="aciklamaTextBox" runat="server" Text='<%# Bind("aciklama") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Güncelleştir" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="İptal" />
                <br /></td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>Hiçbir veri döndürülmedi.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">uzanti:
                <asp:TextBox ID="uzantiTextBox" runat="server" Text='<%# Bind("uzanti") %>' />
                <br />tarih:
                <asp:TextBox ID="tarihTextBox" runat="server" Text='<%# Bind("tarih") %>' />
                <br />aciklama:
                <asp:TextBox ID="aciklamaTextBox" runat="server" Text='<%# Bind("aciklama") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Ekle" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Temizle" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #FFFBD6; color: #333333;">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "resimGaleri/" + Eval("rn") + Eval("uzanti") %>' />
                <br />
                <asp:Label ID="tarihLabel" runat="server" Text='<%# Eval("tarih", "{0:d}") %>' />
                &nbsp;==
                <asp:Label ID="aciklamaLabel" runat="server" Text='<%# Eval("aciklama") %>' />
                <br /></td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #FFCC66; font-weight: bold; color: #000080;">rn:
                <asp:Label ID="rnLabel" runat="server" Text='<%# Eval("rn") %>' />
                <br />uzanti:
                <asp:Label ID="uzantiLabel" runat="server" Text='<%# Eval("uzanti") %>' />
                <br />tarih:
                <asp:Label ID="tarihLabel" runat="server" Text='<%# Eval("tarih") %>' />
                <br />aciklama:
                <asp:Label ID="aciklamaLabel" runat="server" Text='<%# Eval("aciklama") %>' />
                <br /></td>
        </SelectedItemTemplate>
    </asp:ListView>
</asp:Content>

<%@ Page Title="Uue kliendi loomine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="uusklient.aspx.cs" Inherits="arvutihooldus_web.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="klientID" DataSourceID="SqlDataSource2_uuusklient" ForeColor="#333333" GridLines="None" Height="50px" Width="618px" DefaultMode="Insert">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="klientID" HeaderText="klientID" SortExpression="klientID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
                    <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                    <asp:BoundField DataField="epost" HeaderText="epost" SortExpression="epost" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1_uusklient" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [klient] WHERE [klientID] = @klientID" InsertCommand="INSERT INTO [klient] ([nimi], [telefon], [epost]) VALUES (@nimi, @telefon, @epost)" SelectCommand="SELECT [nimi], [telefon], [klientID], [epost] FROM [klient]" UpdateCommand="UPDATE [klient] SET [nimi] = @nimi, [telefon] = @telefon, [epost] = @epost WHERE [klientID] = @klientID">
                <DeleteParameters>
                    <asp:Parameter Name="klientID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimi" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                    <asp:Parameter Name="epost" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimi" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                    <asp:Parameter Name="epost" Type="String" />
                    <asp:Parameter Name="klientID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="klientID" DataSourceID="SqlDataSource2_uuusklient" EmptyDataText="There are no data records to display." Width="499px">
        <Columns>
            <asp:BoundField DataField="klientID" HeaderText="Klient ID" InsertVisible="False" ReadOnly="True" SortExpression="klientID" />
            <asp:BoundField DataField="nimi" HeaderText="Kliendi nimi" SortExpression="nimi" />
            <asp:BoundField DataField="telefon" HeaderText="Telefon" SortExpression="telefon" />
            <asp:BoundField DataField="epost" HeaderText="E post" SortExpression="epost" />
            <asp:CommandField ShowEditButton="True" EditText="Muuda" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2_uuusklient" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [klient] WHERE [klientID] = @klientID" InsertCommand="INSERT INTO [klient] ([nimi], [telefon], [epost]) VALUES (@nimi, @telefon, @epost)" SelectCommand="SELECT [klientID], [nimi], [telefon], [epost] FROM [klient]" UpdateCommand="UPDATE [klient] SET [nimi] = @nimi, [telefon] = @telefon, [epost] = @epost WHERE [klientID] = @klientID">
    <DeleteParameters>
        <asp:Parameter Name="klientID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nimi" Type="String" />
        <asp:Parameter Name="telefon" Type="String" />
        <asp:Parameter Name="epost" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nimi" Type="String" />
        <asp:Parameter Name="telefon" Type="String" />
        <asp:Parameter Name="epost" Type="String" />
        <asp:Parameter Name="klientID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [klient] WHERE [klientID] = @klientID" InsertCommand="INSERT INTO [klient] ([nimi], [telefon], [epost]) VALUES (@nimi, @telefon, @epost)" ProviderName="<%$ ConnectionStrings:arvutihooldusConnectionString1.ProviderName %>" SelectCommand="SELECT [klientID], [nimi], [telefon], [epost] FROM [klient]" UpdateCommand="UPDATE [klient] SET [nimi] = @nimi, [telefon] = @telefon, [epost] = @epost WHERE [klientID] = @klientID">
    <DeleteParameters>
        <asp:Parameter Name="klientID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nimi" Type="String" />
        <asp:Parameter Name="telefon" Type="String" />
        <asp:Parameter Name="epost" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nimi" Type="String" />
        <asp:Parameter Name="telefon" Type="String" />
        <asp:Parameter Name="epost" Type="String" />
        <asp:Parameter Name="klientID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    
    </main>
</asp:Content>

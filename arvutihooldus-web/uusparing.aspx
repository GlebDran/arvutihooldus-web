<%@ Page Title="Uue päringu lisamine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="uusparing.aspx.cs" Inherits="arvutihooldus_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="title"><%: Title %></h2>
    <main>
        <p><asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="452px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="requestID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" DefaultMode="Insert">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="requestID" HeaderText="Päringu ID" InsertVisible="False" ReadOnly="True" SortExpression="requestID" />
                <asp:BoundField DataField="klientID" HeaderText="Klinedi ID" SortExpression="klientID" />
                <asp:BoundField DataField="arvutiID" HeaderText="Arvuti ID" SortExpression="arvutiID" />
                <asp:BoundField DataField="requestdate" HeaderText="Päringu kuupäev" SortExpression="requestdate" />
                <asp:BoundField DataField="remondi_kirjeldus" HeaderText="Remondi kirjeldus" SortExpression="remondi_kirjeldus" />
                <asp:CommandField ShowInsertButton="True" NewText="Lisa" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
</asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [service_request] WHERE [requestID] = @requestID" InsertCommand="INSERT INTO [service_request] ([klientID], [arvutiID], [requestdate], [remondi_kirjeldus]) VALUES (@klientID, @arvutiID, @requestdate, @remondi_kirjeldus)" SelectCommand="SELECT [requestID], [klientID], [arvutiID], [requestdate], [remondi_kirjeldus] FROM [service_request]" UpdateCommand="UPDATE [service_request] SET [klientID] = @klientID, [arvutiID] = @arvutiID, [requestdate] = @requestdate, [remondi_kirjeldus] = @remondi_kirjeldus WHERE [requestID] = @requestID">
                <DeleteParameters>
                    <asp:Parameter Name="requestID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="klientID" Type="Int32" />
                    <asp:Parameter Name="arvutiID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="requestdate" />
                    <asp:Parameter Name="remondi_kirjeldus" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="klientID" Type="Int32" />
                    <asp:Parameter Name="arvutiID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="requestdate" />
                    <asp:Parameter Name="remondi_kirjeldus" Type="String" />
                    <asp:Parameter Name="requestID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </p>
    </main>

</asp:Content>

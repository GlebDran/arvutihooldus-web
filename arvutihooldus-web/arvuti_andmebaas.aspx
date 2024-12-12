<%@ Page Title="Arvutid andmebaas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="arvuti_andmebaas.aspx.cs" Inherits="arvutihooldus_web.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="arvutiID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="780px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="brand" HeaderText="Arvuti tootja" SortExpression="brand" />
                <asp:BoundField DataField="model" HeaderText="Mudel" SortExpression="model" />
                <asp:BoundField DataField="serialnumber" HeaderText="EAN number" SortExpression="serialnumber" />
                <asp:BoundField DataField="ostukuupaev" HeaderText="Ostukuupäev" SortExpression="ostukuupaev" />
                <asp:CommandField ShowEditButton="True" CancelText="Loobu" DeleteText="Kustuta" EditText="Muuda" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [arvutid] WHERE [arvutiID] = @arvutiID" InsertCommand="INSERT INTO [arvutid] ([klientID], [brand], [model], [serialnumber], [ostukuupaev]) VALUES (@klientID, @brand, @model, @serialnumber, @ostukuupaev)" SelectCommand="SELECT [arvutiID], [klientID], [brand], [model], [serialnumber], [ostukuupaev] FROM [arvutid]" UpdateCommand="UPDATE [arvutid] SET [klientID] = @klientID, [brand] = @brand, [model] = @model, [serialnumber] = @serialnumber, [ostukuupaev] = @ostukuupaev WHERE [arvutiID] = @arvutiID">
            <DeleteParameters>
                <asp:Parameter Name="arvutiID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="klientID" Type="Int32" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="serialnumber" Type="Int32" />
                <asp:Parameter DbType="Date" Name="ostukuupaev" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="klientID" Type="Int32" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="serialnumber" Type="Int32" />
                <asp:Parameter DbType="Date" Name="ostukuupaev" />
                <asp:Parameter Name="arvutiID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </main>
</asp:Content>

<%@ Page Title="Arvuti lisamine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="uusarvuti.aspx.cs" Inherits="arvutihooldus_web.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource3_uusarvuti" Height="50px" Width="625px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="arvutiID" ForeColor="#333333" GridLines="None" DefaultMode="Insert">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="brand" HeaderText="Arvuti tootja" SortExpression="brand" />
                <asp:BoundField DataField="model" HeaderText="Arvuti mudel" SortExpression="model" />
                <asp:BoundField DataField="serialnumber" HeaderText="EAN number" SortExpression="serialnumber" />
                <asp:BoundField DataField="ostukuupaev" HeaderText="Ostu kuupäev" SortExpression="ostukuupaev" />
                <asp:CommandField CancelText="Loobu" DeleteText="Kustuta" EditText="Muuda" ShowInsertButton="True" InsertText="Lisa" NewText="Lisa Uus" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource3_uusarvuti" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [arvutid] WHERE [arvutiID] = @arvutiID" InsertCommand="INSERT INTO [arvutid] ([brand], [model], [serialnumber], [ostukuupaev]) VALUES (@brand, @model, @serialnumber, @ostukuupaev)" SelectCommand="SELECT [arvutiID], [brand], [model], [serialnumber], [ostukuupaev] FROM [arvutid]" UpdateCommand="UPDATE [arvutid] SET [brand] = @brand, [model] = @model, [serialnumber] = @serialnumber, [ostukuupaev] = @ostukuupaev WHERE [arvutiID] = @arvutiID">
            <DeleteParameters>
                <asp:Parameter Name="arvutiID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="serialnumber" Type="Int32" />
                <asp:Parameter DbType="Date" Name="ostukuupaev" />
            </InsertParameters>
            <UpdateParameters>
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

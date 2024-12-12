<%@ Page Title="Tehtud tööd lisamine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="uustehtudremont.aspx.cs" Inherits="arvutihooldus_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="title"><%: Title %>
    </h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="remontID" DataSourceID="SqlDataSource2_tehtudtood1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="358px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="remontID" HeaderText="Remont ID" InsertVisible="False" ReadOnly="True" SortExpression="remontID" />
                <asp:BoundField DataField="requestID" HeaderText="Päringu ID" SortExpression="requestID" />
                <asp:BoundField DataField="remondi_kuupaev" HeaderText="Remondi kuupäev" SortExpression="remondi_kuupaev" />
                <asp:BoundField DataField="remondi_type" HeaderText="Remondi tüüp" SortExpression="remondi_type" />
                <asp:BoundField DataField="remondi_hind" HeaderText="Remondi hind" SortExpression="remondi_hind" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2_tehtudtood1" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [remont_tehtud] WHERE [remontID] = @remontID" InsertCommand="INSERT INTO [remont_tehtud] ([requestID], [remondi_kuupaev], [remondi_type], [remondi_hind]) VALUES (@requestID, @remondi_kuupaev, @remondi_type, @remondi_hind)" SelectCommand="SELECT [remontID], [requestID], [remondi_kuupaev], [remondi_type], [remondi_hind] FROM [remont_tehtud]" UpdateCommand="UPDATE [remont_tehtud] SET [requestID] = @requestID, [remondi_kuupaev] = @remondi_kuupaev, [remondi_type] = @remondi_type, [remondi_hind] = @remondi_hind WHERE [remontID] = @remontID">
            <DeleteParameters>
                <asp:Parameter Name="remontID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="requestID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="remondi_kuupaev" />
                <asp:Parameter Name="remondi_type" Type="String" />
                <asp:Parameter Name="remondi_hind" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="requestID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="remondi_kuupaev" />
                <asp:Parameter Name="remondi_type" Type="String" />
                <asp:Parameter Name="remondi_hind" Type="Int32" />
                <asp:Parameter Name="remontID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2_tehtudtoolisa" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [remont_tehtud] WHERE [remontID] = @remontID" InsertCommand="INSERT INTO [remont_tehtud] ([requestID], [remondi_kuupaev], [remondi_type], [remondi_hind]) VALUES (@requestID, @remondi_kuupaev, @remondi_type, @remondi_hind)" SelectCommand="SELECT [remontID], [requestID], [remondi_kuupaev], [remondi_type], [remondi_hind] FROM [remont_tehtud]" UpdateCommand="UPDATE [remont_tehtud] SET [requestID] = @requestID, [remondi_kuupaev] = @remondi_kuupaev, [remondi_type] = @remondi_type, [remondi_hind] = @remondi_hind WHERE [remontID] = @remontID">
            <DeleteParameters>
                <asp:Parameter Name="remontID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="requestID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="remondi_kuupaev" />
                <asp:Parameter Name="remondi_type" Type="String" />
                <asp:Parameter Name="remondi_hind" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="requestID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="remondi_kuupaev" />
                <asp:Parameter Name="remondi_type" Type="String" />
                <asp:Parameter Name="remondi_hind" Type="Int32" />
                <asp:Parameter Name="remontID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <p id="aspnetTitle">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [remont_tehtud] WHERE [remontID] = @remontID" InsertCommand="INSERT INTO [remont_tehtud] ([requestID], [remondi_kuupaev], [remondi_type], [remondi_hind]) VALUES (@requestID, @remondi_kuupaev, @remondi_type, @remondi_hind)" ProviderName="<%$ ConnectionStrings:arvutihooldusConnectionString1.ProviderName %>" SelectCommand="SELECT [remontID], [requestID], [remondi_kuupaev], [remondi_type], [remondi_hind] FROM [remont_tehtud]" UpdateCommand="UPDATE [remont_tehtud] SET [requestID] = @requestID, [remondi_kuupaev] = @remondi_kuupaev, [remondi_type] = @remondi_type, [remondi_hind] = @remondi_hind WHERE [remontID] = @remontID">
                    <DeleteParameters>
                        <asp:Parameter Name="remontID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="requestID" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="remondi_kuupaev" />
                        <asp:Parameter Name="remondi_type" Type="String" />
                        <asp:Parameter Name="remondi_hind" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="requestID" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="remondi_kuupaev" />
                        <asp:Parameter Name="remondi_type" Type="String" />
                        <asp:Parameter Name="remondi_hind" Type="Int32" />
                        <asp:Parameter Name="remontID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </section>
    </main>

</asp:Content>

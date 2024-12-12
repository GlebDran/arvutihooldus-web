<%@ Page Title="Meie päringud" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="remontparing.aspx.cs" Inherits="arvutihooldus_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="title"><%: Title %></h2>
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="requestID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Vertical" Width="726px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="requestdate" HeaderText="Päringu kuupäev" SortExpression="requestdate" />
                        <asp:BoundField DataField="remondi_kirjeldus" HeaderText="Remondi kirjeldus" SortExpression="remondi_kirjeldus" />
                        <asp:CommandField CancelText="Loobu" DeleteText="Kustuta" EditText="Muuda" ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:arvutihooldusConnectionString1 %>" DeleteCommand="DELETE FROM [service_request] WHERE [requestID] = @requestID" InsertCommand="INSERT INTO [service_request] ([klientID], [arvutiID], [requestdate], [remondi_kirjeldus]) VALUES (@klientID, @arvutiID, @requestdate, @remondi_kirjeldus)" ProviderName="<%$ ConnectionStrings:arvutihooldusConnectionString1.ProviderName %>" SelectCommand="SELECT [requestID], [klientID], [arvutiID], [requestdate], [remondi_kirjeldus] FROM [service_request]" UpdateCommand="UPDATE [service_request] SET [klientID] = @klientID, [arvutiID] = @arvutiID, [requestdate] = @requestdate, [remondi_kirjeldus] = @remondi_kirjeldus WHERE [requestID] = @requestID">
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
        </section>
    </main>

</asp:Content>

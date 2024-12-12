<%@ Page Title="Tehtud tööd" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="remonttehtud.aspx.cs" Inherits="arvutihooldus_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="title"><%: Title %></h2>
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <p id="aspnetTitle">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="remontID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="704px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="remondi_kuupaev" HeaderText="Remondi kuupäev" SortExpression="remondi_kuupaev" />
                        <asp:BoundField DataField="remondi_type" HeaderText="Remondi tüüp" SortExpression="remondi_type" />
                        <asp:BoundField DataField="remondi_hind" HeaderText="Remondi hind" SortExpression="remondi_hind" />
                        <asp:CommandField CancelText="Loobu" DeleteText="Kustuta" EditText="Muuda" ShowEditButton="True" />
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

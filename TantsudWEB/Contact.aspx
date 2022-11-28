<%@ Page Title="Tantsupaarid" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TantsudWEB.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Tantsupaarid.</h3>
    <address>



        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="652px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="tantsupaar" HeaderText="tantsupaar" SortExpression="tantsupaar" />
                <asp:BoundField DataField="punktid" HeaderText="punktid" SortExpression="punktid" />
                <asp:BoundField DataField="kommentaarid" HeaderText="kommentaarid" SortExpression="kommentaarid" />
                <asp:BoundField DataField="avaliku_paev" HeaderText="avaliku_paev" SortExpression="avaliku_paev" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tantsudSaikoConnectionString1 %>" DeleteCommand="DELETE FROM [Tantsud] WHERE [id] = @id" InsertCommand="INSERT INTO [Tantsud] ([tantsupaar], [punktid], [kommentaarid], [avalik], [avaliku_paev]) VALUES (@tantsupaar, @punktid, @kommentaarid, @avalik, @avaliku_paev)" ProviderName="<%$ ConnectionStrings:tantsudSaikoConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [tantsupaar], [punktid], [kommentaarid], [avalik], [avaliku_paev] FROM [Tantsud]" UpdateCommand="UPDATE [Tantsud] SET [tantsupaar] = @tantsupaar, [punktid] = @punktid, [kommentaarid] = @kommentaarid, [avalik] = @avalik, [avaliku_paev] = @avaliku_paev WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tantsupaar" Type="String" />
                <asp:Parameter Name="punktid" Type="Int32" />
                <asp:Parameter Name="kommentaarid" Type="String" />
                <asp:Parameter Name="avalik" Type="Int32" />
                <asp:Parameter Name="avaliku_paev" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tantsupaar" Type="String" />
                <asp:Parameter Name="punktid" Type="Int32" />
                <asp:Parameter Name="kommentaarid" Type="String" />
                <asp:Parameter Name="avalik" Type="Int32" />
                <asp:Parameter Name="avaliku_paev" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>



    </address>

    <h3>


        Tantsupaari lisamine</h3>
    <address>


        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <EmptyDataTemplate>
                <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Eval("avaliku_paev") %>'></asp:Calendar>
            </EmptyDataTemplate>
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="tantsupaar" HeaderText="tantsupaar" SortExpression="tantsupaar" />
                <asp:TemplateField HeaderText="punktid" SortExpression="punktid">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("punktid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("punktid") %>'>
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("punktid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="kommentaarid" HeaderText="kommentaarid" SortExpression="kommentaarid" />
                <asp:TemplateField HeaderText="avaliku_paev" SortExpression="avaliku_paev">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("avaliku_paev") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar2" runat="server" SelectedDate='<%# Bind("avaliku_paev") %>' Width="151px"></asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("avaliku_paev") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>


    </address>
    <address>


        &nbsp;</address>
</asp:Content>

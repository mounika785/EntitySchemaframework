<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="location" HeaderText="Location" />
                    <asp:TemplateField HeaderText="Employee">
                        <ItemTemplate>
                            <asp:GridView ID="GridView2" runat="server" DataSource='<%# Eval("Employee1") %>'>
                            </asp:GridView>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=MvcEntities1" DefaultContainerName="MvcEntities1" EnableFlattening="False" EntitySetName="Department1" Include="Employee1"></asp:EntityDataSource>


        </div>
    </form>
</body>
</html>

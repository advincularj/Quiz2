<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Products_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Products</title>
</head>
<body>
    <form runat="server" class="form-horizontal">
    <div class="container">
        <br />
        <br />
        <br />
        <div class="col-lg-12">
            <div class="well">
                
                    <div class="col-lg-12">

                        <h1 class="text-center"><strong>View Products</strong></h1>

                        <hr />
                            <!--<DefaultButton="btnSearch">
                            </asp:Panel>-->
                            </div>
                 <div id="keyword" runat="server" class="col-lg-3 pull-right">
                    <div class="input-group">
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" OnTextChanged="txtKeyword_TextChanged"
                             AutoPostBack="true">Search keyword...</asp:TextBox>
                        <span class="input-group-addon"><i class="fa fa-search"></i></span>
                    </div>
                </div>
                            <br />
                            <br />
                            <table class="table table-hover">
                                <thead>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Category</th>
                                    <th>Description</th>
                                    <th>Image</th>
                                    <th>Price</th>
                                    <th>Is Featured?</th>
                                    <th>Date Added</th>
                                    <th>DateModifed</th>
                                </thead>
                                <tbody>
                                    <asp:ListView ID="lvProducts" runat="server"  OnPagePropertiesChanging="lvProducts_PagePropertiesChanging">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("ProductID")%></td>
                                                <td><%# Eval("Name")%>/ <%#Eval("Code")%></td>
                                                <td><%# Eval("Category")%></td>
                                                <td><%# Eval("Description")%></td>
                                                <td>
                                                    <img runat="server" src=' <%# string.Concat("~/img/products/", Eval("Image")) %>'
                                                        class="img-responsive" width="100" />
                                                </td>
                                                <td><%# Eval("Price", "{0:#,###.00}")%></td>
                                                <td><%# Eval("IsFeatured")%></td>
                                                <td><%# Eval("Status") %></td>
                                                <td><%# Eval("DateAdded", "{0: MMMM dd, yyyy}") %></td>
                                                <td><%# Eval("DateModified", "{0: MMMM dd, yyyy}") %></td>
                                                <td>
                                                    <a href='Details.aspx?ID=<%# Eval("ProductID")%>'
                                                        class="btn btn-xs btn-info">
                                                        <i class="fa fa-search"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </ItemTemplate>

                                        <EmptyDataTemplate>
                                            <tr>
                                                <td colspan="7">
                                                    <h2 class="text-center">No records found!
                                                    </h2>
                                                </td>
                                            </tr>
                                        </EmptyDataTemplate>
                                    </asp:ListView>


                                </tbody>
                            </table>
                            <asp:DataPager ID="dpProducts" runat="server" PageSize="5"
                                PagedControlID="lvProducts">
                                <Fields>
                                    <asp:NumericPagerField ButtonType="Button"
                                        CurrentPageLabelCssClass="btn btn-info"
                                        NumericButtonCssClass="btn"
                                        NextPreviousButtonCssClass="btn" />
                                </Fields>
                            </asp:DataPager>
                
                
            </div>
            
        </div>
        
        </div>
        
        </form>
</body>
</html>

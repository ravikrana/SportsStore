<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="SportsStore.Pages.Listing" MasterPageFile="~/Store.Master" %>

<asp:Content ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">
        <%foreach (SportsStore.Models.Product prod in GetProducts())
          {
              Response.Write("<div class='item'>");
              Response.Write(string.Format("<h3>{0}</h3>", prod.Name));
              Response.Write(prod.Description);
              Response.Write(string.Format("<h3>{0}</h3>", prod.Price));
              Response.Write("</div>");   
          } %>
    </div>
        <div class="pager">
            <%for (int i = 1; i <= MaxSize; i++)
              {
                  
                  //Response.Write(string.Format("<a href='/Pages/Listing.aspx?page={0}'{1}>{2}</a>", i, i == CurrentPage ? "class='selected'" : "", i));
                  string path = System.Web.Routing.RouteTable.Routes.GetVirtualPath(null, null, new System.Web.Routing.RouteValueDictionary() { { "page", i } }).VirtualPath;
                  Response.Write(string.Format("<a href='{0}' {1}>{2}</a>", path, i == CurrentPage ? "class='selected'" : "", i));
              } %>
        </div>

</asp:Content>
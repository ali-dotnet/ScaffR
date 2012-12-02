﻿@model $rootnamespace$.Models.Sitemap.NavHelperModel
@{
    var ctx = ViewContext.RouteData;
}

<ul class="nav">
    @foreach (var node in Model.Nodes)
    {
        if (node.Children.Count > 0)
        {
        <li class="@Html.AddClass("active", node.IsCurrentNode || node.IsInCurrentPath) dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#menu1"><i class="@node.ImageUrl icon-white">
            </i>
                @node.Title
                <b class="caret"></b></a>
            <ul class="dropdown-menu">
                @foreach (var child in node.Children)
                {
                    <li><a href="@Url.Action(child.Action, child.Controller)"><i class="@child.ImageUrl">
                    </i>@child.Title</a> </li>
                }
            </ul>
        </li>    
        }
        else
        {
        <li class="@Html.AddClass("active", (node.IsCurrentNode || node.IsInCurrentPath || (ViewContext.Controller.ValueProvider.GetValue("action").RawValue.ToString().Equals(node.Action, StringComparison.CurrentCultureIgnoreCase ) && ViewContext.Controller.ValueProvider.GetValue("controller").RawValue.ToString().Equals(node.Controller, StringComparison.InvariantCultureIgnoreCase))) && !node.IsRootNode)"><a href="@Url.Action(node.Action, node.Controller)">
            <i class="@node.ImageUrl icon-white"></i>@node.Title</a></li>    
        }

    }
</ul>

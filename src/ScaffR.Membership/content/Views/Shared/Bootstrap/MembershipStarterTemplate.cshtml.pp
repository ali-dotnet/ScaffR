﻿@using $rootnamespace$.Core.Common.Site
@{
    Layout = "~/Views/Shared/Cassette.cshtml";
}

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="@Url.Content("/")">@Site.Instance.WebsiteName</a>
            <div class="nav-collapse collapse">
                @(Request.IsAuthenticated ? Html.MvcSiteMap("System").Nav(false) : Html.MvcSiteMap("Public").Nav(false))
            </div>
			<div class="pull-rigth">
				@Html.Partial("_LogOnPartial")
			</div>
        </div>
    </div>
</div>

<div class="container">

    @RenderBody()

</div>


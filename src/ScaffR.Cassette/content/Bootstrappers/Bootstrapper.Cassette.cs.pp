﻿namespace $rootnamespace$.Bootstrappers
{
    using System.IO;
    using Cassette;
    using Cassette.Scripts;
    using Cassette.Stylesheets;

    public partial class Bootstrapper : IConfiguration<BundleCollection>
	{
        public void Configure(BundleCollection configurable)
        {
            configurable.AddPerSubDirectory<ScriptBundle>("Scripts", new FileSearch()
            {
                SearchOption = SearchOption.TopDirectoryOnly
            });

            configurable.AddPerSubDirectory<StylesheetBundle>("content/less");
            configurable.AddPerSubDirectory<ScriptBundle>("Scripts/lib");
        }
	}
}
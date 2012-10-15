﻿namespace $rootnamespace$.Bootstrappers
{
    using Cassette;
    using Cassette.Scripts;
    using Cassette.Stylesheets;

    public partial class Bootstrapper : IConfiguration<BundleCollection>
	{
        public void Configure(BundleCollection configurable)
        {
            configurable.AddPerSubDirectory<StylesheetBundle>("Content");
            configurable.AddPerSubDirectory<ScriptBundle>("Scripts");
        }
	}
}
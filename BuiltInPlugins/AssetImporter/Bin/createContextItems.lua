local main = script.Parent.Parent

return function(plugin, store)
	-- Libraries
	local Framework = require(main.Packages.Framework)

	-- Context
	local ContextServices = Framework.ContextServices
	local Analytics = ContextServices.Analytics
	local Localization = ContextServices.Localization
	local Mouse = ContextServices.Mouse
	local Store = ContextServices.Store

	-- Resources
	local createAnalyticsHandlers = require(main.Src.Resources.createAnalyticsHandlers)
	local MakeTheme = require(main.Src.Resources.MakeTheme)
	local TranslationDevelopmentTable = main.Src.Resources.Localization.TranslationDevelopmentTable
	local TranslationReferenceTable = main.Src.Resources.Localization.TranslationReferenceTable

	local pluginItem = ContextServices.Plugin.new(plugin)
	local mouse = Mouse.new(plugin:getMouse())

	local storeItem = Store.new(store)

	local theme = MakeTheme()

	-- To enable localization, add the plugin to:
	-- Client/RobloxStudio/Translation/builtin_plugin_config.py
	local localization = Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "AssetImporter",
	})

	local analytics = Analytics.new(createAnalyticsHandlers)

	return {
		Plugin = pluginItem,
		Mouse = mouse,
		Store = storeItem,
		Theme = theme,
		Localization = localization,
		Analytics = analytics,
	}
end

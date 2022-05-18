return function(plugin, pluginLoaderContext)
	local Plugin = script.Parent.Parent

	local getFFlagAlignToolRoactInspector = require(Plugin.Src.Flags.getFFlagAlignToolRoactInspector)

	local Roact = require(Plugin.Packages.Roact)
	local Rodux = require(Plugin.Packages.Rodux)

	local RefactorFlags = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
	RefactorFlags.THEME_REFACTOR = true

	local Framework = require(Plugin.Packages.Framework)

	local ContextServices = Framework.ContextServices
	local Analytics = ContextServices.Analytics
	local Localization = ContextServices.Localization
	local Mouse = ContextServices.Mouse
	local Store = ContextServices.Store

	local AlignmentToolPlugin = require(Plugin.Src.Components.AlignmentToolPlugin)

	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local MakeTheme = require(Plugin.Src.Resources.MakeTheme)
	local analyticsHandlers = require(Plugin.Src.Resources.AnalyticsHandlers)

	local TranslationDevelopmentTable = Plugin.Src.Resources.Localization.TranslationDevelopmentTable
	local TranslationReferenceTable = Plugin.Src.Resources.Localization.TranslationReferenceTable

	local localization = Localization.new({
		pluginName = "AlignmentTool",
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
	})

	local store = Rodux.Store.new(MainReducer, nil, { Rodux.thunkMiddleware })

	local CalloutController = require(Plugin.Src.Utility.CalloutController)
	local calloutController = CalloutController.new()
	do
		local definitionId = "AlignToolCallout"

		local title = localization:getText("Callout", "Title")
		local description = localization:getText("Callout", "Description")
		local learnMoreUrl = "https://developer.roblox.com/en-us/resources/studio/Align-Tool"

		calloutController:defineCallout(definitionId, title, description, learnMoreUrl)
	end

	local inspector = nil
	if getFFlagAlignToolRoactInspector() then
		if game:GetService("StudioService"):HasInternalPermission() then
			inspector = Framework.DeveloperTools.forPlugin(Plugin.Name, plugin)

			Roact.setGlobalConfig({
				elementTracing = true,
			})
		end
	end

	local function main()
		local pluginHandle = nil

		local function onPluginUnloading()
			if inspector then
				inspector:destroy()
				inspector = nil
			end

			if pluginHandle then
				Roact.unmount(pluginHandle)
				pluginHandle = nil
			end
		end

		local pluginGui = ContextServices.provide({
			ContextServices.Plugin.new(plugin),
			localization,
			MakeTheme(),
			Mouse.new(plugin:GetMouse()),
			Store.new(store),
			Analytics.new(analyticsHandlers),
			calloutController, -- nil if FFlagAlignToolTeachingCallout is false
		}, {
			AlignTool = Roact.createElement(AlignmentToolPlugin, {
				pluginLoaderContext = pluginLoaderContext
			}),
		})

		pluginHandle = Roact.mount(pluginGui)

		if inspector then
			inspector:addRoactTree("Roact tree", pluginHandle)
		end

		plugin.Unloading:Connect(onPluginUnloading)
	end

	main()
end
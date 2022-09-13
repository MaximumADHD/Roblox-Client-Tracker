return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

	local Plugin = script.Parent.Parent

	local FFlagTerrainToolsImportUploadAssets = game:GetFastFlag("TerrainToolsImportUploadAssets")

	-- Libraries
	local Framework = require(Plugin.Packages.Framework)
	local Roact = require(Plugin.Packages.Roact)
	local Rodux = require(Plugin.Packages.Rodux)

	-- Context
	local ContextServices = Framework.ContextServices
	local Analytics = ContextServices.Analytics
	local Mouse = ContextServices.Mouse
	local Store = ContextServices.Store
	local Localization = ContextServices.Localization

	local ContextItems = require(Plugin.Src.ContextItems)

	local createAnalyticsHandlers = require(Plugin.Src.Util.createAnalyticsHandlers)

	local Http = Framework.Http

	-- Rodux Store
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)

	-- Theme
	local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
	local makeTheme = require(Plugin.Src.Resources.makeTheme)

	-- Localization
	local SourceStrings = Plugin.Src.Resources.SourceStrings
	local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings

	-- Terrain Context Items
	local PluginActionsController = require(Plugin.Src.Util.PluginActionsController)
	local PluginActivationController = require(Plugin.Src.Util.PluginActivationController)
	local TerrainImporter = require(Plugin.Src.TerrainInterfaces.TerrainImporterInstance)
	local TerrainGeneration = require(Plugin.Src.TerrainInterfaces.TerrainGenerationInstance)
	local TerrainSeaLevel = require(Plugin.Src.TerrainInterfaces.TerrainSeaLevel)

	local ImageUploader = require(Plugin.Src.Util.ImageUploader)
	local ImageLoader = require(Plugin.Src.Util.ImageLoader)

	-- Top Level Component
	local TerrainTools = require(Plugin.Src.Components.TerrainTools)

	-- Plugin Specific Globals
	local PLUGIN_NAME = "TerrainToolsV2"

	local function createTerrainContextItems()
		local pluginItem = ContextServices.Plugin.new(plugin)
		local mouse = Mouse.new(plugin:getMouse())

		local store = Store.new(Rodux.Store.new(MainReducer, nil, {}))

		local theme = ContextItems.UILibraryTheme.new(PluginTheme.new())
		local localization = Localization.new({
			pluginName = PLUGIN_NAME,
			stringResourceTable = SourceStrings,
			translationResourceTable = LocalizedStrings,
		})

		local pluginActions = {
			EditPlane = {
				allowBinding = false,
				defaultShortcut = "ctrl+shift+space",
				id = "EditPlane",
				statusTip = localization:getText("EditPlaneAction", "StatusTip"),
				text = localization:getText("EditPlaneAction", "Text"),
			}
		}

		local pluginActionsController = PluginActionsController.new(plugin, pluginActions)

		local networking
		local imageUploader
		if FFlagTerrainToolsImportUploadAssets then
			networking = Http.Networking.new({
				isInternal = true,
			})

			imageUploader = ImageUploader.new(networking)
		end

		local analytics = Analytics.new(createAnalyticsHandlers)

		local terrainInstance = require(Plugin.Src.Util.getTerrain)()
		local terrainItem = ContextItems.Terrain.new(terrainInstance)
		local pluginActivationController = PluginActivationController.new(plugin)

		local terrainImporter = TerrainImporter.new({
			localization = localization,
			analytics = analytics,
			imageUploader = imageUploader,
		})

		local terrainGeneration = TerrainGeneration.new({
			terrain = terrainInstance,
			localization = localization,
			analytics = analytics,
		})

		local seaLevel = TerrainSeaLevel.new({
			terrain = terrainInstance,
			localization = localization,
		})

		local devFrameworkThemeItem = makeTheme()

		local imageLoader = ImageLoader.new()

		local calloutController = ContextItems.CalloutController.new()
		do
			local definitionId = "TerrainToolsColormapCallout"

			local title = localization:getText("ColormapCallout", "Title")
			local description = localization:getText("ColormapCallout", "Description")
			local learnMoreUrl = "https://developer.roblox.com/en-us/articles/importing-terrain-data"

			calloutController:defineCallout(definitionId, title, description, learnMoreUrl)
		end

		return {
			plugin = pluginItem,
			mouse = mouse,
			store = store,
			theme = theme,
			devFrameworkThemeItem = devFrameworkThemeItem,
			localization = localization,
			analytics = analytics,
			networking = networking,
			imageUploader = imageUploader,
			imageLoader = imageLoader,
			terrain = terrainItem,
			pluginActivationController = pluginActivationController,
			pluginActionsController = pluginActionsController,
			terrainImporter = terrainImporter,
			terrainGeneration = terrainGeneration,
			seaLevel = seaLevel,
			calloutController = calloutController,
		}
	end

	local function cleanupTerrainContextItems(contextItems)
		for _, item in pairs(contextItems) do
			pcall(function()
				item:destroy()
			end)
		end
	end

	local function main()
		local contextItems = createTerrainContextItems()

		contextItems.pluginLoaderContext = pluginLoaderContext

		local roactHandle = Roact.mount(Roact.createElement(TerrainTools, contextItems))

		local inspector
		-- StudioService isn't always available, so ignore if an error is thrown trying to access
		local ok, hasInternalPermission = pcall(function()
			return game:GetService("StudioService"):HasInternalPermission()
		end)

		if ok and hasInternalPermission then
			local inspector = Framework.DeveloperTools.forPlugin("Terrain Editor", plugin)
			inspector:addRoactTree("Roact tree", roactHandle, Roact)
		end

		plugin.Unloading:Connect(function()
			if roactHandle then
				Roact.unmount(roactHandle)
				roactHandle = nil
			end

			if inspector then
				inspector:destroy()
				inspector = nil
			end

			cleanupTerrainContextItems(contextItems)
		end)
	end

	main()
end

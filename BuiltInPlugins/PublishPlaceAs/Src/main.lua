return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

	local FFlagImprovePluginSpeed_PublishPlaceAs = game:GetFastFlag("ImprovePluginSpeed_PublishPlaceAs")
	local FFlagPluginDockWidgetsUseNonTranslatedIds = game:GetFastFlag("PluginDockWidgetsUseNonTranslatedIds")
	-- Fast flags
	if not FFlagImprovePluginSpeed_PublishPlaceAs then
		-- Move to loader.server.lua
		require(script.Parent.Parent.TestRunner.defineLuaFlags)
	end
	local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")
	local FFlagStudioNewGamesInCloudUI = game:GetFastFlag("StudioNewGamesInCloudUI")

	--Turn this on when debugging the store and actions
	local LOG_STORE_STATE_AND_EVENTS = false

	-- libraries
	local Plugin = script.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local Rodux = require(Plugin.Packages.Rodux)
	local Framework = require(Plugin.Packages.Framework)

	-- context services
	local ContextServices = Framework.ContextServices
	local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
	local UILibraryWrapper = ContextServices.UILibraryWrapper

	-- components
	local ScreenSelect = require(Plugin.Src.Components.ScreenSelect)

	-- data
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)
	local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)
	local ResetInfo = require(Plugin.Src.Actions.ResetInfo)

	if LOG_STORE_STATE_AND_EVENTS then
		table.insert(MainMiddleware, Rodux.loggerMiddleware)
	end

	-- theme
	local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

	-- localization
	local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
	local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

	-- Plugin Specific Globals
	local StudioService = game:GetService("StudioService")
	local dataStore = Rodux.Store.new(MainReducer, {}, MainMiddleware)
	local theme = PluginTheme.new()
	local localization = ContextServices.Localization.new({
		pluginName = FFlagPluginDockWidgetsUseNonTranslatedIds and Plugin.Name or "PublishPlaceAs",
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
	})

	-- Widget Gui Elements
	local pluginHandle
	local pluginGui

	local SetIsPublishing = require(Plugin.Src.Actions.SetIsPublishing)

	local function closePlugin()
		if pluginHandle then
			Roact.unmount(pluginHandle)
		end
		pluginGui.Enabled = false
	end

	local initialWindowHeight = 650
	if FFlagStudioAllowRemoteSaveBeforePublish then
		initialWindowHeight = 720
	end

	local function makePluginGui()
		local pluginId = FFlagPluginDockWidgetsUseNonTranslatedIds and Plugin.Name or plugin.Name
		pluginGui = plugin:CreateQWidgetPluginGui(pluginId, {
			Size = Vector2.new(960, initialWindowHeight),
			MinSize = Vector2.new(890, 550),
			MaxSize = Vector2.new(960, 750),
			Resizable = true,
			Modal = true,
			InitialEnabled = false,
		})
		pluginGui.Name = FFlagPluginDockWidgetsUseNonTranslatedIds and Plugin.Name or plugin.Name
		pluginGui.Title = FFlagPluginDockWidgetsUseNonTranslatedIds and localization:getText("General", "PublishPlace") or plugin.Name
		pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		pluginGui:BindToClose(function()
			closePlugin()
		end)
	end

	--Initializes and populates the plugin popup window
	local function openPluginWindow(showGameSelect, isPublish, closeMode)
		local servicesProvider = Roact.createElement(ServiceWrapper, {
			focusGui = pluginGui,
			localization = localization,
			mouse = plugin:getMouse(),
			plugin = plugin,
			store = dataStore,
			theme = theme,
			uiLibraryWrapper = UILibraryWrapper.new(),
		}, {
			Roact.createElement(ScreenSelect, {
				OnClose = closePlugin,
				IsPublish = isPublish,
				CloseMode = closeMode,
				IsSaveOrPublishAs = showGameSelect,
			})
		})

		dataStore:dispatch(ResetInfo(localization:getText("General", "UntitledGame"), showGameSelect))

		pluginHandle = Roact.mount(servicesProvider, pluginGui)
		pluginGui.Enabled = true
	end

	local function main()
		plugin.Name = FFlagPluginDockWidgetsUseNonTranslatedIds and Plugin.Name or localization:getText("General", "PublishPlace")
		makePluginGui()

		if FFlagImprovePluginSpeed_PublishPlaceAs then
			if FFlagStudioAllowRemoteSaveBeforePublish then
				pluginLoaderContext.signals["StudioService.OnSaveOrPublishPlaceToRoblox"]:Connect(function(showGameSelect, isPublish, closeMode)
					if FFlagStudioNewGamesInCloudUI then
						if isPublish then
							pluginGui.Title = localization:getText("General", "PublishGame")
						else
							pluginGui.Title = localization:getText("General", "SaveGame")
						end
					else
						if isPublish then
							pluginGui.Title = localization:getText("General", "PublishPlace")
						else
							pluginGui.Title = localization:getText("General", "SavePlace")
						end
					end
					openPluginWindow(showGameSelect, isPublish, closeMode)
				end)
			else
				pluginLoaderContext.signals["StudioService.OnPublishPlaceToRoblox"]:Connect(function(isOverwritePublish)
					openPluginWindow(isOverwritePublish)
				end)
			end

			pluginLoaderContext.signals["StudioService.GamePublishFinished"]:Connect(function(success)
				dataStore:dispatch(SetIsPublishing(false))
			end)
		else
			if FFlagStudioAllowRemoteSaveBeforePublish then
				StudioService.OnSaveOrPublishPlaceToRoblox:Connect(function(showGameSelect, isPublish, closeMode)
					if FFlagStudioNewGamesInCloudUI then
						if isPublish then
							pluginGui.Title = localization:getText("General", "PublishGame")
						else
							pluginGui.Title = localization:getText("General", "SaveGame")
						end
					else
						if isPublish then
							pluginGui.Title = localization:getText("General", "PublishPlace")
						else
							pluginGui.Title = localization:getText("General", "SavePlace")
						end
					end
					openPluginWindow(showGameSelect, isPublish, closeMode)
				end)
			else
				StudioService.OnPublishPlaceToRoblox:Connect(function(isOverwritePublish)
					openPluginWindow(isOverwritePublish)
				end)
			end

			StudioService.GamePublishFinished:connect(function(success)
				dataStore:dispatch(SetIsPublishing(false))
			end)
		end
	end

	main()
end

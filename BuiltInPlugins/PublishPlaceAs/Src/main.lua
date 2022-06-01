local FFlagDebugBuiltInPluginModalsNotBlocking = game:GetFastFlag("DebugBuiltInPluginModalsNotBlocking")
return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

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
	local MakeTheme = require(Plugin.Src.Resources.MakeTheme)

	-- localization
	local SourceStrings = Plugin.Src.Resources.SourceStrings
	local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings

	-- Plugin Specific Globals
	local StudioService = game:GetService("StudioService")
	local dataStore = Rodux.Store.new(MainReducer, {}, MainMiddleware)
	local localization = ContextServices.Localization.new({
		pluginName = Plugin.Name,
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
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

	local function makePluginGui()
		local pluginId = Plugin.Name
		pluginGui = plugin:CreateQWidgetPluginGui(pluginId, {
			Size = Vector2.new(960, 720),
			MinSize = Vector2.new(890, 550),
			MaxSize = Vector2.new(960, 750),
			Resizable = true,
			Modal = not FFlagDebugBuiltInPluginModalsNotBlocking,
			InitialEnabled = false,
		})
		pluginGui.Name = Plugin.Name
		pluginGui.Title = localization:getText("General", "PublishPlace")
		pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		pluginGui:BindToClose(function()
			closePlugin()
		end)
	end

	local CalloutController = require(Plugin.Src.Util.CalloutController)
	local calloutController = CalloutController.new()

	local title = localization:getText("TcToggleCallout", "Title")
	local definitionId = "PublishPlaceAsTeamCreateToggleCallout"
	local description = localization:getText("TcToggleCallout", "Description")
	local learnMoreUrl = game:GetFastString("TeamCreateLink")

	calloutController:defineCallout(definitionId, title, description, learnMoreUrl)

	--Initializes and populates the plugin popup window
	local function openPluginWindow(showGameSelect, isPublish, closeMode)
		local servicesProvider = Roact.createElement(ServiceWrapper, {
			focusGui = pluginGui,
			localization = localization,
			mouse = plugin:getMouse(),
			plugin = plugin,
			store = dataStore,
			theme = MakeTheme(),
			uiLibraryWrapper = UILibraryWrapper.new(),
			calloutController = calloutController,
		}, {
			Roact.createElement(ScreenSelect, {
				OnClose = closePlugin,
				IsPublish = isPublish,
				CloseMode = closeMode,
				IsSaveOrPublishAs = showGameSelect,
			}),
		})

		dataStore:dispatch(ResetInfo(localization:getText("General", "UntitledGame"), showGameSelect))

		pluginHandle = Roact.mount(servicesProvider, pluginGui)
		pluginGui.Enabled = true
	end

	local function main()
		plugin.Name = Plugin.Name
		makePluginGui()
			pluginLoaderContext.signals["StudioService.OnSaveOrPublishPlaceToRoblox"]:Connect(
				function(showGameSelect, isPublish, closeMode)
						if isPublish then
							pluginGui.Title = localization:getText("General", "PublishGame")
						else
							pluginGui.Title = localization:getText("General", "SaveGame")
						end
					openPluginWindow(showGameSelect, isPublish, closeMode)
				end
			)

		pluginLoaderContext.signals["StudioService.GamePublishFinished"]:Connect(function(success)
			dataStore:dispatch(SetIsPublishing(false))
		end)
	end
	main()
end

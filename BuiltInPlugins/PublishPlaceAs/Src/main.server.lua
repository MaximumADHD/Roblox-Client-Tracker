if not plugin then
	return
end

-- Fast flags
local FFlagStudioLuaPublishFlowLocalizeUntitledGameText = game:DefineFastFlag("StudioLuaPublishFlowLocalizeUntitledGameText", false)
local FFlagLuaPublishFlowFixCreateButtonInChinese = game:DefineFastFlag("LuaPublishFlowFixCreateButtonInChinese", false)
local FFlagLuaPublishFlowFixPluginHandleWarning = game:DefineFastFlag("LuaPublishFlowFixPluginHandleWarning", false)
local FFlagStudioPublishLuaWorkflow = game:GetFastFlag("StudioPublishLuaWorkflow")

-- libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)

-- components
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local ScreenSelect = require(Plugin.Src.Components.ScreenSelect)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)
local ResetInfo = require(Plugin.Src.Actions.ResetInfo)

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local Localization = UILibrary.Studio.Localization

-- Plugin Specific Globals
local StudioService = game:GetService("StudioService")
local dataStore = Rodux.Store.new(MainReducer, {}, MainMiddleware)
local theme = PluginTheme.new()
local localization = Localization.new({
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
	pluginName = "PublishPlaceAs",
})

-- Widget Gui Elements
local pluginHandle
local pluginGui

local SetIsPublishing = require(Plugin.Src.Actions.SetIsPublishing)

local function closePlugin()
	if pluginHandle then
		Roact.unmount(pluginHandle)
		if not FFlagLuaPublishFlowFixPluginHandleWarning then
			pluginHandle = nil
		end
	end
	pluginGui.Enabled = false
end

local function makePluginGui()
	pluginGui = plugin:CreateQWidgetPluginGui(plugin.Name, {
		Size = Vector2.new(960, 650),
		MinSize = Vector2.new(890, 550),
		MaxSize = Vector2.new(960, 650),
		Resizable = true,
		Modal = true,
		InitialEnabled = false,
	})
	pluginGui.Name = plugin.Name
	pluginGui.Title = plugin.Name
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	pluginGui:BindToClose(function()
		closePlugin()
	end)
end

--Initializes and populates the plugin popup window
local function openPluginWindow(isOverwritePublish)
	if not FFlagLuaPublishFlowFixPluginHandleWarning then
		if pluginHandle then
			warn("Plugin handle already exists")
			return
		end
	end

	local servicesProvider = Roact.createElement(ServiceWrapper, {
		plugin = plugin,
		localization = localization,
		theme = theme,
		focusGui = pluginGui,
		store = dataStore,
	}, {
		Roact.createElement(ScreenSelect, {
			OnClose = closePlugin,
		})
	})

	if FFlagStudioPublishLuaWorkflow then
		if FFlagStudioLuaPublishFlowLocalizeUntitledGameText then
			dataStore:dispatch(ResetInfo(localization:getText("General", "UntitledGame"), isOverwritePublish))
		else
			dataStore:dispatch(ResetInfo("", isOverwritePublish))
		end
	else
		if FFlagStudioLuaPublishFlowLocalizeUntitledGameText then
			dataStore:dispatch(ResetInfo(localization:getText("General", "UntitledGame")))
		else
			dataStore:dispatch(ResetInfo())
		end
	end

	pluginHandle = Roact.mount(servicesProvider, pluginGui)
	pluginGui.Enabled = true
end

local function main()
	plugin.Name = localization:getText("General", "PublishPlace")
	makePluginGui()

	if FFlagStudioPublishLuaWorkflow then
		StudioService.OnPublishPlaceToRoblox:Connect(function(isOverwritePublish)
			openPluginWindow(isOverwritePublish)	
		end)
	else
		StudioService.DEPRECATED_OnPublishPlaceToRoblox:Connect(function()
			openPluginWindow(false)	
		end)
	end

	StudioService.GamePublishFinished:connect(function(success)
		dataStore:dispatch(SetIsPublishing(false))
	end)
end

main()

if not plugin then
	return
end

-- Fast flags
require(script.Parent.Parent.TestRunner.defineLuaFlags)
local FFlagStudioLuaPublishFlowLocalizeUntitledGameText = game:DefineFastFlag("StudioLuaPublishFlowLocalizeUntitledGameText", false)
local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")

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
	end
	pluginGui.Enabled = false
end

local initialWindowHeight = 650
if FFlagStudioAllowRemoteSaveBeforePublish then
	initialWindowHeight = 720
end

local function makePluginGui()
	pluginGui = plugin:CreateQWidgetPluginGui(plugin.Name, {
		Size = Vector2.new(960, initialWindowHeight),
		MinSize = Vector2.new(890, 550),
		MaxSize = Vector2.new(960, 750),
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
local function openPluginWindow(showGameSelect, isPublish, closeAfterSave)
	local servicesProvider = Roact.createElement(ServiceWrapper, {
		plugin = plugin,
		localization = localization,
		theme = theme,
		focusGui = pluginGui,
		store = dataStore,
	}, {
		Roact.createElement(ScreenSelect, {
			OnClose = closePlugin,
			IsPublish = isPublish,
			CloseAfterSave = closeAfterSave,
		})
	})

    if FFlagStudioLuaPublishFlowLocalizeUntitledGameText then
        dataStore:dispatch(ResetInfo(localization:getText("General", "UntitledGame"), showGameSelect))
    else
        dataStore:dispatch(ResetInfo("", showGameSelect))
    end

	pluginHandle = Roact.mount(servicesProvider, pluginGui)
	pluginGui.Enabled = true
end

local function main()
	plugin.Name = localization:getText("General", "PublishPlace")
	makePluginGui()

	if FFlagStudioAllowRemoteSaveBeforePublish then
		StudioService.OnSaveOrPublishPlaceToRoblox:Connect(function(showGameSelect, isPublish, closeAfterSave)
			if isPublish then
				pluginGui.Title = localization:getText("General", "PublishPlace")
			else
				pluginGui.Title = localization:getText("General", "SavePlace")
			end
			openPluginWindow(showGameSelect, isPublish, closeAfterSave)
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

main()

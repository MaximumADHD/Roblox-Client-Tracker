if not plugin then
	return
end

-- Fast flags
local FFlagPublishPlaceToRobloxLuaPlugin = settings():GetFFlag("PublishPlaceToRobloxLuaPlugin")

if not FFlagPublishPlaceToRobloxLuaPlugin then
	return
end

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
local ResetStore = require(Plugin.Src.Thunks.ResetStore)

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

local function makePluginGui()
	pluginGui = plugin:CreateQWidgetPluginGui(plugin.Name, {
		Size = Vector2.new(960, 600),
		MinSize = Vector2.new(960, 600),
		Resizable = true,
		Modal = true,
		InitialEnabled = false,
	})
	pluginGui.Name = plugin.Name
	pluginGui.Title = plugin.Name
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	pluginGui:GetPropertyChangedSignal("Enabled"):connect(function()
		-- Handle if user clicked the X button to close the window
		if not pluginGui.Enabled then
			if pluginHandle then
				Roact.unmount(pluginHandle)
				pluginHandle = nil
			end
		end
	end)
end

local function closePlugin()
	Roact.unmount(pluginHandle)
	pluginHandle = nil
	pluginGui.Enabled = false
end

--Initializes and populates the plugin popup window
local function openPluginWindow()
	if pluginHandle then
		warn("Plugin handle already exists")
		return
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

	dataStore:dispatch(ResetStore())
	pluginHandle = Roact.mount(servicesProvider, pluginGui)
	pluginGui.Enabled = true
end

local function main()
	plugin.Name = localization:getText("General", "PublishPlace")
	makePluginGui()

	StudioService.OnPublishPlaceToRoblox:connect(function()
		openPluginWindow()
	end)
end

main()

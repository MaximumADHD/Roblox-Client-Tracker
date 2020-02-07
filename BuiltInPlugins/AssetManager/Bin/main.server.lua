if not plugin then
	return
end

-- Fast flags
local FastFlags = require(script.parent.defineLuaFlags)
local OverrideLocaleId = settings():GetFVariable("StudioForceLocale")

local FFlagAssetManagerLuaPlugin = FastFlags.AssetManagerLuaPlugin

if not FFlagAssetManagerLuaPlugin then
	return
end

local StudioService = game:GetService("StudioService")

-- libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)

-- context services
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local UILibraryWrapper = require(Plugin.Packages.Framework.ContextServices.UILibraryWrapper)
local Networking = require(Plugin.Packages.Framework.Http.Networking)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

-- middleware
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local Asset_Manager_META_NAME = "Asset Manager"
local PLUGIN_NAME = "AssetManager"
local TOOLBAR_NAME = "Assets"
local DOCK_WIDGET_PLUGIN_NAME = "AssetManager_PluginGui"

-- Plugin Specific Globals
local store = Rodux.Store.new(MainReducer, {}, MainMiddleware)
local theme = PluginTheme.makePluginTheme()
local localization = ContextServices.Localization.new({
	pluginName = PLUGIN_NAME,
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
	overrideLocaleChangedSignal = StudioService:GetPropertyChangedSignal("StudioLocaleId"),
	getLocale = function()
		if #OverrideLocaleId > 0 then
			return OverrideLocaleId
		else
			return StudioService["StudioLocaleId"]
		end
	end,
})

-- Widget Gui Elements
local pluginHandle
local pluginGui

--Initializes and populates the plugin popup window
local function openPluginWindow()
	if pluginHandle then
		warn("Plugin handle already exists")
		return
	end

	-- create the roact tree
	local MainProvider = ContextServices.provide({
		ContextServices.Plugin.new(plugin),
		ContextServices.Focus.new(pluginGui),
		localization,
		ContextServices.Theme.new(theme),
		UILibraryWrapper.new(),
		ContextServices.Store.new(store),
		ContextServices.Mouse.new(plugin:getMouse()),
		ContextServices.Networking.new(Networking.new())
	}, {
		-- Replace with main view
		MainView = Roact.createElement("Frame", {  }),
	})

	pluginHandle = Roact.mount(MainProvider, pluginGui)
end

--Closes and unmounts the plugin popup window
local function closePluginWindow()
	if pluginHandle then
		Roact.unmount(pluginHandle)
		pluginHandle = nil
	end
end

local function toggleWidget()
	pluginGui.Enabled = not pluginGui.Enabled
end

local function onWidgetFocused()
end

local function onPluginUnloading()
	closePluginWindow()
end

--Binds a toolbar button
local function main()
	plugin.Name = "Asset Manager"
	local toolbar = plugin:CreateToolbar(TOOLBAR_NAME)
	local toolbarButton = toolbar:CreateButton(
		Asset_Manager_META_NAME,
		localization:getText("Main", "PluginButtonTooltip"),
		"rbxasset://textures/TerrainTools/icon_terrain_big.png",
		localization:getText("Main", "ToolbarButton")
	)

	toolbarButton.Click:connect(toggleWidget)

	local function showIfEnabled()
		if pluginGui.Enabled then
			openPluginWindow()
		else
			closePluginWindow()
		end

		-- toggle the plugin UI
		toolbarButton:SetActive(pluginGui.Enabled)
	end

	-- create the plugin
	local widgetInfo = DockWidgetPluginGuiInfo.new(
		Enum.InitialDockState.Left,  -- Widget will be initialized docked to the left
		true,   -- Widget will be initially enabled
		false,  -- Don't override the previous enabled state
		300,    -- Default width of the floating window
		600,    -- Default height of the floating window
		270,    -- Minimum width of the floating window (optional)
		256     -- Minimum height of the floating window (optional)
	)
	pluginGui = plugin:CreateDockWidgetPluginGui(DOCK_WIDGET_PLUGIN_NAME, widgetInfo)
	pluginGui.Name = localization:getText("Meta", "PluginName")
	pluginGui.Title = localization:getText("Main", "Title")

	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	pluginGui:GetPropertyChangedSignal("Enabled"):connect(showIfEnabled)

	-- configure the widget and button if its visible
	showIfEnabled()

	pluginGui.WindowFocused:Connect(onWidgetFocused)
	plugin.Unloading:Connect(onPluginUnloading)
end

main()

if not plugin then
	return
end

-- Fast flags
require(script.Parent.defineLuaFlags)

local OverrideLocaleId = settings():GetFVariable("StudioForceLocale")

local FFlagAssetManagerLuaPlugin = settings():GetFFlag("AssetManagerLuaPlugin")
local FFlagStudioAssetManagerAddRecentlyImportedView = game:GetFastFlag("StudioAssetManagerAddRecentlyImportedView")
local FFlagStudioShowHideABTestV2 = game:GetFastFlag("StudioShowHideABTestV2")

if not FFlagAssetManagerLuaPlugin then
	return
end

local BulkImportService = game:GetService("BulkImportService")
local StudioService = game:GetService("StudioService")

-- libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)

-- context services
local ContextServices = Framework.ContextServices
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local UILibraryWrapper = ContextServices.UILibraryWrapper

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

-- middleware
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

-- analytics
local AnalyticsHandlers = require(Plugin.Src.Resources.AnalyticsHandlers)

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local MainView = require(Plugin.Src.Components.MainView)

local SetBulkImporterRunning = require(Plugin.Src.Actions.SetBulkImporterRunning)
local SetRecentAssets = require(Plugin.Src.Actions.SetRecentAssets)
local SetRecentViewToggled = require(Plugin.Src.Actions.SetRecentViewToggled)

local PLUGIN_NAME = "AssetManager"
local TOOLBAR_NAME = "assetManagerToolbar"
local TOOLBAR_BUTTON_NAME = "assetManagerToolButton"
local DOCK_WIDGET_PLUGIN_NAME = "AssetManager_PluginGui"

local ABTEST_SHOWHIDEV2_NAME = "AllUsers.RobloxStudio.ShowHideV2"

-- Plugin Specific Globals
local store = Rodux.Store.new(MainReducer, {}, MainMiddleware)
local theme = PluginTheme:makePluginTheme()
local analytics = ContextServices.Analytics.new(AnalyticsHandlers)
local localization = ContextServices.Localization.new({
	pluginName = PLUGIN_NAME,
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
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
	local pluginElement = Roact.createElement(ServiceWrapper, {
		plugin = plugin,
		analytics = analytics,
		focusGui = pluginGui,
		localization = localization,
		theme = theme,
		uiLibWrapper = UILibraryWrapper.new(),
		store = store,
		mouse = plugin:getMouse(),
	}, {
		MainView = Roact.createElement(MainView, {}),
	})

	pluginHandle = Roact.mount(pluginElement, pluginGui)
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

local function onPluginUnloading()
	closePluginWindow()
end

local function connectBulkImporterSignals()
	BulkImportService.BulkImportStarted:connect(function()
		store:dispatch(SetBulkImporterRunning(true))
		if FFlagStudioAssetManagerAddRecentlyImportedView then
			store:dispatch(SetRecentAssets({}))
		end
	end)
	BulkImportService.BulkImportFinished:connect(function(state)
		store:dispatch(SetBulkImporterRunning(false))
		if FFlagStudioAssetManagerAddRecentlyImportedView then
			local state = store:getState()
			if #state.AssetManagerReducer.recentAssets > 0 then
				store:dispatch(SetRecentViewToggled(true))
			end
		end
	end)
	if FFlagStudioAssetManagerAddRecentlyImportedView then
		BulkImportService.AssetImported:connect(function(assetType, name, id)
			local state = store:getState()
			local strippedName
			if assetType == Enum.AssetType.Image and string.find(name, "Images/") then
				strippedName = string.gsub(name, "Images/", "")
			elseif assetType == Enum.AssetType.MeshPart and string.find(name, "Meshes/") then
				strippedName = string.gsub(name, "Meshes/", "")
			elseif assetType == Enum.AssetType.Lua and string.find(name, "Scripts/") then
				strippedName = string.gsub(name, "Scripts/", "")
			end
			local recentAssets = Cryo.List.join(state.AssetManagerReducer.recentAssets, {
				{
					assetType = assetType,
					name = strippedName,
					id = id,
				},
			})
			store:dispatch(SetRecentAssets(recentAssets))
		end)
	end
end

--Binds a toolbar button
local function main()
	plugin.Name = PLUGIN_NAME
	local toolbar = plugin:CreateToolbar(TOOLBAR_NAME)
	local toolbarButton = toolbar:CreateButton(
		TOOLBAR_BUTTON_NAME,
		localization:getText("Main", "Tooltip"),
		"rbxasset://textures/AssetManager/explorer.png",
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

	local initiallyEnabled = true
	if FFlagStudioShowHideABTestV2 then
		local variation = Framework.Util.getTestVariation(ABTEST_SHOWHIDEV2_NAME)
		if variation == 2 then
			initiallyEnabled = false
		end
	end

	-- create the plugin
	local widgetInfo = DockWidgetPluginGuiInfo.new(
		Enum.InitialDockState.Left,  -- Widget will be initialized docked to the left
		initiallyEnabled,   -- Widget will be initially enabled
		false,  -- Don't override the previous enabled state
		300,    -- Default width of the floating window
		600,    -- Default height of the floating window
		270,    -- Minimum width of the floating window (optional)
		256     -- Minimum height of the floating window (optional)
	)
	pluginGui = plugin:CreateDockWidgetPluginGui(DOCK_WIDGET_PLUGIN_NAME, widgetInfo)
	pluginGui.Name = localization:getText("Meta", "PluginName")
	pluginGui.Title = localization:getText("Main", "Title")

	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	pluginGui:GetPropertyChangedSignal("Enabled"):connect(showIfEnabled)

	-- configure the widget and button if its visible
	showIfEnabled()

	plugin.Unloading:Connect(onPluginUnloading)
	connectBulkImporterSignals()
end

main()

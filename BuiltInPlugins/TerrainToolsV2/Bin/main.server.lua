if not plugin then
	return
end

local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

-- Fast flags
require(script.Parent.defineLuaFlags)
if game:GetFastFlag("TerrainToolsUseDevFramework") then
	return
end

local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")
local FFlagTerrainOpenCloseMetrics = game:GetFastFlag("TerrainOpenCloseMetrics")

-- Services
local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")
-- libraries
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local Manager = require(Plugin.Src.Components.Manager) -- top most ui component
local PluginActivationController = require(Plugin.Src.Util.PluginActivationController)
local ToolSelectionListener = require(Plugin.Src.Components.ToolSelectionListener)
local TerrainImporter = require(Plugin.Src.TerrainInterfaces.TerrainImporterInstance)
local TerrainGeneration = require(Plugin.Src.TerrainInterfaces.TerrainGenerationInstance)
local TerrainSeaLevel = require(Plugin.Src.TerrainInterfaces.TerrainSeaLevel)
local PartConverter
if FFlagTerrainToolsConvertPartTool then
	PartConverter = require(Plugin.Src.TerrainInterfaces.PartConverter)
end

-- components
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

-- middleware
local getReportTerrainToolMetrics = require(Plugin.Src.Middlewares.getReportTerrainToolMetrics)

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- localization
local DevelopmentReferenceTable = Plugin.Src.Resources.DevelopmentReferenceTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local Localization = UILibrary.Studio.Localization

local EDITOR_META_NAME = "Editor"
local PLUGIN_NAME = "TerrainToolsV2"
local TOOLBAR_NAME = "TerrainToolsLuaToolbarName"
local DOCK_WIDGET_PLUGIN_NAME = "TerrainTools_PluginGui"

local OPEN_COUNTER
local CLOSE_COUNTER
local TOGGLE_COUNTER

if FFlagTerrainOpenCloseMetrics then
	OPEN_COUNTER = "TerrainToolsOpenWidget"
	CLOSE_COUNTER = "TerrainToolsCloseWidget"
	TOGGLE_COUNTER = "TerrainToolsToggleButton"
end

-- Plugin Specific Globals
local dataStore = Rodux.Store.new(MainReducer, nil, {
	getReportTerrainToolMetrics({
		AnalyticsService = AnalyticsService,
		StudioService = StudioService,
	}),
})

local theme = PluginTheme.new()
local localization = Localization.new({
	pluginName = PLUGIN_NAME,
	stringResourceTable = DevelopmentReferenceTable,
	translationResourceTable = TranslationReferenceTable,
})

local terrain = require(Plugin.Src.Util.getTerrain)()
local pluginActivationController = PluginActivationController.new(plugin)
local terrainImporter = TerrainImporter.new({
	terrain = terrain,
	localization = localization,
})
local terrainGeneration = TerrainGeneration.new({
	terrain = terrain,
	localization = localization,
})
local seaLevel = TerrainSeaLevel.new({
	terrain = terrain,
	localization = localization,
})
local partConverter
if FFlagTerrainToolsConvertPartTool then
	partConverter = PartConverter.new({
		terrain = terrain,
		localization = localization,
	})
end

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
	local servicesProvider = Roact.createElement(ServiceWrapper, {
		plugin = plugin,
		localization = localization,
		theme = theme,
		store = dataStore,

		terrain = terrain,
		pluginActivationController = pluginActivationController,
		terrainImporter = terrainImporter,
		terrainGeneration = terrainGeneration,
		seaLevel = seaLevel,
		partConverter = partConverter,
	}, {
		TerrainTools = Roact.createFragment({
			UIManager = Roact.createElement(Manager, {
				Name = Manager,
			}),

			ToolSelectionListener = Roact.createElement(ToolSelectionListener),
		}),
	})

	pluginHandle = Roact.mount(servicesProvider, pluginGui)

	-- Bring back the last tool the user was using, if there is one
	pluginActivationController:restoreSelectedTool()
end

--Closes and unmounts the plugin popup window
local function closePluginWindow()
	-- Save the tool the user's using for later
	pluginActivationController:pauseActivatedTool()

	if pluginHandle then
		Roact.unmount(pluginHandle)
		pluginHandle = nil
	end
end

local function toggleWidget()
	pluginGui.Enabled = not pluginGui.Enabled
	if FFlagTerrainOpenCloseMetrics then
		AnalyticsService:ReportCounter(TOGGLE_COUNTER, 1)
		AnalyticsService:SendEventDeferred("studio", "Terrain", "ToggleWidget", {
			userId = StudioService:GetUserId(),
			placeId = game.PlaceId,
		})
	end
end

local function onWidgetFocused()
	-- If another studio ribbon tool or plugin was selected, but the user's clicked on the terrain tools window
	-- Then assume that means they want to use the terrain tools again and activate the tool they were last using
	pluginActivationController:restoreSelectedTool()
end

local function onPluginUnloading()
	closePluginWindow()

	-- Because this persists "selected" tool state between opening and closing the plugin window
	-- We can't destroy it when unmounting the Roact tree when the plugin window closes (i.e. in TerrainInterfaceProvider)
	-- So instead destroy it when the plugin is unloading
	if pluginActivationController then
		pluginActivationController:destroy()
		pluginActivationController = nil
	end

	if terrainImporter then
		terrainImporter:destroy()
		terrainImporter = nil
	end

	if terrainGeneration then
		terrainGeneration:destroy()
		terrainGeneration = nil
	end

	if seaLevel then
		seaLevel:destroy()
		seaLevel = nil
	end

	if partConverter then
		partConverter:destroy()
		partConverter = nil
	end
end

--Binds a toolbar button
local function main()
	plugin.Name = "Terrain Editor"
	local toolbar = plugin:CreateToolbar(TOOLBAR_NAME)
	local exampleButton = toolbar:CreateButton(
		EDITOR_META_NAME,
		localization:getText("Main", "PluginButtonEditorTooltip"),
		"rbxasset://textures/TerrainTools/icon_terrain_big.png",
		localization:getText("Main", "ToolbarButton")
	)

	exampleButton.Click:Connect(toggleWidget)

	local function showIfEnabled()
		if pluginGui.Enabled then
			openPluginWindow()
			if FFlagTerrainOpenCloseMetrics then
				AnalyticsService:ReportCounter(OPEN_COUNTER, 1)
				AnalyticsService:SendEventDeferred("studio", "Terrain", "OpenWidget", {
					userId = StudioService:GetUserId(),
					placeId = game.PlaceId,
				})
			end
		else
			closePluginWindow()
			if FFlagTerrainOpenCloseMetrics then
				AnalyticsService:ReportCounter(CLOSE_COUNTER, 1)
					AnalyticsService:SendEventDeferred("studio", "Terrain", "CloseWidget", {
					userId = StudioService:GetUserId(),
					placeId = game.PlaceId,
				})
			end
		end

		-- toggle the plugin UI
		exampleButton:SetActive(pluginGui.Enabled)
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
	pluginGui:GetPropertyChangedSignal("Enabled"):Connect(showIfEnabled)

	-- configure the widget and button if its visible
	showIfEnabled()

	pluginGui.WindowFocused:Connect(onWidgetFocused)
	plugin.Unloading:Connect(onPluginUnloading)
end

main()

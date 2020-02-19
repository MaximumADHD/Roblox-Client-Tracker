local FFlagTerrainToolsUIUpdate = settings():GetFFlag("TerrainToolsUIUpdate")
if not FFlagTerrainToolsUIUpdate then
	return
end

if not plugin then
	return
end

-- Fast flags
require(script.Parent.defineLuaFlags)

local FFlagTerrainToolsSeaLevel = game:GetFastFlag("TerrainToolsSeaLevel")
local FFlagTerrainToolsFixGettingTerrain = game:GetFastFlag("TerrainToolsFixGettingTerrain")
local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")

-- services
local SelectionService = game:GetService("Selection")
local Workspace = game:GetService("Workspace")

-- libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local Manager = require(Plugin.Src.Components.Manager) -- top most ui component
local PluginActivationController = require(Plugin.Src.Util.PluginActivationController)
local TerrainBrush = require(Plugin.Src.TerrainInterfaces.TerrainBrushInstance)
local ToolSelectionListener = require(Plugin.Src.Components.ToolSelectionListener)
local TerrainImporter = require(Plugin.Src.TerrainInterfaces.TerrainImporterInstance)
local TerrainGeneration = require(Plugin.Src.TerrainInterfaces.TerrainGenerationInstance)
local TerrainSeaLevel
if FFlagTerrainToolsSeaLevel then
	TerrainSeaLevel = require(Plugin.Src.TerrainInterfaces.TerrainSeaLevel)
end
local PartConverter
if FFlagTerrainToolsConvertPartTool then
	PartConverter = require(Plugin.Src.TerrainInterfaces.PartConverter)
end

-- components
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

-- middleWare
local getReportTerrainToolMetrics = require(Plugin.Src.MiddleWare.getReportTerrainToolMetrics)

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

-- Plugin Specific Globals
local dataStore = Rodux.Store.new(MainReducer, nil, {
	getReportTerrainToolMetrics({
		AnalyticsService = game:GetService("RbxAnalyticsService"),
		StudioService = game:GetService("StudioService")
	}),
})

local theme = PluginTheme.new()
local localization = Localization.new({
	pluginName = PLUGIN_NAME,
	stringResourceTable = DevelopmentReferenceTable,
	translationResourceTable = TranslationReferenceTable,
})

local terrain = FFlagTerrainToolsFixGettingTerrain and require(Plugin.Src.Util.getTerrain)()
	or Workspace:WaitForChild("Terrain")
local pluginActivationController = PluginActivationController.new(plugin)
local terrainBrush = TerrainBrush.new({
	terrain = terrain,
	mouse = plugin:GetMouse(),
})
local terrainImporter = TerrainImporter.new({
	terrain = terrain,
	localization = localization,
})
local terrainGeneration = TerrainGeneration.new({
	terrain = terrain,
	localization = localization,
})

local seaLevel
if FFlagTerrainToolsSeaLevel then
	if FFlagTerrainToolsFixGettingTerrain then
		seaLevel = TerrainSeaLevel.new({
			terrain = terrain,
			localization = localization,
		})
	else
		seaLevel = TerrainSeaLevel.new(localization)
	end
end
local partConverter
if FFlagTerrainToolsConvertPartTool then
	partConverter = PartConverter.new({
		terrain = terrain,
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
		terrainBrush = terrainBrush,
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

	if terrainBrush then
		terrainBrush:destroy()
		terrainBrush = nil
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

	exampleButton.Click:connect(toggleWidget)

	local function showIfEnabled()
		if pluginGui.Enabled then
			openPluginWindow()
		else
			closePluginWindow()
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
	pluginGui:GetPropertyChangedSignal("Enabled"):connect(showIfEnabled)

	-- configure the widget and button if its visible
	showIfEnabled()

	pluginGui.WindowFocused:Connect(onWidgetFocused)
	plugin.Unloading:Connect(onPluginUnloading)
end

main()

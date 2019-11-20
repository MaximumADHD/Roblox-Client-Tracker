local FFlagTerrainToolsUIUpdate = settings():GetFFlag("TerrainToolsUIUpdate")
if not FFlagTerrainToolsUIUpdate then
	return
end

if not plugin then
	return
end

-- Fast flags
game:DefineFastFlag("TerrainToolsRefactorTabsAndTools", false)
game:DefineFastFlag("TerrainToolsEnablePivotPosition", false)
game:DefineFastFlag("TerrainToolsEnableHeightSlider", false)
game:DefineFastFlag("TerrainToolsRefactorTerrainBrush", false)
game:DefineFastFlag("TerrainToolsLargerBrush", false)
game:DefineFastFlag("TerrainToolsRefactorTerrainImporter", false)
game:DefineFastFlag("TerrainToolsHoldAltToSelectMaterial", false)

local FFlagTerrainToolsRefactorTerrainBrush = game:GetFastFlag("TerrainToolsRefactorTerrainBrush")

-- FFlagTerrainToolsRefactorTerrainImporter depends on FFlagTerrainToolsRefactorTerrainBrush
local FFlagTerrainToolsRefactorTerrainImporter = game:GetFastFlag("TerrainToolsRefactorTerrainImporter")

-- sea Level is now dependent on FFlagTerrainToolsRefactorTerrainBrush
local FFlagTerrainToolsSeaLevel = game:GetFastFlag("TerrainToolsSeaLevel")

-- services
local Workspace = game:GetService("Workspace")

-- libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local Manager = require(Plugin.Src.Components.Manager) -- top most ui component
local PluginActivationController
local TerrainBrush
local ToolSelectionListener
local TerrainImporter
if FFlagTerrainToolsRefactorTerrainBrush then
	PluginActivationController = require(Plugin.Src.Util.PluginActivationController)
	TerrainBrush = require(Plugin.Src.Components.Functions.TerrainBrushInstance)
	ToolSelectionListener = require(Plugin.Src.Components.ToolSelectionListener)
	if FFlagTerrainToolsRefactorTerrainImporter then
		TerrainImporter = require(Plugin.Src.Components.Functions.TerrainImporterInstance)
	end
end

local TerrainSeaLevel
if FFlagTerrainToolsSeaLevel then
	TerrainSeaLevel = require(Plugin.Src.Components.Functions.TerrainSeaLevel)
end

-- components
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)

-- actions
local ChangeTool = require(Plugin.Src.Actions.ChangeTool)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

-- middleWare
local getReportTerrainToolMetrics = require(Plugin.Src.MiddleWare.getReportTerrainToolMetrics)

-- util
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- localization
local DevelopmentReferenceTable = Plugin.Src.Resources.DevelopmentReferenceTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local Localization = UILibrary.Studio.Localization

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

local pluginActivationController
local terrainBrush
local terrainImporter
if FFlagTerrainToolsRefactorTerrainBrush then
	local terrain = Workspace:WaitForChild("Terrain")

	pluginActivationController = PluginActivationController.new(plugin)
	terrainBrush = TerrainBrush.new({
		pluginActivationController = pluginActivationController,
		mouse = plugin:GetMouse(),
		terrain = terrain
	})

	if FFlagTerrainToolsRefactorTerrainImporter then
		terrainImporter = TerrainImporter.new({
			terrain = terrain,
			localization = localization,
		})
	end
end

local seaLevel
if FFlagTerrainToolsSeaLevel then
	seaLevel = TerrainSeaLevel.new(localization)
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
	local servicesProvider
	if FFlagTerrainToolsRefactorTerrainBrush then
		servicesProvider = Roact.createElement(ServiceWrapper, {
			plugin = plugin,
			localization = localization,
			theme = theme,
			store = dataStore,

			pluginActivationController = pluginActivationController,
			terrainBrush = terrainBrush,
			terrainImporter = terrainImporter,
			seaLevel = seaLevel,
		}, {
			TerrainTools = Roact.createFragment({
				UIManager = Roact.createElement(Manager, {
					Name = Manager,
				}),

				ToolSelectionListener = Roact.createElement(ToolSelectionListener),
			}),
		})
	else
		servicesProvider = Roact.createElement(ServiceWrapper, {
			plugin = plugin,
			localization = localization,
			theme = theme,
			store = dataStore,
		}, {
			UIManager = Roact.createElement(Manager, {
				Name = Manager,
			}),
		})
	end

	pluginHandle = Roact.mount(servicesProvider, pluginGui)

	if FFlagTerrainToolsRefactorTerrainBrush then
		-- Bring back the last tool the user was using, if there is one
		pluginActivationController:restoreSelectedTool()
	else
		if plugin then
			plugin.Deactivation:connect(function()
				dataStore:dispatch(ChangeTool(ToolId.None))
			end)
		end
	end
end

--Closes and unmounts the plugin popup window
local function closePluginWindow()
	if FFlagTerrainToolsRefactorTerrainBrush then
		-- Save the tool the user's using for later
		pluginActivationController:pauseActivatedTool()
	end

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

	if seaLevel then
		seaLevel:destroy()
		seaLevel = nil
	end
end

--Binds a toolbar button
local function main()
	local pluginTitle = localization:getText("Meta", "PluginName")
	plugin.Name = "Terrain Editor"
	local toolbar = plugin:CreateToolbar(TOOLBAR_NAME)
	local exampleButton = toolbar:CreateButton(
		localization:getText("Meta", "PluginButtonEditor"),
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
		150     -- Minimum height of the floating window (optional)
	)
	pluginGui = plugin:CreateDockWidgetPluginGui(DOCK_WIDGET_PLUGIN_NAME, widgetInfo)
	pluginGui.Name = localization:getText("Meta", "PluginName")
	pluginGui.Title = localization:getText("Main", "Title")

	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	pluginGui:GetPropertyChangedSignal("Enabled"):connect(showIfEnabled)

	-- configure the widget and button if its visible
	showIfEnabled()

	if FFlagTerrainToolsRefactorTerrainBrush then
		pluginGui.WindowFocused:Connect(onWidgetFocused)
		plugin.Unloading:Connect(onPluginUnloading)
	end
end

main()

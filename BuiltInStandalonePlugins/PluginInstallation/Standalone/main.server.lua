if not settings():GetFFlag("StudioPluginInstallationInLua") then
	return
end

-- services


-- libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)

-- components
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local MainView = require(Plugin.Src.Components.MainView)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- actions

-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local Localization = UILibrary.Studio.Localization

-- Plugin Specific Globals
local dataStore = Rodux.Store.new(MainReducer)
local theme = PluginTheme.new()
local localization = Localization.new({
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
	pluginName = "PluginInstallation",
})




-- Widget Gui Elements
local pluginHandle
local pluginGui

--Initializes and populates the plugin popup window
local function openPluginWindow()
	if pluginHandle then
		return
	end

	-- create the roact tree
	local servicesProvider = Roact.createElement(ServiceWrapper, {
		plugin = plugin,
		localization = localization,
		theme = theme,
		store = dataStore,
	}, {
		MainView = Roact.createElement(MainView),
	})

	pluginHandle = Roact.mount(servicesProvider, pluginGui)
end

--Closes and unmounts the dockwidget window
local function closePluginWindow()
	if pluginHandle then
		Roact.unmount(pluginHandle)
		pluginHandle = nil
	end
end

local function main()
	plugin.Name = "PluginInstallation"

	local function showIfEnabled()
		if pluginGui.Enabled then
			openPluginWindow()
		else
			closePluginWindow()
		end
	end

	-- create the plugin
	local widgetInfo = DockWidgetPluginGuiInfo.new(
		Enum.InitialDockState.Float,  -- Widget will be initialized floating around
		false,   -- Widget will be initially enabled
		true,   -- Should override the previous enabled state
		300,    -- Default width of the floating window
		300,    -- Default height of the floating window
		150,    -- Minimum width of the floating window (optional)
		150     -- Minimum height of the floating window (optional)
	)
	pluginGui = plugin:CreateDockWidgetPluginGui(plugin.Name, widgetInfo)
	pluginGui.Name = plugin.Name
	pluginGui.Title = localization:getText("Meta", "PluginWindowName")
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	pluginGui:GetPropertyChangedSignal("Enabled"):connect(showIfEnabled)

	showIfEnabled()
end

main()
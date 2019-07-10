if not plugin then
	return
end

-- libraries
local Plugin = script.Parent.Parent
local FFlag = require(Plugin.Src.Util.FFlag)
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
	pluginName = "Sandbox",
})

-- Widget Gui Elements
local pluginHandle
local pluginGui

-- Fast flags

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
	}, {
		mainView = Roact.createElement(MainView, {
		}),
	})

	pluginHandle = Roact.mount(servicesProvider, pluginGui)
end

--Closes and unmounts the Skeleton Editor popup window
local function closePluginWindow()
	if pluginHandle then
		Roact.unmount(pluginHandle)
		pluginHandle = nil
	end
end

local function toggleWidget()
	pluginGui.Enabled = not pluginGui.Enabled
end


--Binds a toolbar button
local function main()
	local pluginTitle = localization:getText("Meta", "PluginName")
	plugin.Name = pluginTitle

	local toolbar = plugin:CreateToolbar("sandboxToolbar")
	local pluginButton = toolbar:CreateButton(
		"sandboxButton",
		localization:getText("Meta", "PluginButtonTooltip"),
		theme.values.PluginTheme.Icons.ToolbarIconInspect
	)

	pluginButton.ClickableWhenViewportHidden = true
	pluginButton.Click:connect(toggleWidget)

	local function showIfEnabled()
		if pluginGui.Enabled then
			openPluginWindow()
		else
			closePluginWindow()
		end

		-- toggle the plugin UI
		pluginButton:SetActive(pluginGui.Enabled)
	end

	-- create the plugin
	local widgetInfo = DockWidgetPluginGuiInfo.new(
		Enum.InitialDockState.Right,  -- Widget will be initialized docked to the right
		true,   -- Widget will be initially enabled
		false,  -- Don't override the previous enabled state
		300,    -- Default width of the floating window
		600,    -- Default height of the floating window
		150,    -- Minimum width of the floating window (optional)
		150     -- Minimum height of the floating window (optional)
	)
	pluginGui = plugin:CreateDockWidgetPluginGui(pluginTitle, widgetInfo)
	pluginGui.Name = pluginTitle
	pluginGui.Title = pluginTitle
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	pluginGui:GetPropertyChangedSignal("Enabled"):connect(showIfEnabled)

	-- configure the widget and button if its visible
	showIfEnabled()
end

if FFlag:isEnabled("StudioVersionControlAlpha") then
	main()
end
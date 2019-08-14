if not plugin then
	return
end

local Plugin = script.Parent.Parent

if not settings():GetFFlag("StudioVersionControlAlpha") then return end

local OverrideLocaleId = settings():GetFVariable("StudioForceLocale")

local StudioService = game:GetService("StudioService")

-- libraries
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)

-- components
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
local MainView = require(Plugin.Src.Components.MainView)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local DraftsLoadedAction = require(Plugin.Src.Actions.DraftsLoadedAction)
local DraftAddedAction = require(Plugin.Src.Actions.DraftAddedAction)
local DraftRemovedAction = require(Plugin.Src.Actions.DraftRemovedAction)

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local Localization = UILibrary.Studio.Localization

-- Plugin Specific Globals
local roduxStore = Rodux.Store.new(MainReducer)
local theme = PluginTheme.new()
local localization = Localization.new({
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
	pluginName = "Sandbox",
})

-- Services
local DraftsService = game:GetService("DraftsService")
local MockDraftsService = require(Plugin.Src.TestHelpers.MockDraftsService)

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
		store = roduxStore,
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

local function connectToDraftsService()
	if MockDraftsService:IsEnabled() then
		-- Use mock instead of real DraftsService
		DraftsService = MockDraftsService
	end

	-- Connect to events
	DraftsService.DraftAdded:connect(function(draft)
		roduxStore:dispatch(DraftAddedAction(draft))
	end)	
	DraftsService.DraftRemoved:connect(function(draft)
		roduxStore:dispatch(DraftRemovedAction(draft))
	end)
	DraftsService.ScriptRemoved:connect(function(draft)
		-- TODO: (mmcdonnell 8/6/2019) Handle ScriptRemoved. See CLISTUDIO-20039.
	end)
	DraftsService.ScriptServerVersionChanged:connect(function(draft)
		-- TODO: (mmcdonnell 8/6/2019) Handle ScriptServerVersionChanged. See CLISTUDIO-20043.
	end)
	DraftsService.UpdateStatusChanged:connect(function(draft, status)
		-- TODO: (mmcdonnell 8/6/2019) Handle UpdateStatusChanged. See CLISTUDIO-20044.
	end)
	DraftsService.CommitStatusChanged:connect(function(draft, status)
		-- TODO: (mmcdonnell 8/6/2019) Handle CommitStatusChanged. See CLISTUDIO-20045.
	end)

	-- Do initial population of widget
	spawn(function()
		local drafts = DraftsService:GetDrafts()
		roduxStore:dispatch(DraftsLoadedAction(drafts))
	end)
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

	connectToDraftsService()
end

main()
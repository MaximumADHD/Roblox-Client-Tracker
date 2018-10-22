if not plugin or not settings():GetFFlag("StudioLuaWidgetToolbox") then
	return
end

local Plugin = script.Parent.Parent

-- TODO CLILUACORE-295: With the core packages rewrite, this loop might be unnecessary
-- Currently, CorePackages isn't guarenteed to exist when plugins start running
-- So wait until it exists
local CorePackages
repeat
	wait()
	CorePackages = game:FindService("CorePackages")
until CorePackages

local Roact = require(CorePackages:WaitForChild("Roact"))
local Rodux = require(CorePackages:WaitForChild("Rodux"))

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local Constants = require(Plugin.Core.Util.Constants)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Images = require(Plugin.Core.Util.Images)
local MouseManager = require(Plugin.Core.Util.MouseManager)
local Settings = require(Plugin.Core.Util.Settings)
local ToolboxTheme = require(Plugin.Core.Util.ToolboxTheme)

local Background = require(Plugin.Core.Types.Background)
local Suggestion = require(Plugin.Core.Types.Suggestion)

local ExternalServicesWrapper = require(Plugin.Core.Components.ExternalServicesWrapper)
local Toolbox = require(Plugin.Core.Components.Toolbox)

local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)

local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)

-- TODO CLIDEVSRVS-1357: Improve mouse manager with support for changing icons, or remove it
-- Probably create a MouseProvider and MouseConsumer using Roact context
MouseManager:setPlugin(plugin)
MouseManager:clearIcons()

if DebugFlags.shouldRunTests() then
	local Tests = Plugin.Core
	local RunToolboxTests = require(Plugin.Core.RunToolboxTests)
	RunToolboxTests(Tests)
end

local function createTheme()
	if ToolboxTheme.enableLuaApisForTheme() then
		return ToolboxTheme.new({
			getTheme = function()
				return settings().Studio.Theme
			end,
			isDarkerTheme = function()
				-- Assume "darker" theme if the average main background colour is darker
				local mainColour = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
				return (mainColour.r + mainColour.g + mainColour.b) / 3 < 0.5
			end,
			themeChanged = settings().Studio.ThemeChanged,
		})
	else
		return ToolboxTheme.new({
			getTheme = function()
				return settings().Studio["UI Theme"]
			end,
			isDarkerTheme = function()
				return settings().Studio["UI Theme"] == Enum.UITheme.Dark
			end,
			themeChanged = settings().Studio:GetPropertyChangedSignal("UI Theme")
		})
	end
end

local function createToolbox(pluginGui)
	local store = Rodux.Store.new(ToolboxReducer, nil, {
		Rodux.thunkMiddleware
	})
	local settings = Settings.new(plugin)
	local theme = createTheme()
	local networkInterface = NetworkInterface.new()

	local props = {
		initialWidth = pluginGui and pluginGui.AbsoluteSize.x or Constants.TOOLBOX_MIN_WIDTH,
		backgrounds = Background.BACKGROUNDS,
		suggestions = Suggestion.SUGGESTIONS,
	}

	return Roact.createElement(ExternalServicesWrapper, {
		store = store,
		plugin = plugin,
		pluginGui = pluginGui,
		settings = settings,
		theme = theme,
		networkInterface = networkInterface,
	}, {
		Toolbox = Roact.createElement(Toolbox, props)
	})
end

local function main()
	local toolbar = plugin:CreateToolbar("luaToolboxToolbar")
	local toolboxButton = toolbar:CreateButton("luaToolboxButton", "Insert items from the toolbox", Images.TOOLBOX_ICON)

	local dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, true, false,
		0, 0, Constants.TOOLBOX_MIN_WIDTH, Constants.TOOLBOX_MIN_HEIGHT)
	local pluginGui = plugin:CreateDockWidgetPluginGui("Toolbox", dockWidgetPluginGuiInfo)
	pluginGui.Name = "Toolbox"
	pluginGui.Title = "Toolbox"
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	toolboxButton.Click:connect(function()
		pluginGui.Enabled = not pluginGui.Enabled
	end)

	toolboxButton:SetActive(pluginGui.Enabled)

	pluginGui:GetPropertyChangedSignal("Enabled"):connect(function()
		toolboxButton:SetActive(pluginGui.Enabled)
	end)

	local toolboxComponent = createToolbox(pluginGui)
	local toolboxHandle = Roact.mount(toolboxComponent, pluginGui, "Toolbox")

	-- Unmount the toolbox when the plugin gui is being destroyed
	pluginGui.AncestryChanged:connect(function(child, parent)
		if parent == nil and toolboxHandle then
			Analytics.sendReports(plugin)

			Roact.unmount(toolboxHandle)
		end
	end)
end

main()

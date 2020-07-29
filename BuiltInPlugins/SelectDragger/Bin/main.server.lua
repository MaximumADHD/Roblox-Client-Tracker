if not game:GetEngineFeature("LuaDraggers") then
	return
end

local RunService = game:GetService("RunService")

-- Libraries
local Plugin = script.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Roact = require(Plugin.Packages.Roact)

-- Dragger component
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)

local getFFlagDraggerAnalyticsCleanup = require(DraggerFramework.Flags.getFFlagDraggerAnalyticsCleanup)

local PLUGIN_NAME = "SelectDragger"
local DRAGGER_TOOL_NAME = "Select"
local TOOLBAR_NAME = "Home"

local pluginEnabled = false
local pluginHandle = nil
local toolButton = nil

-- Special case for the SelectDragger.
-- The SelectDragger is the tool that will be selected when plugins self
-- deactivate, to ensure that you don't unintentionally end up with no tool
-- selected.
-- But... SelectDragger itself, well, is a plugin. So, naturally, when you
-- attempt to deselect the SelectDragger, if it didn't do anything special,
-- studio would end up immediately reselecting the SelectDragger again.
-- To resolve this, we use this flag when deselecting the SelectDragger to
-- selectively ignore the reselect that studio sends us in that case.
local ignoreNextToolbarClick = false

local function openPlugin(wasAutoSelected)
	if pluginHandle then
		warn("Plugin handle already exists")
		return
	end

	if getFFlagDraggerAnalyticsCleanup() then
		assert(wasAutoSelected ~= nil)
	end

	pluginEnabled = true
	plugin:Activate(true)

	toolButton:SetActive(true)

	pluginHandle = Roact.mount(Roact.createElement(DraggerToolComponent, {
		AnalyticsName = "Select",
		Mouse = plugin:GetMouse(),
		AllowDragSelect = true,
		AllowFreeformDrag = true,
		ShowSelectionDot = false,
		DraggerContext = DraggerContext_PluginImpl.new(plugin, game, settings()),
		WasAutoSelected = wasAutoSelected,
	}))
end

local function closePlugin()
	pluginEnabled = false
	toolButton:SetActive(false)
	if pluginHandle then
		Roact.unmount(pluginHandle)
		pluginHandle = nil
	end
end

local function main()
	plugin.Name = PLUGIN_NAME
	local toolbar = plugin:CreateToolbar(TOOLBAR_NAME)
	toolButton = toolbar:CreateButton(
		DRAGGER_TOOL_NAME,
		"Select an Object",
		"",
		"Select"
	)

	plugin.Deactivation:connect(function()
		if pluginEnabled then
			closePlugin()
		end
	end)

	toolButton.Click:connect(function()
		if ignoreNextToolbarClick then
			-- We're about to leave no tool selected. With no tool selected,
			-- there's nothing to update the mouse icon. So we have to reset
			-- the mouse icon on the way out the door.
			plugin:GetMouse().Icon = ""
			ignoreNextToolbarClick = false
			return
		end

		if pluginEnabled then
			ignoreNextToolbarClick = true
			closePlugin()
		else
			if getFFlagDraggerAnalyticsCleanup() then
				openPlugin(false)
			else
				openPlugin()
			end
		end
	end)
end

main()

-- * In Studio IsRunning() is false (at least at startup when this code runs...
-- the user can manually call Run(), which will Run the Edit datamodel)
-- * In Run mode, IsRunMode() is true
-- Those are the two conditions in which the tool should be selected by default
if not RunService:IsRunning() or RunService:IsRunMode() then
	if getFFlagDraggerAnalyticsCleanup() then
		openPlugin(true)
	else
		openPlugin()
	end
end
if not settings():GetFFlag("EnableLuaDraggers") then
	return
end

local RunService = game:GetService("RunService")

-- Libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

-- Dragger component
local DraggerTool = require(Plugin.Packages.DraggerFramework.DraggerTool)

local PLUGIN_NAME = "SelectDragger"
local DRAGGER_TOOL_NAME = "Select"
local TOOLBAR_NAME = "Home"

local pluginEnabled = false
local pluginHandle = nil
local toolButton = nil

local function openPlugin()
	if pluginHandle then
		warn("Plugin handle already exists")
		return
	end

	pluginEnabled = true
	plugin:Activate(true)

	toolButton:SetActive(true)

	pluginHandle = Roact.mount(Roact.createElement(DraggerTool, {
		AnalyticsName = "Select",
		Mouse = plugin:GetMouse(),
		AllowDragSelect = true,
		AllowFreeformDrag = true,
		ShowSelectionDot = false,
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
		if pluginEnabled then
			closePlugin()
		else
			openPlugin()
		end
	end)
end

main()

-- * In Studio IsRunning() is false (at least at startup when this code runs...
-- the user can manually call Run(), which will Run the Edit datamodel)
-- * In Run mode, IsRunMode() is true
-- Those are the two conditions in which the tool should be selected by default
if not RunService:IsRunning() or RunService:IsRunMode() then
	openPlugin()
end
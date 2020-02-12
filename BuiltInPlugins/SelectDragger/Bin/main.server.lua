if not settings():GetFFlag("EnableLuaDraggers") then
	return
end

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

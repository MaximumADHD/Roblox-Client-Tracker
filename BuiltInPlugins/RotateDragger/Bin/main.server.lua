-- Libraries
local Plugin = script.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Roact = require(Plugin.Packages.Roact)

local DraggerSchemaCore = Plugin.Packages.DraggerSchemaCore
local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)

-- Dragger component
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)
local RotateHandles = require(DraggerFramework.Handles.RotateHandles)

local PLUGIN_NAME = "RotateDragger"
local DRAGGER_TOOL_NAME = "Rotate"
local TOOLBAR_NAME = "Home"

local draggerContext

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

	local function ikTransformRotateHandler(partMover, transform, collisionsMode)
		return partMover:rotateToWithIk(transform, collisionsMode)
	end

	pluginHandle = Roact.mount(Roact.createElement(DraggerToolComponent, {
		Mouse = plugin:GetMouse(),

		DraggerContext = draggerContext,
		DraggerSchema = DraggerSchema,
		DraggerSettings = {
			AnalyticsName = "Rotate",
			AllowDragSelect = true,
			AllowFreeformDrag = true,
			ShowLocalSpaceIndicator = true,
			HandlesList = {
				RotateHandles.new(draggerContext, {
					ShowBoundingBox = true,
				}, DraggerSchema.TransformHandlesImplementation.new(
					draggerContext, ikTransformRotateHandler)),
			}
		},
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
		"Rotate an Object",
		"",
		"Rotate"
	)

	draggerContext = DraggerContext_PluginImpl.new(
		plugin, game, settings(), DraggerSchema.Selection.new())

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
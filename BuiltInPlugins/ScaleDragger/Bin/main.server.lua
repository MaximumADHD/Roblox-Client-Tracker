if not game:GetEngineFeature("LuaDraggers") then
	return
end

-- Libraries
local Plugin = script.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Roact = require(Plugin.Packages.Roact)

-- Dragger component
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)
local ScaleToolImpl_DEPRECATED = require(Plugin.Src.ScaleToolImpl)
local ExtrudeHandles = require(DraggerFramework.Handles.ExtrudeHandles)

local DraggerSchemaCore = Plugin.Packages.DraggerSchemaCore
local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)

local getFFlagDraggerSplit = require(DraggerFramework.Flags.getFFlagDraggerSplit)

local PLUGIN_NAME = "ScaleDragger"
local DRAGGER_TOOL_NAME = "Scale"
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

	if getFFlagDraggerSplit() then
		pluginHandle = Roact.mount(Roact.createElement(DraggerToolComponent, {
			Mouse = plugin:GetMouse(),

			DraggerContext = draggerContext,
			DraggerSchema = DraggerSchema,
			DraggerSettings = {
				AnalyticsName = "Scale",
				AllowDragSelect = true,
				AllowFreeformDrag = true,
				ShowLocalSpaceIndicator = true,
				HandlesList = {
					ExtrudeHandles.new(draggerContext, {
						ShowBoundingBox = true,
					}, DraggerSchema.ExtrudeHandlesImplementation.new(draggerContext)),
				},
			},
		}))
	else
		local draggerContext = DraggerContext_PluginImpl.new(plugin, game, settings())
		pluginHandle = Roact.mount(Roact.createElement(DraggerToolComponent, {
			AnalyticsName = "Scale",
			Mouse = plugin:GetMouse(),
			AllowDragSelect = true,
			AllowFreeformDrag = true,
			ShowLocalSpaceIndicator = true,
			ShowSelectionBoundingBox = true,
			ShowSelectionDot = false,
			DraggerContext = draggerContext,
			ToolImplementation = ScaleToolImpl_DEPRECATED.new(draggerContext),
		}))
	end
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
		"Scale an Object",
		"",
		"Scale"
	)

	if getFFlagDraggerSplit() then
		draggerContext = DraggerContext_PluginImpl.new(
			plugin, game, settings(), DraggerSchema.Selection.new())
	end

	plugin.Deactivation:Connect(function()
		if pluginEnabled then
			closePlugin()
		end
	end)

	toolButton.Click:Connect(function()
		if pluginEnabled then
			closePlugin()
		else
			openPlugin()
		end
	end)
end

main()
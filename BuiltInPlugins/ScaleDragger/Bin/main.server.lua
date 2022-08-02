-- Libraries
local Plugin = script.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Roact = require(Plugin.Packages.Roact)

-- Dragger component
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)
local getFFlagDraggerHandlesIsEnabledFunction = require(DraggerFramework.Flags.getFFlagDraggerHandlesIsEnabledFunction)
local ExtrudeHandles = require(DraggerFramework.Handles.ExtrudeHandles)

local DraggerSchemaCore = Plugin.Packages.DraggerSchemaCore
local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)

local getFFlagFixScalingWithNonDefaultPivot = require(DraggerFramework.Flags.getFFlagFixScalingWithNonDefaultPivot)

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

	local scaleHandlesEnabledFunction
	if getFFlagDraggerHandlesIsEnabledFunction() then
		scaleHandlesEnabledFunction = function (selectionInfo)
			if selectionInfo and selectionInfo.basisObject then
				return true
			else
				return false
			end
		end
	end

	pluginHandle = Roact.mount(Roact.createElement(DraggerToolComponent, {
		Mouse = plugin:GetMouse(),

		DraggerContext = draggerContext,
		DraggerSchema = DraggerSchema,
		DraggerSettings = {
			AnalyticsName = "Scale",
			AllowDragSelect = true,
			AllowFreeformDrag = true,
			ShowLocalSpaceIndicator = true,
			ShowPivotIndicator = true,
			HandlesList = {
				ExtrudeHandles.new(draggerContext, {
					ShowBoundingBox = true,
					Summonable = true,
					IsEnabledFunction = getFFlagDraggerHandlesIsEnabledFunction() and scaleHandlesEnabledFunction or nil,
				}, DraggerSchema.ExtrudeHandlesImplementation.new(draggerContext)),
			},
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
		"Scale an Object",
		"",
		"Scale"
	)

	draggerContext = DraggerContext_PluginImpl.new(
		plugin, game, settings(), DraggerSchema.Selection.new())

	if getFFlagFixScalingWithNonDefaultPivot() then
		-- note: we can remove this variable entirely when we flip the flag on.
		-- see also BoundingBoxUtils.lua and SelectionInfo.lua
		draggerContext.ScaleToolSpecialCaseIgnorePivotWithSinglePartSelected = false
	else
		draggerContext.ScaleToolSpecialCaseIgnorePivotWithSinglePartSelected = true
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
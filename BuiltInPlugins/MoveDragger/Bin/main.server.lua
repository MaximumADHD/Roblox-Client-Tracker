-- Libraries
local Plugin = script.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Roact = require(Plugin.Packages.Roact)

local DraggerSchemaCore = Plugin.Packages.DraggerSchemaCore
local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)

-- Dragger component
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)
local MoveHandles = require(DraggerFramework.Handles.MoveHandles)

local getEngineFeatureModelPivotVisual = require(DraggerFramework.Flags.getEngineFeatureModelPivotVisual)

local PLUGIN_NAME = "MoveDragger"
local DRAGGER_TOOL_NAME = "Move"
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

	local function ikTransformMoveHandler(partMover, transform, collisionsMode)
		return partMover:moveToWithIk(transform, collisionsMode)
	end

	pluginHandle = Roact.mount(Roact.createElement(DraggerToolComponent, {
		Mouse = plugin:GetMouse(),

		-- Separation:
		-- * DraggerContext wraps all of the information about the
		--   environment that the dragger is running in, that is, global
		--   state which it needs to access.
		-- * DraggerSchema specifies what "kind" of selection this dragger
		--   operates on, and the common operations for that kind.
		-- * DraggerSettings specifies settings for this particular dragger.
		DraggerContext = draggerContext,
		DraggerSchema = DraggerSchema,
		DraggerSettings = {
			AnalyticsName = "Move",
			AllowDragSelect = true,
			AllowFreeformDrag = true,
			ShowLocalSpaceIndicator = true,
			HandlesList = {
				MoveHandles.new(draggerContext, {
					ShowBoundingBox = false,
					Outset = getEngineFeatureModelPivotVisual() and 0.3 or nil,
				}, DraggerSchema.TransformHandlesImplementation.new(
					draggerContext, ikTransformMoveHandler)),
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
		"Move an Object",
		"",
		"Move"
	)

	draggerContext = DraggerContext_PluginImpl.new(
		plugin, game, settings(), DraggerSchema.Selection.new())

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
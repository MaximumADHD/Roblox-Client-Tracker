if not game:GetEngineFeature("LuaDraggers") then
	return
end

-- Libraries
local Plugin = script.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Roact = require(Plugin.Packages.Roact)

local DraggerSchemaCore = Plugin.Packages.DraggerSchemaCore
local DraggerSchema = require(DraggerSchemaCore.DraggerSchema)

-- Dragger component
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)
local MoveToolImpl_DEPRECATED = require(Plugin.Src.MoveToolImpl)
local MoveHandles = require(DraggerFramework.Handles.MoveHandles)

local getFFlagDraggerSplit = require(DraggerFramework.Flags.getFFlagDraggerSplit)

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

	if getFFlagDraggerSplit() then
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
					}, DraggerSchema.TransformHandlesImplementation.new(
						draggerContext, ikTransformMoveHandler)),
				},
			},
		}))
	else
		local draggerContext = DraggerContext_PluginImpl.new(plugin, game, settings())
		pluginHandle = Roact.mount(Roact.createElement(DraggerToolComponent, {
			AnalyticsName = "Move",
			Mouse = plugin:GetMouse(),
			AllowDragSelect = true,
			AllowFreeformDrag = true,
			ShowLocalSpaceIndicator = true,
			ShowSelectionDot = false,
			DraggerContext = draggerContext,
			ToolImplementation = MoveToolImpl_DEPRECATED.new(draggerContext),
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
		"Move an Object",
		"",
		"Move"
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
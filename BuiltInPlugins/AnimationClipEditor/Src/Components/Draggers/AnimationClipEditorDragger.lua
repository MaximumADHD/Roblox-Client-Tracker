local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local DraggerFramework = Plugin.Packages.DraggerFramework
local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)
local MoveHandles = require(DraggerFramework.Handles.MoveHandles)
local RotateHandles = require(DraggerFramework.Handles.RotateHandles)
local ExtrudeHandles = require(DraggerFramework.Handles.ExtrudeHandles)
local DraggerSchema = require(Plugin.Src.Util.DraggerSchema.DraggerSchema)

local AnimationClipEditorDragger = Roact.PureComponent:extend("AnimationClipEditorDragger")

function AnimationClipEditorDragger:render()
	local props = self.props

	local mouse = props.Mouse
	local tool = props.Tool
	local context = props.Context
	local function ikTransformMoveHandler(partMover, transform, collisionsMode)
		return partMover:moveToWithIk(transform, collisionsMode)
	end

	local function ikTransformRotateHandler(partMover, transform, collisionsMode)
		return partMover:rotateToWithIk(transform, collisionsMode)
	end

	local handles = {}
	if tool == Enum.RibbonTool.Move then
		table.insert(
			handles,
			MoveHandles.new(
				context,
				nil,
				DraggerSchema.TransformHandlesImplementation.new(context, ikTransformMoveHandler, Enum.RibbonTool.Move)
			)
		)
	elseif tool == Enum.RibbonTool.Rotate then
		table.insert(
			handles,
			RotateHandles.new(
				context,
				nil,
				DraggerSchema.TransformHandlesImplementation.new(
					context,
					ikTransformRotateHandler,
					Enum.RibbonTool.Rotate
				)
			)
		)
	end

	local draggerSettings = {
		AnalyticsName = "AnimationClipEditor" .. tool.Name,
		AllowDragSelect = false,
		AllowFreeformDrag = false,
		ShowLocalSpaceIndicator = true,
		HandlesList = handles,
	}

	return Roact.createElement(DraggerToolComponent, {
		Mouse = mouse,
		DraggerContext = context,
		DraggerSchema = DraggerSchema,
		DraggerSettings = draggerSettings,
	})
end

return AnimationClipEditorDragger

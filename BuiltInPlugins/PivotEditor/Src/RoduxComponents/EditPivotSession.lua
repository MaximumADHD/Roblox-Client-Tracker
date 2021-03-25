local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local DraggerFramework = Plugin.Packages.DraggerFramework

local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)
local MoveHandles = require(DraggerFramework.Handles.MoveHandles)
local RotateHandles = require(DraggerFramework.Handles.RotateHandles)
local PivotHandle = require(Plugin.Src.DraggerSchemaPivot.PivotHandle)

local DraggerSchema = require(Plugin.Src.DraggerSchemaPivot.DraggerSchema)
local DraggerContext_Pivot = require(Plugin.Src.DraggerSchemaPivot.DraggerContext_Pivot)
local SelectionUpdaterBound = require(Plugin.Src.RoduxComponents.SelectionUpdaterBound)
local BeginSelectingPivot = require(Plugin.Src.Actions.BeginSelectingPivot)
local DoneSelectingPivot = require(Plugin.Src.Actions.DoneSelectingPivot)

local EditingMode = require(Plugin.Src.Utility.EditingMode)
--local StatusMessage = require(Plugin.Src.Utility.StatusMessage) -- going to need this, commented to silence the code analyzer

local EditPivotSession = Roact.PureComponent:extend("EditPivotSession")

function EditPivotSession:_getCurrentDraggerHandles()
	if self.props.editingMode == EditingMode.Transform then
		return {
			MoveHandles.new(self._draggerContext, {
				Outset = 0.5,
				ShowBoundingBox = false,
			}, DraggerSchema.MoveHandlesImplementation.new(self._draggerContext)),
			RotateHandles.new(self._draggerContext, {
				ShowBoundingBox = false,
			}, DraggerSchema.RotateHandlesImplementation.new(self._draggerContext)),
			PivotHandle.new(self._draggerContext),
		}
	else
		-- Only use the DraggerFramework for selecting objects in
		-- EditingMode.None, no handles to show.
		return {}
	end
end

function EditPivotSession:render()
	local editingMode = self.props.editingMode
	local elements = {}

	local pluginInstance = self.props.Plugin.plugin
	if not self._draggerContext then
		self._mouse = pluginInstance:GetMouse()
		self._draggerContext = DraggerContext_Pivot.new(
			pluginInstance, game, settings(), DraggerSchema.Selection.new())
	end

	if editingMode == EditingMode.Transform or editingMode == EditingMode.None then
		elements.DraggerToolComponent = Roact.createElement(DraggerToolComponent, {
			Mouse = self._mouse,
			DraggerContext = self._draggerContext,
			DraggerSchema = DraggerSchema,
			DraggerSettings = {
				AnalyticsName = "EditPivot",
				AllowDragSelect = false,
				AllowFreeformDrag = false,
				ShowLocalSpaceIndicator = false,
				HandlesList = self:_getCurrentDraggerHandles(),
			},
		})
	end

	elements.SelectionUpdaterBound = Roact.createElement(SelectionUpdaterBound)

	return Roact.createFragment(elements)
end

ContextServices.mapToProps(EditPivotSession, {
	Plugin = ContextServices.Plugin,
})

local function mapStateToProps(state, _)
	return {
		editingMode = state.editingMode,
		targetObject = state.targetObject,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		beginSelectingPivot = function(editingMode, message)
			dispatch(BeginSelectingPivot(editingMode, message))
		end,
		doneSelectingPivot = function()
			dispatch(DoneSelectingPivot())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EditPivotSession)
local ChangeHistoryService = game:GetService("ChangeHistoryService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local DraggerFramework = Plugin.Packages.DraggerFramework

local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local DraggerToolComponent = require(DraggerFramework.DraggerTools.DraggerToolComponent)
local DraggerContext_PluginImpl = require(DraggerFramework.Implementation.DraggerContext_PluginImpl)
local MoveHandles = require(DraggerFramework.Handles.MoveHandles)
local RotateHandles = require(DraggerFramework.Handles.RotateHandles)

local DraggerSchema = require(Plugin.Src.DraggerSchemaPivot.DraggerSchema)
local SelectionUpdaterBound = require(Plugin.Src.RoduxComponents.SelectionUpdaterBound)
local BeginSelectingPivot = require(Plugin.Src.Actions.BeginSelectingPivot)
local DoneSelectingPivot = require(Plugin.Src.Actions.DoneSelectingPivot)

local EditingMode = require(Plugin.Src.Utility.EditingMode)
--local StatusMessage = require(Plugin.Src.Utility.StatusMessage) -- going to need this, commented to silence the code analyzer

local EditPivotSession = Roact.PureComponent:extend("EditPivotSession")

function EditPivotSession:init()
	assert(self.props.Events, "EditPivotSession missing Events prop")
end

function EditPivotSession:didMount()
	self:_connectEvents()
end

function EditPivotSession:willUnmount()
	self:_disconnectEvents()
end

function EditPivotSession:_getCurrentDraggerHandles()
	if self.props.editingMode == EditingMode.Transform then
		return {
			MoveHandles.new(self._draggerContext, {
				Outset = 0.5,
				ShowBoundingBox = false,
			}, DraggerSchema.TransformHandlesImplementation.new(
				self._draggerContext, false)), --false -> needsExtraArrows=false
			RotateHandles.new(self._draggerContext, {
				ShowBoundingBox = false,
			}, DraggerSchema.TransformHandlesImplementation.new(
				self._draggerContext, true)), --true -> needsExtraArrows=true
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
		self._draggerContext = DraggerContext_PluginImpl.new(
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

	elements.DebugPortal = Roact.createElement(Roact.Portal, {
		target = game.Lighting,
	}, {
		DEBUG_EditPivotMode = Roact.createElement("StringValue", {
			Value = tostring(self.props.editingMode).." - "..tostring(self.props.targetObject),
		}),
	})

	return Roact.createFragment(elements)
end

function EditPivotSession:_connectEvents()
	local connectionsToBreak = {}
	table.insert(connectionsToBreak, self.props.Events.onClearPivot:Connect(function()
		self:_onClearPivot()
	end))
	self._connectionsToBreak = connectionsToBreak
end

function EditPivotSession:_disconnectEvents()
	for _, connection in pairs(self._connectionsToBreak) do
		connection:Disconnect()
	end
end

function EditPivotSession:_onClearPivot()
	local object = self.props.targetObject
	if object then
		if object:IsA("BasePart") then
			object.PivotOffset = CFrame.new()
		elseif object.PrimaryPart then
			object.PrimaryPart.PivotOffset = CFrame.new()
			-- The pivot value is already up to date, but we still need to
			-- prompt the properties pane to update to update, which we can do
			-- by setting the WorldPivot.
			object.WorldPivot = object:GetPivot()
		else
			-- Just re-center the pivot within the bounds
			object.WorldPivot = object:GetBoundingBox()
		end
		ChangeHistoryService:SetWaypoint("Cleared Pivot")
		self:setState({})
	end
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
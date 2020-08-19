--[[
	DraggerToolComponent is a Roact component which drives an internal
	DraggerToolModel with inputs in a real-time situation such as ingame or in
	studio plugin.
]]

-- Services
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local DraggerFramework = script.Parent.Parent
local Library = DraggerFramework.Parent.Parent
local Roact = require(Library.Packages.Roact)

-- Flags
local getFFlagDragFaceInstances = require(DraggerFramework.Flags.getFFlagDragFaceInstances)

-- Utilities
local DraggerToolModel = require(DraggerFramework.Implementation.DraggerToolModel)
local ViewChangeDetector = require(DraggerFramework.Utility.ViewChangeDetector)
local shouldDragAsFace = require(DraggerFramework.Utility.shouldDragAsFace)

-- Constants
local DRAGGER_UPDATE_BIND_NAME = "DraggerToolViewUpdate"

local DraggerToolComponent = Roact.PureComponent:extend("DraggerToolComponent")

function DraggerToolComponent:init()
	self._selectionBoundsAreDirty = false
	self._viewBoundsAreDirty = false

	local function requestRender()
		if self._isMounted then
			self:setState({}) -- Force a rerender
		end
	end

	self._draggerToolModel =
		DraggerToolModel.new(
			self.props, -- Forward other props directly to Model
			self.props.ToolImplementation,
			self.props.DraggerContext,
			requestRender,
			function() self._viewBoundsAreDirty = true end,
			function() self._selectionBoundsAreDirty = true end)
	self._draggerToolModel:_processSelected()
end

function DraggerToolComponent:didMount()
	self._isMounted = true
	local mouse = self.props.Mouse

	self._mouseDownConnection = mouse.Button1Down:Connect(function()
		self._draggerToolModel:_processMouseDown()
	end)
	self._mouseUpConnection = mouse.Button1Up:Connect(function()
		self._draggerToolModel:_processMouseUp()
	end)
	self._keyDownConnection = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			self._draggerToolModel:_processKeyDown(input.KeyCode)
		end
	end)

	self._dragEnterConnection = mouse.DragEnter:Connect(function(instances)
		if #instances > 0 then
			if getFFlagDragFaceInstances() and #instances == 1 and shouldDragAsFace(instances[1]) then
				self._draggerToolModel:_processToolboxInitiatedFaceDrag(instances)
			else
				self._draggerToolModel:_processToolboxInitiatedFreeformSelectionDrag()
			end
		end
	end)

	local viewChange = ViewChangeDetector.new(mouse)
	local lastUseLocalSpace = self.props.DraggerContext:shouldUseLocalSpace()
	RunService:BindToRenderStep(DRAGGER_UPDATE_BIND_NAME, Enum.RenderPriority.First.Value, function()
		if not self._isMounted then
			return
		end

		self._draggerToolModel:update()

		local shouldUpdateView = false
		local shouldUpdateSelection = false

		if viewChange:poll() then
			shouldUpdateView = true
		end

		if self._selectionBoundsAreDirty then
			self._selectionBoundsAreDirty = false
			shouldUpdateSelection = true
		end
		if self._viewBoundsAreDirty then
			self._viewBoundsAreDirty = false
			shouldUpdateView = true
		end

		local currentUseLocalSpace = self.props.DraggerContext:shouldUseLocalSpace()
		if currentUseLocalSpace ~= lastUseLocalSpace then
			-- Can't use a changed event for this, since Changed doesn't fire
			-- for changes to UseLocalSpace.
			shouldUpdateSelection = true
		end

		if shouldUpdateSelection then
			self._draggerToolModel:_processSelectionChanged()
		end
		if shouldUpdateView then
			self._draggerToolModel:_processViewChanged()
		end

		lastUseLocalSpace = currentUseLocalSpace
	end)
end

function DraggerToolComponent:willUnmount()
	self._isMounted = false

	self._draggerToolModel:_processDeselected()

	self._mouseDownConnection:Disconnect()
	self._mouseDownConnection = nil

	self._mouseUpConnection:Disconnect()
	self._mouseUpConnection = nil

	self._keyDownConnection:Disconnect()
	self._keyDownConnection = nil

	self._dragEnterConnection:Disconnect()
	self._dragEnterConnection = nil

	RunService:UnbindFromRenderStep(DRAGGER_UPDATE_BIND_NAME)
end

function DraggerToolComponent:render()
	return self._draggerToolModel:render()
end

return DraggerToolComponent
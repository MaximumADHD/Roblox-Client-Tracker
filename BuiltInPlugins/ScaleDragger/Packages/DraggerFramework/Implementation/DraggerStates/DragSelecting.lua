if require(script.Parent.Parent.Parent.Flags.getFFlagDraggerRefactor)() then
	return require(script.Parent.DragSelecting_Refactor)
end

local UserInputService = game:GetService("UserInputService")

local DraggerFramework = script.Parent.Parent.Parent
local Packages = DraggerFramework.Parent

local Roact = require(Packages.Roact)
local DragSelectionView = require(DraggerFramework.Components.DragSelectionView)
local DraggerStateType = require(DraggerFramework.Implementation.DraggerStateType)
local DragSelector = require(DraggerFramework.Utility.DragSelector)
local StandardCursor = require(DraggerFramework.Utility.StandardCursor)

local DragSelecting = {}
DragSelecting.__index = DragSelecting

function DragSelecting.new(draggerTool)
	local self = setmetatable({
		_dragSelector = DragSelector.new()
	}, DragSelecting)
	self:_init(draggerTool)
	return self
end

function DragSelecting:enter(draggerTool)

end

function DragSelecting:leave(draggerTool)

end

function DragSelecting:_init(draggerTool)
	draggerTool._sessionAnalytics.dragSelects = draggerTool._sessionAnalytics.dragSelects + 1
	self._hasMovedMouse = false
end

function DragSelecting:render(draggerTool)
	draggerTool:setMouseCursor(StandardCursor.getArrow())

	local startLocation =
		self._hasMovedMouse and
		self._dragSelector:getStartLocation() or
		UserInputService:GetMouseLocation()
	return Roact.createElement(DragSelectionView, {
		dragStartLocation = startLocation,
		dragEndLocation = UserInputService:GetMouseLocation(),
	})
end

function DragSelecting:processSelectionChanged(draggerTool)
	-- Don't do anything. We don't want to unnecessarily fight other sources
	-- over selection changes.
end

function DragSelecting:processMouseDown(draggerTool)
	error("Mouse should already be down while drag selecting.")
end

function DragSelecting:processViewChanged(draggerTool)
	if not self._hasMovedMouse then
		self._dragSelector:beginDrag(UserInputService:GetMouseLocation())
		self._hasMovedMouse = true
	end
	self._dragSelector:updateDrag(UserInputService:GetMouseLocation())
end

function DragSelecting:processMouseUp(draggerTool)
	if self._hasMovedMouse then
		self._dragSelector:commitDrag(UserInputService:GetMouseLocation())
		self._hasMovedMouse = false
	end
	draggerTool:_updateSelectionInfo()
	draggerTool:_analyticsSendBoxSelect()
	draggerTool:transitionToState({}, DraggerStateType.Ready)
end

function DragSelecting:processKeyDown(draggerTool, keyCode)
	-- Nothing to do
end

return DragSelecting
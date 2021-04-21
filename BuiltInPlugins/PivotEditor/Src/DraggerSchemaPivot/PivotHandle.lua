-- Libraries
local Plugin = script.Parent.Parent.Parent

local Colors = require(Plugin.Packages.DraggerFramework.Utility.Colors)

local Roact = require(Plugin.Packages.Roact)
local FreeformDragger = require(script.Parent.FreeformDragger)

local getFFlagPivotAnalytics = require(Plugin.Src.Flags.getFFlagPivotAnalytics)

local ALWAYS_ON_TOP = true

local PIVOT_HOVER_IMAGE_SIZE = 32
local PIVOT_HITTEST_RADIUS = 15

local PivotHandle = {}
PivotHandle.__index = PivotHandle

function PivotHandle.new(draggerContext)
	return setmetatable({
		_dragging = false,
		_draggerContext = draggerContext,
	}, PivotHandle)
end

function PivotHandle:update(draggerToolModel, selectionInfo)
	if not self._dragging then
		self._originalPivot = selectionInfo:getBoundingBox()
		self._pivotOwner = selectionInfo:getPrimaryObject()
		self._draggerToolModel = draggerToolModel
		self._schema = draggerToolModel:getSchema()
	end
end

function PivotHandle:shouldBiasTowardsObjects()
	return false
end

function PivotHandle:hitTest(mouseRay, ignoreExtraThreshold)
	local screenPoint, onScreen = 
		self._draggerContext:worldToViewportPoint(self._originalPivot.Position)
	if onScreen then
		local mouseLocation = self._draggerContext:getMouseLocation()
		local screenLocation = Vector2.new(screenPoint.X, screenPoint.Y)
		local distanceFromCursor = (screenLocation - mouseLocation).Magnitude
		if distanceFromCursor < PIVOT_HITTEST_RADIUS then
			if getFFlagPivotAnalytics() then
				return "Pivot", 0, ALWAYS_ON_TOP
			else
				return 0, 0, ALWAYS_ON_TOP
			end
		end
	end
	return nil
end

function PivotHandle:_selectedIsActive()
	if self._draggerContext:shouldShowActiveInstanceHighlight() then
		local activeInstance =
			self._draggerToolModel:getSelectionWrapper():getActiveSelectable()
		return self._pivotOwner == activeInstance
	else
		return false
	end
end

function PivotHandle:_renderPivotAdorn(hovered: boolean)
	if not self._pivotOwner then
		return
	end

	local image: string
	local tint: Color3
	if hovered then
		image = "rbxasset://Textures/PivotEditor/HoveredPivot.png"
		tint = self._draggerContext:getSelectionBoxColor(self:_selectedIsActive())
	else
		image = "rbxasset://Textures/PivotEditor/SelectedPivot.png"
		tint = Colors.WHITE
	end

	local screenPosition, onScreen = 
		self._draggerContext:worldToViewportPoint(self._originalPivot.Position)
	if onScreen then
		return Roact.createElement(Roact.Portal, {
			target = self._draggerContext:getGuiParent(),
		}, {
			PivotHoverHighlight = Roact.createElement("ScreenGui", {}, {
				PivotHoverImage = Roact.createElement("ImageLabel", {
					Image = image,
					ImageColor3 = tint,
					Size = UDim2.new(0, PIVOT_HOVER_IMAGE_SIZE, 0, PIVOT_HOVER_IMAGE_SIZE),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0, screenPosition.X + 0.5, 0, screenPosition.Y + 0.5),
					BackgroundTransparency = 1,
				})
			})
		})
	else
		return nil
	end
end

function PivotHandle:render(hoveredHandleId)
	local children = {}
	if self._freeformDrag then
		children.DragUI = self._freeformDrag:render()
	elseif hoveredHandleId then
		children.PivotAdorn = self:_renderPivotAdorn(true)
	else
		children.PivotAdorn = self:_renderPivotAdorn(false)
	end
	return Roact.createFragment(children)
end

function PivotHandle:mouseDown(mouseRay, handleId)
	local dragInfo = {
		ClickedSelectable = self._pivotOwner,
		HandleId = "Pivot",
	}
	self._freeformDrag = FreeformDragger.new(
		self._draggerContext, self._draggerToolModel, dragInfo)
	self._freeformDrag:update()
end

function PivotHandle:keyDown(keyCode)
	if keyCode == Enum.KeyCode.R then
		self._freeformDrag:rotate(Vector3.new(0, 1, 0))
		return true
	elseif keyCode == Enum.KeyCode.T then
		self._freeformDrag:rotate(Vector3.new(1, 0, 0))
		return true
	else
		return false
	end
end

function PivotHandle:mouseDrag(mouseRay)
	self._freeformDrag:update()
end

function PivotHandle:mouseUp(mouseRay)
	self._freeformDrag:destroy()
	self._freeformDrag = nil
	self._schema.addUndoWaypoint(self._draggerContext, "Modify Pivot")
end

return PivotHandle

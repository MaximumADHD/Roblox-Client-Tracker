local Plugin = script.Parent.Parent.Parent

local orthonormalize = require(Plugin.Src.Utility.orthonormalize)

local Roact = require(Plugin.Packages.Roact)
local Colors = require(Plugin.Packages.DraggerFramework.Utility.Colors)
local PivotImplementation = require(Plugin.Packages.DraggerFramework.Utility.PivotImplementation)
local MoveHandleView = require(Plugin.Packages.DraggerFramework.Components.MoveHandleView)

local MoveHandlesForDisplay = {
	MinusZ = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0)),
		Color = Colors.Z_AXIS,
	},
	PlusZ = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(1, 0, 0), Vector3.new(0, -1, 0)),
		Color = Colors.Z_AXIS,
	},
	MinusY = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	PlusY = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 0, 1), Vector3.new(-1, 0, 0)),
		Color = Colors.Y_AXIS,
	},
	MinusX = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, 1)),
		Color = Colors.X_AXIS,
	},
	PlusX = {
		Offset = CFrame.fromMatrix(Vector3.new(), Vector3.new(0, 1, 0), Vector3.new(0, 0, -1)),
		Color = Colors.X_AXIS,
	},
}

local TransformHandlesImplementation = {}
TransformHandlesImplementation.__index = TransformHandlesImplementation

function TransformHandlesImplementation.new(draggerContext, showExtraArrows)
	return setmetatable({
		_draggerContext = draggerContext,
		_showExtraArrows = showExtraArrows,
	}, TransformHandlesImplementation)
end

function TransformHandlesImplementation:beginDrag(selection, initialSelectionInfo)
	self._initialPivot = initialSelectionInfo:getBoundingBox()
	self._primaryObject = initialSelectionInfo:getPrimaryObject()
end

function TransformHandlesImplementation:updateDrag(globalTransform)
	local newPivot = globalTransform * self._initialPivot

	-- We need to apply orthornormalization, as normally setting part CFrame
	-- does that for us, but since we're just reading and writing back a
	-- CFrameValue here, no orthonormalization will automatically happen, so
	-- error will accumulate and multiply if we do not make this call.
	PivotImplementation.setPivot(self._primaryObject, orthonormalize(newPivot))
	return globalTransform
end

function TransformHandlesImplementation:endDrag()

end

function TransformHandlesImplementation:render(currentBasisCFrame)
	if self._showExtraArrows then
		local scale = self._draggerContext:getHandleScale(currentBasisCFrame.Position)
		local elements = {}
		for handleId, definition in pairs(MoveHandlesForDisplay) do
			elements[handleId] = Roact.createElement(MoveHandleView, {
				Axis = currentBasisCFrame * definition.Offset,
				Color = definition.Color,
				Outset = 0.5,
				Thin = true,
				Scale = scale,
				AlwaysOnTop = true,
			})
		end
		return Roact.createFragment(elements)
	else
		return nil
	end
end

return TransformHandlesImplementation
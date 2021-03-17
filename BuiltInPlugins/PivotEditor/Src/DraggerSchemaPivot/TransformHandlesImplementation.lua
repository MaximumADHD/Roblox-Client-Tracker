local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Colors = require(Plugin.Packages.DraggerFramework.Utility.Colors)
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

	local object = self._primaryObject
	if object:IsA("BasePart") then
		object.PivotOffset = object.CFrame:ToObjectSpace(newPivot)
	elseif object:IsA("Model") then
		if object.PrimaryPart then
			object.PrimaryPart.PivotOffset = object.PrimaryPart.CFrame:ToObjectSpace(newPivot)
		end
		object.WorldPivot = newPivot
	else
		error("Unexpected primary object type: " .. object.ClassName)
	end

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
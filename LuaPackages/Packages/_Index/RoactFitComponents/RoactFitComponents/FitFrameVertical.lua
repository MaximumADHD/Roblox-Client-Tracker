local root = script.Parent
local Packages = root.Parent

local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)

local FitFrameOnAxis = require(script.Parent.FitFrameOnAxis)
local isRoact17 = require(script.Parent.isRoact17)

return Roact.forwardRef(function(props, ref)
	props = props or {}
	local width = props.width

	local refKey = isRoact17() and "forwardedRef" or Roact.Ref
	local filteredProps = Cryo.Dictionary.join(props, {
		axis = FitFrameOnAxis.Axis.Vertical,
		minimumSize = UDim2.new(width, UDim.new(0, 0)),
		[refKey] = ref,

		width = Cryo.None,
	})

	return Roact.createElement(FitFrameOnAxis, filteredProps)
end)

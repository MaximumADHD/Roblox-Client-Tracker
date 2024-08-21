local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type AspectRatio = Types.AspectRatio
type AspectRatioTable = Types.AspectRatioTable

local function getAspectRatio(aspectRatio: AspectRatio): {
	AspectRatio: Bindable<number>,
	AspectType: Bindable<Enum.AspectType>?,
	DominantAxis: Bindable<Enum.DominantAxis>?,
}
	if typeof(aspectRatio) == "table" then
		local aspectRatioTable = aspectRatio :: AspectRatioTable
		return {
			AspectRatio = aspectRatioTable.AspectRatio,
			AspectType = aspectRatioTable.AspectType,
			DominantAxis = aspectRatioTable.DominantAxis,
		}
	else
		return {
			AspectRatio = aspectRatio,
			AspectType = nil,
			DominantAxis = nil,
		}
	end
end

export type AspectRatioProps = {
	value: AspectRatio,
}

local function AspectRatio(props: AspectRatioProps)
	local aspectRatio = getAspectRatio(props.value)
	return React.createElement("UIAspectRatioConstraint", aspectRatio)
end

return React.memo(AspectRatio)

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local getTestIdTag = require(Foundation.Utility.getTestIdTag)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type AspectRatio = Types.AspectRatio
type AspectRatioTable = Types.AspectRatioTable

local Flags = require(Foundation.Utility.Flags)

local function getAspectRatio(aspectRatio: AspectRatio): {
	AspectRatio: Bindable<number>,
	AspectType: Bindable<Enum.AspectType>?,
	DominantAxis: Bindable<Enum.DominantAxis>?,
}
	if Flags.FoundationFixAspectRatioBindingHandling then
		if ReactIs.isBinding(aspectRatio) or typeof(aspectRatio) == "number" then
			-- only possible if AspectRatio is binding-based number
			return {
				AspectRatio = aspectRatio,
				AspectType = nil,
				DominantAxis = nil,
			}
		else
			local aspectRatioTable = aspectRatio :: AspectRatioTable
			return {
				AspectRatio = aspectRatioTable.AspectRatio,
				AspectType = aspectRatioTable.AspectType,
				DominantAxis = aspectRatioTable.DominantAxis,
			}
		end
	else
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
end

export type AspectRatioProps = {
	value: AspectRatio,
	testId: string?,
}

local function AspectRatio(props: AspectRatioProps)
	local aspectRatio = getAspectRatio(props.value)
	return React.createElement("UIAspectRatioConstraint", {
		AspectRatio = aspectRatio.AspectRatio,
		AspectType = aspectRatio.AspectType,
		DominantAxis = aspectRatio.DominantAxis,
		[React.Tag] = getTestIdTag(props.testId),
	})
end

return React.memo(AspectRatio)

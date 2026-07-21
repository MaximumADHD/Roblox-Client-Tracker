local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local getTestIdTag = require(Foundation.Utility.getTestIdTag)
local mapBindable = require(Foundation.Utility.mapBindable)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type CornerRadius = Types.CornerRadius
type CornerRadiusValue = Types.CornerRadiusValue
type CornerRadiusTable = Types.CornerRadiusTable

local function toUDim(value: CornerRadiusValue?): Bindable<UDim>?
	if value == nil then
		return nil
	end
	return mapBindable(value, function(resolved: number | UDim): UDim
		if typeof(resolved) == "number" then
			return UDim.new(0, resolved)
		end
		return resolved
	end)
end

local function getCornerRadius(cornerRadius: CornerRadius): {
	TopLeftRadius: Bindable<UDim>?,
	TopRightRadius: Bindable<UDim>?,
	BottomRightRadius: Bindable<UDim>?,
	BottomLeftRadius: Bindable<UDim>?,
}
	if ReactIs.isBinding(cornerRadius) then
		return {
			TopLeftRadius = cornerRadius :: Bindable<UDim>,
			TopRightRadius = cornerRadius :: Bindable<UDim>,
			BottomRightRadius = cornerRadius :: Bindable<UDim>,
			BottomLeftRadius = cornerRadius :: Bindable<UDim>,
		}
	elseif typeof(cornerRadius) == "number" then
		return {
			TopLeftRadius = UDim.new(0, cornerRadius),
			TopRightRadius = UDim.new(0, cornerRadius),
			BottomRightRadius = UDim.new(0, cornerRadius),
			BottomLeftRadius = UDim.new(0, cornerRadius),
		}
	elseif typeof(cornerRadius) == "UDim" then
		return {
			TopLeftRadius = cornerRadius,
			TopRightRadius = cornerRadius,
			BottomRightRadius = cornerRadius,
			BottomLeftRadius = cornerRadius,
		}
	elseif typeof(cornerRadius) == "table" then
		local cornerRadiusTable = cornerRadius :: CornerRadiusTable
		return {
			TopLeftRadius = toUDim(cornerRadiusTable.topLeft),
			TopRightRadius = toUDim(cornerRadiusTable.topRight),
			BottomRightRadius = toUDim(cornerRadiusTable.bottomRight),
			BottomLeftRadius = toUDim(cornerRadiusTable.bottomLeft),
		}
	else
		return {}
	end
end

export type CornerRadiusProps = {
	value: CornerRadius,
	testId: string?,
}

local function CornerRadius(props: CornerRadiusProps)
	local cornerRadius = getCornerRadius(props.value)

	return React.createElement("UICorner", {
		TopLeftRadius = cornerRadius.TopLeftRadius,
		TopRightRadius = cornerRadius.TopRightRadius,
		BottomRightRadius = cornerRadius.BottomRightRadius,
		BottomLeftRadius = cornerRadius.BottomLeftRadius,
		[React.Tag] = getTestIdTag(props.testId),
	})
end

return React.memo(CornerRadius)

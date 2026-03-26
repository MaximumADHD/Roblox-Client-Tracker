local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type Padding = Types.Padding
type PaddingTable = Types.PaddingTable

local function getPadding(padding: Padding): {
	PaddingTop: Bindable<UDim>?,
	PaddingBottom: Bindable<UDim>?,
	PaddingLeft: Bindable<UDim>?,
	PaddingRight: Bindable<UDim>?,
}
	if ReactIs.isBinding(padding) then
		return {
			PaddingTop = padding :: Bindable<UDim>,
			PaddingBottom = padding :: Bindable<UDim>,
			PaddingLeft = padding :: Bindable<UDim>,
			PaddingRight = padding :: Bindable<UDim>,
		}
	elseif typeof(padding) == "table" then
		local paddingTable = padding :: PaddingTable
		return {
			PaddingTop = paddingTable.top,
			PaddingBottom = paddingTable.bottom,
			PaddingLeft = paddingTable.left,
			PaddingRight = paddingTable.right,
		}
	elseif typeof(padding) == "number" then
		return {
			PaddingTop = UDim.new(0, padding),
			PaddingBottom = UDim.new(0, padding),
			PaddingLeft = UDim.new(0, padding),
			PaddingRight = UDim.new(0, padding),
		}
	elseif typeof(padding) == "Vector2" then
		return {
			PaddingTop = UDim.new(0, padding.Y),
			PaddingBottom = UDim.new(0, padding.Y),
			PaddingLeft = UDim.new(0, padding.X),
			PaddingRight = UDim.new(0, padding.X),
		}
	elseif typeof(padding) == "UDim" then
		return {
			PaddingTop = padding,
			PaddingBottom = padding,
			PaddingLeft = padding,
			PaddingRight = padding,
		}
	elseif typeof(padding) == "UDim2" then
		return {
			PaddingTop = padding.Y,
			PaddingBottom = padding.Y,
			PaddingLeft = padding.X,
			PaddingRight = padding.X,
		}
	else
		return {}
	end
end

export type PaddingProps = {
	value: Padding,
}

local function Padding(props: PaddingProps)
	local padding = getPadding(props.value)

	return React.createElement("UIPadding", padding)
end

return React.memo(Padding)

local ExperienceTileMetadata = script.Parent
local Tile = ExperienceTileMetadata.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

export type Props = {
	size: UDim2?,
	position: UDim2?,
	anchorPoint: Vector2?,
	layoutOrder: number?,
	children: { [string]: React.ReactElement? }?,
}

local defaultProps = {
	size = UDim2.fromScale(1, 1),
}

local function FooterFrame(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	return React.createElement("Frame", {
		Size = props.size,
		Position = props.position,
		AnchorPoint = props.anchorPoint,
		LayoutOrder = props.layoutOrder,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}, props.children)
end

return FooterFrame

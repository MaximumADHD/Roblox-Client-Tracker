local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)

type FlexItem = Types.FlexItem
type SizeConstraint = Types.SizeConstraint

type CardMediaProps = {
	image: string,
	width: number,
	isEnd: boolean,
	isFillHeight: boolean,
	bottomHeight: number,
	tag: string,
	testId: string,
}

local function CardMedia(props: CardMediaProps)
	local size: UDim2
	local sizeConstraint: SizeConstraint? = nil
	local flexItem: FlexItem? = nil

	if props.isEnd then
		size = UDim2.new(0, props.width, if props.isFillHeight then 1 else 0, 0)
		sizeConstraint = {
			MaxSize = Vector2.new(props.width, math.huge),
		}
		flexItem = {
			FlexMode = Enum.UIFlexMode.Shrink,
			ItemLineAlignment = Enum.ItemLineAlignment.Stretch,
		}
	else
		size = UDim2.new(1, 0, 0, props.bottomHeight)
	end

	return React.createElement(Image, {
		Image = props.image,
		ScaleType = Enum.ScaleType.Crop,
		tag = props.tag,
		Size = size,
		sizeConstraint = sizeConstraint,
		flexItem = flexItem,
		LayoutOrder = 2,
		testId = `{props.testId}--image`,
	})
end

return CardMedia

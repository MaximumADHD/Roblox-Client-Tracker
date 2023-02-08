local UIBlox = script:FindFirstAncestor("UIBlox")

local Cryo = require(UIBlox.Parent.Cryo)
local React = require(UIBlox.Parent.React)
local MediaGallerySingle = require(script.Parent.Single)

local defaultProps = {
	numItemsShown = 3.5,
	itemAspectRatio = 16 / 9,
	itemPadding = 16, -- pt
	borderRadius = UDim.new(0, 8),
}

export type Item = {
	imageId: string,
	isVideo: boolean?,
}

export type Props = {
	items: { Item },
	numItemsShown: number?,
	itemAspectRatio: number?,
	itemPadding: number?,
	borderRadius: UDim?,
}

type InternalProps = Props & typeof(defaultProps)

local function MediaGalleryCarousel(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)
	local itemSize, setItemSize = React.useState(Vector2.zero)

	local onAbsoluteSizeChanged = React.useCallback(function(rbx: ScrollingFrame)
		-- We subtract 1 because padding only needs to be added between
		-- elements, so we need to skip the last one.
		local padding = props.itemPadding * (props.numItemsShown - 1)

		local itemWidth = (rbx.AbsoluteSize.X - padding) / props.numItemsShown

		setItemSize(Vector2.new(itemWidth, itemWidth / props.itemAspectRatio))
	end, { props.itemAspectRatio, props.numItemsShown })

	local items = {}
	for index, item in props.items do
		items["Item" .. index] = React.createElement("ImageLabel", {
			LayoutOrder = index,
			Size = UDim2.fromOffset(itemSize.X, itemSize.Y),
			Image = item.imageId,
			ScaleType = Enum.ScaleType.Crop,
		}, {
			Corner = React.createElement("UICorner", {
				CornerRadius = props.borderRadius,
			}),
		})
	end

	return React.createElement("ScrollingFrame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		AutomaticCanvasSize = Enum.AutomaticSize.XY,
		ScrollBarImageTransparency = 1,
		ScrollingDirection = Enum.ScrollingDirection.X,
		ClipsDescendants = false,
		[React.Change.AbsoluteSize] = onAbsoluteSizeChanged,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, props.itemPadding),
		}),

		Items = React.createElement(React.Fragment, {}, items),
	})
end

return MediaGalleryCarousel

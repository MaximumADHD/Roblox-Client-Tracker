--!nonstrict
local UIBlox = script:FindFirstAncestor("UIBlox")
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local Images = require(UIBlox.App.ImageSet.Images)
local Button = require(UIBlox.App.Button.Button)
local ButtonType = require(UIBlox.App.Button.Enum.ButtonType)
local Cryo = require(UIBlox.Parent.Cryo)
local React = require(UIBlox.Parent.React)

local ICON_PLAY = "icons/common/play"
local PLAY_BUTTON_SIZE_SCALE = UDim2.fromScale(0.4, 0.512)
local PLAY_ICON_SIZE = UDim2.fromScale(0.25, 0.33)

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
	onPreviewActivated: ((itemIndex: number) -> ())?,
	onVideoPlayActivated: ((itemIndex: number) -> ())?,
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

	local onActivated = React.useCallback(function(index)
		if props.onVideoPlayActivated then
			if props.items[index].isVideo then
				return props.onVideoPlayActivated(index)
			end
		end
		if props.onPreviewActivated then
			return props.onPreviewActivated(index)
		end
		return
	end, {
		props.items,
		props.onVideoPlayActivated,
		props.onPreviewActivated,
	})

	local items = {}
	for index, item in props.items do
		local isVideo = item.isVideo
		items["Item" .. index] = React.createElement("ImageButton", {
			LayoutOrder = index,
			Size = UDim2.fromOffset(itemSize.X, itemSize.Y),
			Image = item.imageId,
			ScaleType = Enum.ScaleType.Crop,
			BackgroundTransparency = 1,
			AutoButtonColor = false,
			[React.Event.Activated] = function()
				onActivated(index)
			end,
		}, {
			Corner = React.createElement("UICorner", {
				CornerRadius = props.borderRadius,
			}),
			PlayButton = if isVideo
				then React.createElement(Button, {
					buttonType = ButtonType.PrimaryContextual,
					size = PLAY_BUTTON_SIZE_SCALE,
					anchorPoint = Vector2.new(0.5, 0.5),
					position = UDim2.fromScale(0.5, 0.5),
					onActivated = function()
						onActivated(index)
					end,
				})
				else nil,
			PlayIcon = if isVideo
				then React.createElement(ImageSetComponent.Label, {
					Size = PLAY_ICON_SIZE,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					Image = Images[ICON_PLAY],
					BackgroundTransparency = 1,
					ZIndex = 2,
				})
				else nil,
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

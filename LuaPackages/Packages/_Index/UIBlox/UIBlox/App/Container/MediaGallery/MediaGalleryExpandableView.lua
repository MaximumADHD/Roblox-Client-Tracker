--!strict
local UIBlox = script:FindFirstAncestor("UIBlox")
local Packages = UIBlox.Parent
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local Cryo = require(Packages.Cryo)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local useSelectionCursor = require(UIBlox.App.SelectionImage.useSelectionCursor)
local useStyle = require(UIBlox.Core.Style.useStyle)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local Constants = require(script.Parent.Constants)

type SpringOptions = ReactOtter.SpringOptions

local defaultProps = {
	titleText = "Media",
	numItemsShown = 4,
	itemAspectRatio = 16 / 9,
	animationConfig = {
		dampingRatio = 1,
		frequency = 1 / 0.15, -- @150ms size anim
	},
	onActivated = function() end,
	onSelectionGained = function() end,
	exitFullscreen = function() end,
}

export type StyleProps = Constants.StyleProps

export type Item = {
	imageId: string,
	isVideo: boolean?,
}

export type Props = {
	-- Array of items to be rendered.
	items: { Item },
	-- GroupTransparency for fade in&out transparency animation
	groupTransparency: number,
	-- Item's selection cursor kind
	selectionCursor: any,
	-- Expanded height offset
	expandableAreaHeightOffset: number,
	-- ReactOtter size animation' spring settings
	animationConfig: ReactOtter.SpringOptions?,
	-- Section's title text, default is "Media"
	titleText: string?,
	-- Number of items to showns in carousel, default is 4
	numItemsShown: number?,
	-- Item's aspect ratio, default is 16 : 9
	itemAspectRatio: number?,
	-- Callback function invoked when item is pressed
	onActivated: ((currentIndex: number) -> ())?,
	-- Callback function invoked when item is selected by gamepad
	onSelectionGained: ((currentIndex: number) -> ())?,
	-- Callback function invoked when carousel gains or loses focus
	mediaGalleryGainFocused: ((isFocused: boolean) -> ())?,
	-- Callback function invoked after curosr left gallery, exit fullscreen mode
	exitFullscreen: (() -> ())?,
	-- Props to styling the component
	styleProps: StyleProps?,
}

local function MediaGalleryExpandableView(providedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local stylePalette = useStyle()
	local defaultStyleProps: StyleProps = Constants.getDefaultStyleProps(stylePalette)
	local styleProps = Cryo.Dictionary.join(defaultStyleProps, props.styleProps or {})
	local borderRadius: UDim = styleProps.borderRadius
	local gutter: number = styleProps.gutter
	local contentGap: number = styleProps.contentGap
	local titleFont = styleProps.titleFont
	local titleTextColor: StyleTypes.ThemeItem = styleProps.titleTextColor
	-- size animation of expandable area's expanding and collapsing
	local isExpanded, setExpanded = React.useState(false)
	local heightOffset, animateHeightOffset = ReactOtter.useAnimatedBinding(0)
	React.useEffect(function()
		if isExpanded then
			animateHeightOffset(ReactOtter.spring(props.expandableAreaHeightOffset, props.animationConfig))
		else
			animateHeightOffset(ReactOtter.spring(0, props.animationConfig))
		end
		return nil
	end, {
		isExpanded,
		props.expandableAreaHeightOffset,
		props.animationConfig,
	} :: { any })

	-- calculate itemSize from absoluteSize, itemAspectRatio and numItemsShown
	local itemSize, setItemSize = React.useState(Vector2.zero)
	local onAbsoluteSizeChanged = React.useCallback(function(rbx: any, status: boolean, old: any, new: any)
		local totalPaddings = gutter * (props.numItemsShown - 1)
		local itemWidth = (rbx.AbsoluteSize.X - totalPaddings) / props.numItemsShown
		setItemSize(Vector2.new(itemWidth, itemWidth / props.itemAspectRatio))
	end, {
		gutter,
		props.itemAspectRatio,
		props.numItemsShown,
	} :: { any })

	-- gamepad' selection change to update expandable status
	local onSelectionChanged = React.useCallback(
		function(
			mediaGalleryInstance: ScrollingFrame?,
			_status: boolean,
			oldSelection: GuiObject?,
			newSelection: GuiObject?
		)
			if not mediaGalleryInstance then
				return nil
			end

			local isSelected = newSelection ~= nil
				and newSelection:isDescendantOf(mediaGalleryInstance :: ScrollingFrame)
			local wasSelected = oldSelection ~= nil
				and oldSelection:IsDescendantOf(mediaGalleryInstance :: ScrollingFrame)
			local gainedSelection = isSelected and not wasSelected
			local lostSelection = not isSelected and wasSelected

			if gainedSelection then
				-- expand when gains selection
				setExpanded(true)
				props.mediaGalleryGainFocused(true)
				return nil
			end

			if lostSelection then
				-- collapse when cursor moves up, not moves down
				local shouldStayExpanded = newSelection ~= nil
					and newSelection.AbsolutePosition.Y > (oldSelection :: GuiObject).AbsolutePosition.Y
				setExpanded(shouldStayExpanded)
				props.exitFullscreen()
				props.mediaGalleryGainFocused(false)
				return nil
			end

			return nil
		end,
		{
			props.exitFullscreen,
			props.mediaGalleryGainFocused,
		} :: { any }
	)

	local selectionCursor = useSelectionCursor(props.selectionCursor)
	local itemsArray = React.useMemo(function()
		local newItems = {}
		for index, item in props.items do
			newItems["Item" .. index] = React.createElement("ImageButton", {
				LayoutOrder = index,
				Size = UDim2.fromOffset(itemSize.X, itemSize.Y),
				Image = item.imageId,
				ScaleType = Enum.ScaleType.Crop,
				BackgroundTransparency = 1,
				AutoButtonColor = false,
				SelectionImageObject = selectionCursor,
				[React.Event.Activated] = function()
					props.onActivated(index)
				end,
				[React.Event.SelectionGained] = function()
					props.onSelectionGained(index)
				end,
			}, {
				Corner = React.createElement("UICorner", {
					CornerRadius = borderRadius,
				}),
			})
		end
		return newItems :: any
	end, {
		itemSize,
		props.items,
		props.onActivated,
		props.onSelectionGained,
		selectionCursor,
		borderRadius,
	} :: { any })
	local textOneLineSizeY = if titleFont.RelativeSize
		then titleFont.RelativeSize * stylePalette.Font.BaseSize
		else titleFont.FontSize
	return React.createElement("CanvasGroup", {
		GroupTransparency = props.groupTransparency,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
	}, {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, contentGap),
		}),
		ExpandableArea = React.createElement("Frame", {
			Size = heightOffset:map(function(heightValue)
				return UDim2.new(1, 0, 0, heightValue)
			end),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}),
		Title = React.createElement(GenericTextLabel, {
			Size = UDim2.new(1, 0, 0, textOneLineSizeY),
			Text = props.titleText,
			TextXAlignment = Enum.TextXAlignment.Left,
			colorStyle = titleTextColor,
			fontStyle = titleFont,
			LayoutOrder = 2,
		}),
		MediaGallery = React.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 0, itemSize.Y),
			BackgroundTransparency = 1,
			AutomaticCanvasSize = Enum.AutomaticSize.XY,
			ScrollBarImageTransparency = 1,
			ScrollBarThickness = 0,
			ScrollingDirection = Enum.ScrollingDirection.X,
			Selectable = false,
			LayoutOrder = 3,
			[React.Change.AbsoluteSize] = onAbsoluteSizeChanged,
			[React.Event.SelectionChanged] = onSelectionChanged,
		}, {
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, gutter),
			}),
			Items = React.createElement(React.Fragment, {}, itemsArray),
		}),
	})
end

return MediaGalleryExpandableView

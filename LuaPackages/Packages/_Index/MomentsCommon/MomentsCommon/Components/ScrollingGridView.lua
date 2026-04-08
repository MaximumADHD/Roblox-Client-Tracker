local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local Button = Foundation.Button
local ScrollBarVisibility = Foundation.Enums.ScrollBarVisibility
local ScrollView = Foundation.ScrollView
local View = Foundation.View

local useTokens = Foundation.Hooks.useTokens

type GridItemsProps<T> = {
	items: { T },
	itemsPerRow: number,
	itemSize: Vector2,
	itemPadding: Vector2,
	LayoutOrder: number?,
	renderItem: (T, number) -> React.ReactNode,
}

local function GridItems<T>(props: GridItemsProps<T>)
	local children = {}
	for index, item in props.items do
		children[index] = React.createElement(View, {
			LayoutOrder = index,
			Size = UDim2.fromOffset(props.itemSize.X, props.itemSize.Y),
		}, {
			Content = props.renderItem(item, index),
		})
	end

	return React.createElement(View, {
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.LayoutOrder,
		tag = "auto-y size-full-0",
	}, {
		UIGridLayout = React.createElement("UIGridLayout", {
			CellPadding = UDim2.fromOffset(props.itemPadding.X, props.itemPadding.Y),
			CellSize = UDim2.fromOffset(props.itemSize.X, props.itemSize.Y),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Children = React.createElement(React.Fragment, nil, children),
	})
end

type Bindable<T> = Foundation.Bindable<T>

type PaddingTable = {
	top: Bindable<UDim>?,
	bottom: Bindable<UDim>?,
	left: Bindable<UDim>?,
	right: Bindable<UDim>?,
}

export type ScrollingGridViewProps<T> = {
	aspectRatio: number,
	items: { [number]: T },
	itemConfig: {
		padding: number,
		maxItemsPerRow: number,
		minItemsPerPage: number,
		minItemWidth: number,
	},
	layoutOrder: number?,
	padding: PaddingTable?,
	position: UDim2?,
	renderItem: (T, number) -> React.ReactNode,
	renderEmptyState: () -> React.ReactNode,
	shouldShowShowMoreButton: boolean,
	showMoreButtonText: string,
	onShowMoreCallback: () -> (),
}

local ScrollingGridView = function<T>(props: ScrollingGridViewProps<T>): React.ReactElement
	local absoluteSize, setAbsoluteSize = React.useState(Vector2.new(0, 0))
	local itemsToRenderCount, setItemsToRenderCount = React.useState(0)

	local tokens = useTokens()

	local onAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		setAbsoluteSize(rbx.AbsoluteSize)
	end, {})

	local itemsPerRow = React.useMemo(function()
		return math.clamp(
			math.floor(absoluteSize.X / props.itemConfig.minItemWidth),
			1,
			props.itemConfig.maxItemsPerRow
		)
	end, { absoluteSize, props.itemConfig })

	local galleryItemSize = React.useMemo(function()
		local availableWidth = absoluteSize.X
		availableWidth -= (props.itemConfig.padding * (itemsPerRow - 1))

		local width = math.min(availableWidth / itemsPerRow, availableWidth)
		local height = width * props.aspectRatio

		return Vector2.new(math.floor(width), math.floor(height))
	end, { absoluteSize, itemsPerRow, props.aspectRatio, props.itemConfig })

	local itemsPerPage = React.useMemo(function()
		if absoluteSize.Y <= 0 then
			return 0
		end

		local rowsToRender = math.floor(absoluteSize.Y / galleryItemSize.Y)

		local itemsPerPageToRender = rowsToRender * itemsPerRow
		return math.max(itemsPerPageToRender, props.itemConfig.minItemsPerPage)
	end, { absoluteSize, galleryItemSize, itemsPerRow, props.itemConfig } :: { any })

	local shouldRenderGrid = absoluteSize.X > 0 and absoluteSize.Y > 0
	local hasShowMore = props.shouldShowShowMoreButton or #props.items > itemsToRenderCount

	React.useEffect(function()
		if itemsToRenderCount < itemsPerPage then
			setItemsToRenderCount(itemsPerPage)
		end
	end, { absoluteSize, itemsPerPage, itemsToRenderCount } :: { any })

	local onShowMoreActivated = React.useCallback(function()
		local newItemCount = itemsToRenderCount + itemsPerPage
		if newItemCount > #props.items and props.shouldShowShowMoreButton then
			props.onShowMoreCallback()
		end

		setItemsToRenderCount(itemsToRenderCount + itemsPerPage)
	end, { itemsToRenderCount, itemsPerPage, props.items, props.onShowMoreCallback })

	local itemsToRender = React.useMemo(function()
		if hasShowMore then
			local sliceEnd = math.min(#props.items, itemsToRenderCount)
			return Dash.slice(props.items, 1, sliceEnd)
		else
			return props.items
		end
	end, { props.items, hasShowMore, itemsToRenderCount } :: { any })

	if props.items == nil or #props.items == 0 then
		return React.createElement(View, {
			onAbsoluteSizeChanged = onAbsoluteSizeChanged,
			tag = "shrink size-full",
		}, {
			EmptyState = props.renderEmptyState(),
		})
	end

	return React.createElement(View, {
		onAbsoluteSizeChanged = onAbsoluteSizeChanged,
		tag = "shrink size-full",
	}, {
		GridViewContainer = React.createElement(View, {
			tag = "size-full",
		}, {
			ScrollView = React.createElement(ScrollView, {
				BorderSizePixel = 0,
				layout = {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, tokens.Padding.Large),
				},
				LayoutOrder = if props.layoutOrder then props.layoutOrder else 1,
				scroll = {
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					CanvasSize = UDim2.fromScale(1, 0),
					ScrollingDirection = Enum.ScrollingDirection.Y,
					scrollBarVisibility = ScrollBarVisibility.None,
				},
				tag = "size-full",
			}, {
				UIPadding = if props.padding
					then React.createElement("UIPadding", {
						PaddingBottom = props.padding.bottom,
						PaddingTop = props.padding.top,
						PaddingLeft = props.padding.left,
						PaddingRight = props.padding.right,
					})
					else nil,

				GridView = if #props.items > 0 and shouldRenderGrid
					then React.createElement(GridItems, {
						itemPadding = Vector2.new(props.itemConfig.padding, props.itemConfig.padding),
						items = itemsToRender,
						itemsPerRow = itemsPerRow,
						itemSize = galleryItemSize,
						LayoutOrder = 1,
						renderItem = props.renderItem,
					})
					else nil,

				ShowMore = if hasShowMore
					then React.createElement(Button, {
						LayoutOrder = 2,
						onActivated = onShowMoreActivated,
						size = Foundation.Enums.InputSize.Small,
						text = props.showMoreButtonText,
					})
					else nil,
			}),
		}),
	})
end

return ScrollingGridView

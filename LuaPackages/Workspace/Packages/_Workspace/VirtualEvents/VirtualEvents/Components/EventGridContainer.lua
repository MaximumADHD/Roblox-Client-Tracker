local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local Cryo = require(VirtualEvents.Parent.Cryo)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local UrlBuilder = require(VirtualEvents.Parent.UrlBuilder).UrlBuilder
local types = require(VirtualEvents.types)
local isEventValid = require(VirtualEvents.Common.isEventValid)
local EventTile = require(script.Parent.EventTile)

local UIBloxEmptyState = UIBlox.App.Indicator.EmptyState
local useStyle = UIBlox.Core.Style.useStyle
local ScrollingGridView = UIBlox.App.Grid.ScrollingGridView
local GridMetrics = UIBlox.App.Grid.GridMetrics

local RATIO = 16 / 9
local HORIZONTAL_PADDING = 12
local VERTICAL_PADDING = 24

local SIDE_PADDING = 40 --left padding + right padding

export type Props = {
	sponsoredEvents: { types.SponsoredEvent }?,
	onEventTileActivated: ((virtualEvent: types.VirtualEvent) -> ())?,
	onButtonActivated: ((context: types.SponsoredEvent) -> ())?,
	position: UDim2?,
	size: UDim2?,
}

local function EventGridContainer(props: Props)
	local baseWidth, setBaseWidth = React.useState(1)

	local renderItem = React.useCallback(function(itemProps: { [string]: any })
		return React.createElement(EventTile, itemProps)
	end, {})

	local onResize = React.useCallback(function(rbx: Frame)
		local contentWidth = rbx.AbsoluteSize.X
		local metrics = GridMetrics.getLargeMetrics(contentWidth, HORIZONTAL_PADDING * 2)
		setBaseWidth(metrics.itemWidth)
	end, {})

	local getEventUrl = React.useCallback(function(path: string)
		local urlBuilder = UrlBuilder.new({
			base = "www",
			path = path,
		})
		return urlBuilder()
	end, {})

	local width = baseWidth - SIDE_PADDING
	local height = width / RATIO

	local style = useStyle()
	local localized = useLocalization({
		emptyText = "CommonUI.Features.Label.MoreEvents",
	})

	local items = {}

	if props.sponsoredEvents and #props.sponsoredEvents > 0 then
		local count = 0
		items = Cryo.List.filterMap(props.sponsoredEvents, function(event)
			if isEventValid(event) then
				count = count + 1
				return {
					imageUrl = event.imageUrl,
					context = {
						title = event.title,
						url = getEventUrl(event.pagePath),
					},
					onActivated = props.onButtonActivated,
					layoutOrder = count,
					maskColor = style.Theme.BackgroundDefault.Color,
				}
			else
				-- FIXME Luau: Type 'nil' could not be converted into '{| context: {| title: any, url: any |}, imageUrl:
				-- any, layoutOrder: number, maskColor: any, onActivated: (() -> ())? |}'(Type Error)
				return nil :: any
			end
		end)
	end

	if #items > 0 then
		return React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
		}, {
			ContentFrame = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				[ReactRoblox.Change.AbsoluteSize] = onResize,
			}, {
				ScrollingGridView = React.createElement(ScrollingGridView, {
					items = items,
					renderItem = renderItem,
					itemSize = Vector2.new(width, height),
					size = UDim2.fromOffset(1, 1),
					itemPadding = Vector2.new(HORIZONTAL_PADDING, VERTICAL_PADDING),
				}),
			}),
		})
	else
		return React.createElement(UIBloxEmptyState, {
			text = localized.emptyText,
			size = UDim2.fromScale(1, 1),
		})
	end
end

return EventGridContainer

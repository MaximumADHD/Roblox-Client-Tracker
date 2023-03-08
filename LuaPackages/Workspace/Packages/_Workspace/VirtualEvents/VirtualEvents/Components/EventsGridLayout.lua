local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)

local defaultProps = {
	itemPadding = UDim.new(0, 12),
	numItemsShown = math.huge,
}

export type Props = {
	items: { React.ReactElement<any, string> },
	itemPadding: UDim?,
	numItemsShown: number?,
}

type InternalProps = Props & typeof(defaultProps)

local function EventsGridLayout(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)

	local items = React.useMemo(function()
		local items = {}
		for i = 1, props.numItemsShown do
			local element = props.items[i]

			items[i] = React.createElement("Frame", {
				LayoutOrder = i,
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
			}, {
				Content = element,
			})
		end
		return items
	end, { props.items, props.numItemsShown } :: { any })

	local rows = React.useMemo(function()
		local rows = {}

		for i = 1, #items, 2 do
			local item1 = items[i]
			local item2 = items[i + 1]

			local row = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = i,
			}, {
				Layout = React.createElement("UIListLayout", {
					Padding = props.itemPadding,
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
				}),
				CellFrame1 = React.createElement("Frame", {
					Size = UDim2.new(0.5, -props.itemPadding.Offset / 2, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				}, {
					Item = React.createElement(React.Fragment, nil, item1),
				}),
				CellFrame2 = item2 and React.createElement("Frame", {
					Size = UDim2.new(0.5, -props.itemPadding.Offset / 2, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					Item = React.createElement(React.Fragment, nil, item2),
				}),
			})
			rows["Row" .. math.ceil(i / 2)] = row
		end
		return rows
	end, { props.items, items })

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			Padding = props.itemPadding,
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		Rows = React.createElement(React.Fragment, nil, rows :: any),
	})
end

return EventsGridLayout

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local dependencyArray = require(VirtualEvents.Parent.RoactUtils).Hooks.dependencyArray

local SecondaryButton = UIBlox.App.Button.SecondaryButton

local defaultProps = {
	initialItemsShown = 3,
	extraItemsShownOnLoad = 5,
	itemPadding = UDim.new(0, 12),
}

export type Props = {
	items: { React.ReactElement<any, string> },
	itemPadding: UDim?,
	initialItemsShown: number?,
	extraItemsShownOnLoad: number?,
	onSeeMore: (() -> ())?,
	layoutOrder: number?,
}

type InternalProps = Props & typeof(defaultProps)

local function PaginatedVerticalList(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)
	local timesExpanded, setTimesExpanded = React.useState(0)

	local numItemsShown = React.useMemo(function()
		return props.initialItemsShown + props.extraItemsShownOnLoad * timesExpanded
	end, dependencyArray(props.initialItemsShown, props.extraItemsShownOnLoad, timesExpanded))

	local text = useLocalization({
		seeMore = "Feature.VirtualEvents.SeeMore",
	})

	React.useEffect(function()
		setTimesExpanded(0)
	end, dependencyArray(props.initialItemsShown, props.extraItemsShownOnLoad))

	local onSeeMore = React.useCallback(function()
		setTimesExpanded(function(prev)
			return prev + 1
		end)

		if props.onSeeMore then
			props.onSeeMore()
		end
	end, dependencyArray(props.onSeeMore))

	local items = React.useMemo(function()
		local items = {}
		for i = 1, numItemsShown do
			local element = props.items[i]

			items["Item" .. i] = React.createElement("Frame", {
				LayoutOrder = i,
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
			}, {
				Content = element,
			})
		end
		return items
	end, { numItemsShown })

	return React.createElement("Frame", {
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
	}, {
		Layout = React.createElement("UIListLayout", {
			Padding = props.itemPadding,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Items = React.createElement(React.Fragment, nil, items :: any),

		SeeMore = if numItemsShown < #props.items
			then React.createElement(SecondaryButton, {
				layoutOrder = #props.items + 1,
				size = UDim2.fromScale(1, 0),
				automaticSize = Enum.AutomaticSize.Y,
				text = text.seeMore,
				onActivated = onSeeMore,
			})
			else nil,
	})
end

return PaginatedVerticalList

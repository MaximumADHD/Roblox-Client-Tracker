local Src = script:FindFirstAncestor("ultimate-list")

local Dimensions = require(Src.Dimensions)
local DimensionsMethods = require(Src.Dimensions.DimensionsMethods)
local React = require(Src.Parent.React)
local Renderers = require(Src.Renderers)
local adjustPositionToScrollAxis = require(Src.Dimensions.adjustPositionToScrollAxis)
local createVirtualizedListController = require(Src.createVirtualizedListController)
local joinAndMapBindings = require(Src.Util.joinAndMapBindings)

local e = React.createElement

local function getKeyDefault<T>(_value: T, index: number): string
	return tostring(index)
end

-- Lock the scroll axis in place during updates to avoid flickering
type ScrollLock<T> = {
	lockedTo: { T },
	scrollAxis: number,
}

local function ReactStateRenderer<T>(props: {
	virtualizedListController: createVirtualizedListController.VirtualizedListController<T>,

	config: Renderers.StateRendererConfig,

	dimensions: Dimensions.Dimensions<T>,
	direction: "x" | "y",

	callback: (T) -> React.Node,
	getKey: ((value: T, index: number) -> string)?,

	scrollAxisBinding: React.Binding<number>,
})
	local items, setItems = React.useState(props.virtualizedListController.get)
	local scrollLockBinding, setScrollLock = React.useBinding(nil :: ScrollLock<T>?)

	React.useEffect(function()
		local lastItems = items

		return props.virtualizedListController.bindToUpdate(function()
			setScrollLock({
				lockedTo = lastItems,
				scrollAxis = props.scrollAxisBinding:getValue(),
			})

			lastItems = props.virtualizedListController.get()
			setItems(lastItems)
		end)
	end, { props.virtualizedListController, props.scrollAxisBinding } :: { unknown })

	local children: { [string]: React.Node } = {}
	local getKey: (value: T, index: number) -> string = props.getKey or getKeyDefault
	local range = props.virtualizedListController.getRange()

	for relativeIndex, item in items do
		local index = range.X + (relativeIndex - 1)

		local dimensionsRect = DimensionsMethods.getUDimRect(
			props.dimensions,
			item,
			index,
			props.virtualizedListController.getWindowSize(),
			props.direction
		)

		children[getKey(item, index)] = e("Frame", {
			BackgroundTransparency = 1,
			Position = joinAndMapBindings(function(scrollAxis: number, scrollLock: ScrollLock<T>?)
				if
					props.config.freezeViewWhileScrolling ~= false
					and scrollLock ~= nil
					and scrollLock.lockedTo == items
				then
					return adjustPositionToScrollAxis(dimensionsRect.position, scrollLock.scrollAxis, props.direction)
				else
					return adjustPositionToScrollAxis(dimensionsRect.position, scrollAxis, props.direction)
				end
			end, props.scrollAxisBinding, scrollLockBinding),
			Size = dimensionsRect.size,
		}, props.callback(item))
	end

	return e(React.Fragment, nil, children)
end

return ReactStateRenderer

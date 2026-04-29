local Src = script:FindFirstAncestor("ultimate-list")

local Dimensions = require(Src.Dimensions)
local DimensionsMethods = require(Src.Dimensions.DimensionsMethods)
local React = require(Src.Parent.React)
local adjustPositionToScrollAxis = require(Src.Dimensions.adjustPositionToScrollAxis)
local createDebugLogger = require(Src.Util.createDebugLogger)
local createVirtualizedListController = require(Src.createVirtualizedListController)
local joinAndMapBindings = require(Src.Util.joinAndMapBindings)

local e = React.createElement

local log = createDebugLogger("ReactBindingsRenderer")

local function getKeyDefault<T>(_value: T, index: number): string
	return tostring(index)
end

type LocatedItem<T> = {
	contents: {
		type: "vacant",
	} | {
		type: "full",
		index: number,
		key: string,
		value: T,
	},
}

type BindingAndSetter<T> = {
	binding: React.Binding<T>,
	set: (T) -> (),
}

local function ReactBindingsRenderer<T>(props: {
	virtualizedListController: createVirtualizedListController.VirtualizedListController<T>,
	scrollAxisBinding: React.Binding<number>,

	dimensions: Dimensions.Dimensions<T>,
	direction: "x" | "y",

	callback: (React.Binding<T?>) -> React.Node,
	getKey: ((value: T, index: number) -> string)?,
})
	-- NOT in order.
	-- This is to ensure that elements keep identity even when scrolled.
	local itemBindingsAndSetters: { BindingAndSetter<LocatedItem<T>> }, setItemBindingsAndSetters = React.useState(
		function(): { BindingAndSetter<LocatedItem<T>> }
			local total = {}

			local countHint = DimensionsMethods.elementsDisplayedHint(
				props.dimensions,
				props.virtualizedListController.getWindowSize(),
				props.direction
			)
			if countHint == nil then
				return total
			end

			for _ = 1, countHint do
				local binding, setBinding = React.createBinding({
					contents = {
						type = "vacant",
					},
				} :: LocatedItem<T>)

				table.insert(total, {
					binding = binding,
					set = setBinding,
				})
			end

			return total
		end
	)

	local getKey: (value: T, index: number) -> string = props.getKey or getKeyDefault

	React.useEffect(function()
		return props.virtualizedListController.bindToUpdate(function()
			local newView = props.virtualizedListController.get()
			local newRange = props.virtualizedListController.getRange()

			-- Try to preserve identity of bindings so that a scroll to show one new item only affects the binding
			-- of the no longer visible item.

			local newKeyToItemIndexInView: { [string]: number? } = {}
			for index, itemInNewView in newView do
				newKeyToItemIndexInView[getKey(itemInNewView, index + (newRange.X - 1))] = index
			end

			local deadSetters = {}
			local vacantSetters = {}
			local newBindingsAndSetters: { BindingAndSetter<LocatedItem<T>> } = {}

			for _, bindingAndSetter in itemBindingsAndSetters do
				local locatedItem = bindingAndSetter.binding:getValue()
				if locatedItem.contents.type == "vacant" then
					table.insert(vacantSetters, bindingAndSetter.set)
					continue
				end

				local key = locatedItem.contents.key
				local itemIndexInView = newKeyToItemIndexInView[key]
				if itemIndexInView == nil then
					log("%s is now dead", key)
					table.insert(deadSetters, bindingAndSetter.set)
				else
					newKeyToItemIndexInView[key] = nil

					local newValue = newView[itemIndexInView]
					if locatedItem.contents.value ~= newValue then
						log("%s existed, but changed", key)
						bindingAndSetter.set({
							contents = {
								type = "full",
								index = itemIndexInView + (newRange.X - 1),
								key = key,
								value = newValue,
							},
						})
					end
				end
			end

			log(
				"%d total setters, %d dead setters, %d vacant setters",
				#itemBindingsAndSetters,
				#deadSetters,
				#vacantSetters
			)

			-- `newKeyToItemIndexInView` now only contains keys that we haven't seen.
			for newKey, indexInView in newKeyToItemIndexInView do
				assert(indexInView ~= nil, "Luau")
				local value = newView[indexInView]

				local newLocatedItem: LocatedItem<T> = {
					contents = {
						type = "full",
						index = indexInView + (newRange.X - 1),
						key = newKey,
						value = value,
					},
				}

				-- Dead setters (referring to an older value that is no longer visible) go first
				-- because they will be transformed into vacants at the end otherwise anyway.
				local deadSetter = table.remove(deadSetters)
				if deadSetter ~= nil then
					log("%s is filling dead spot", newKey)
					deadSetter(newLocatedItem)
					continue
				end

				local vacantSetter = table.remove(vacantSetters)
				if vacantSetter ~= nil then
					log("%s is filling vacant spot", newKey)
					vacantSetter(newLocatedItem)
					continue
				end

				-- Out of bindings, we'll need to render more
				local binding, setBinding = React.createBinding(newLocatedItem)
				table.insert(newBindingsAndSetters, {
					binding = binding,
					set = setBinding,
				})
			end

			if #newBindingsAndSetters > 0 then
				log(
					"Needed to create %d more bindings to fit, there will be %d setters",
					#newBindingsAndSetters,
					#newBindingsAndSetters + #itemBindingsAndSetters
				)
				setItemBindingsAndSetters(function(total)
					total = table.clone(total)
					table.move(newBindingsAndSetters, 1, #newBindingsAndSetters, #total + 1, total)
					return total
				end)
			end

			for _, deadSetter in deadSetters do
				deadSetter({
					contents = {
						type = "vacant",
					},
				})
			end
		end)
	end, { props.virtualizedListController, getKey, itemBindingsAndSetters } :: { unknown })

	local children: { [string]: React.Node } = {}
	for index, itemBindingAndSetter in itemBindingsAndSetters do
		-- Luau: Not sure what is going on here
		local binding: React.Binding<LocatedItem<T>> = itemBindingAndSetter.binding :: any

		local udimRectBinding: React.Binding<Dimensions.UDimRect> = binding:map(function(locatedItem: LocatedItem<T>)
			if locatedItem.contents.type == "vacant" then
				return {
					size = UDim2.new(),
					position = UDim2.new(),
				}
			end

			return DimensionsMethods.getUDimRect(
				props.dimensions,
				locatedItem.contents.value,
				locatedItem.contents.index,
				props.virtualizedListController.getWindowSize(),
				props.direction
			)
		end)

		children[`Item{index}`] = e("Frame", {
			BackgroundTransparency = 1,

			Position = joinAndMapBindings(function(udimRect: Dimensions.UDimRect, scrollAxis: number)
				return adjustPositionToScrollAxis(udimRect.position, scrollAxis, props.direction)
			end, udimRectBinding, props.scrollAxisBinding),

			Size = udimRectBinding:map(function(udimRect: Dimensions.UDimRect)
				return udimRect.size
			end),

			Visible = binding:map(function(locatedItem: LocatedItem<T>)
				return locatedItem.contents.type == "full"
			end),
		}, {
			Content = props.callback(binding:map(function(locatedItem: LocatedItem<T>)
				return if locatedItem.contents.type == "full" then locatedItem.contents.value else nil
			end)),
		})
	end

	return e(React.Fragment, {}, children)
end

ReactBindingsRenderer = React.memo(ReactBindingsRenderer) :: never

return ReactBindingsRenderer

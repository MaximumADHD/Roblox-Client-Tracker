local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecyclerReact").Flags).FFlagViewRecyclerReact08
local Root = script:FindFirstAncestor("ViewRecyclerReact")

local ComposedRecyclableView = require(Root.ReactAdapter.Private.ComposedRecyclableView)
local React = require(Root.Parent.React)
local RecyclableViewRegistry = require(Root.ReactAdapter.Private.RecyclableViewRegistry)
local Signals = require(Root.Parent.Signals)

local selectViewType = require(Root.ReactAdapter.Private.selectViewType)

type RecyclableViewType<T> = RecyclableViewRegistry.RecyclableViewType<T>

export type Props<T> = {
	itemSignal: Signals.getter<T>,
	selected: (string | Signals.getter<string?>)?,
	views: { [string]: RecyclableViewType<T> },
}

local function RecyclableViewSwitch<T>(props: Props<T>): React.Node
	local selected = props.selected
	local views = props.views

	local viewType, activeByKey, children
	if FFlagViewRecyclerReact08 then
		viewType = React.useMemo(function()
			for key, candidate in views do
				assert(
					RecyclableViewRegistry.isRegistered(candidate),
					`RecyclableViewSwitch: views.{key} is not a Recyclable view type`
				)
			end
			return selectViewType(selected, function(key: string?)
				return if key == nil then nil else views[key]
			end)
		end, { selected, views } :: { unknown })

		return React.createElement(ComposedRecyclableView, {
			viewType = viewType,
			itemSignal = props.itemSignal,
		})
	else
		activeByKey = React.useMemo(function()
			local result: { [string]: boolean | Signals.getter<boolean> } = {}
			for key, candidate in views do
				assert(
					RecyclableViewRegistry.isRegistered(candidate),
					`RecyclableViewSwitch: views.{key} is not a Recyclable view type`
				)
				if type(selected) == "function" then
					result[key] = Signals.createComputed(function(scope)
						return selected(scope) == key
					end)
				else
					result[key] = selected == key
				end
			end
			return result
		end, { selected, views } :: { unknown })

		children = {}
		for key, candidate in views do
			children[key] = React.createElement(candidate, {
				active = activeByKey[key],
				itemSignal = props.itemSignal,
			})
		end
		return React.createElement(React.Fragment, nil, children)
	end
end

return RecyclableViewSwitch

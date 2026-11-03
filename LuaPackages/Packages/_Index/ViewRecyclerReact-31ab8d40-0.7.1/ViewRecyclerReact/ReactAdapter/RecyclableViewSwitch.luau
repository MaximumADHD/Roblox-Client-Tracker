local Root = script:FindFirstAncestor("ViewRecyclerReact")

local React = require(Root.Parent.React)
local RecyclableViewRegistry = require(Root.ReactAdapter.Private.RecyclableViewRegistry)
local Signals = require(Root.Parent.Signals)

type RecyclableViewType<T> = RecyclableViewRegistry.RecyclableViewType<T>

export type Props<T> = {
	itemSignal: Signals.getter<T>,
	selected: (string | Signals.getter<string?>)?,
	views: { [string]: RecyclableViewType<T> },
}

local function RecyclableViewSwitch<T>(props: Props<T>): React.Node
	local selected = props.selected
	local views = props.views
	local activeByKey = React.useMemo(function()
		local result: { [string]: boolean | Signals.getter<boolean> } = {}
		for key, viewType in views do
			assert(
				RecyclableViewRegistry.isRegistered(viewType),
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

	local children = {}
	for key, viewType in views do
		children[key] = React.createElement(viewType, {
			active = activeByKey[key],
			itemSignal = props.itemSignal,
		})
	end
	return React.createElement(React.Fragment, nil, children)
end

return RecyclableViewSwitch

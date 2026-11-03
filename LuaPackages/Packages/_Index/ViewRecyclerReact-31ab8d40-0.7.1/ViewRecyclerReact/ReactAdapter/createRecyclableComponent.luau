local Root = script:FindFirstAncestor("ViewRecyclerReact")

local React = require(Root.Parent.React)
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local SignalsReact = require(Root.Parent.SignalsReact)
local createRecyclableView = require(Root.ReactAdapter.createRecyclableView)

export type Options = createRecyclableView.Options
export type ComponentProps<Props> = Props & {
	pending: React.Binding<boolean>,
}

local function createRecyclableComponent<Props>(
	component: (props: ComponentProps<Props>) -> React.Node,
	options: Options?
): createRecyclableView.RecyclableViewType<Props>
	local callsComponent = type(component) == "function"

	local function OrdinaryPropsAdapter(props: createRecyclableView.SignalProps<Props>): React.Node
		local ordinaryProps = SignalsReact.useSignalState(props.itemSignal)
		assert(
			type(ordinaryProps) == "table",
			"createRecyclableComponent: the item must be a props table; use createRecyclableView for other item values"
		)
		local forwarded = table.clone(ordinaryProps :: any)
		forwarded.pending = props.pending
		-- A function component is called rather than created as an element, so
		-- item fields named `key` or `ref` reach it instead of being taken by
		-- React. Wrapped components such as React.memo still go through React.
		if callsComponent then
			return component(forwarded)
		end
		return React.createElement(component :: any, forwarded)
	end

	local resolvedOptions = table.clone(options or {})
	if resolvedOptions.readiness == nil then
		resolvedOptions.readiness = RecyclableViewReadiness.ReadyOnCommit
	end
	return createRecyclableView(OrdinaryPropsAdapter, resolvedOptions)
end

return createRecyclableComponent

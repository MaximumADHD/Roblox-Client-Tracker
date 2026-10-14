local Root = script:FindFirstAncestor("ViewRecyclerReact")

local React = require(Root.Parent.React)
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
	local function OrdinaryPropsAdapter(props: createRecyclableView.SignalProps<Props>): React.Node
		local ordinaryProps = SignalsReact.useSignalState(props.itemSignal)
		local forwarded = table.clone(ordinaryProps :: any)
		forwarded.pending = props.pending
		return React.createElement(component, forwarded)
	end

	return createRecyclableView(OrdinaryPropsAdapter, options)
end

return createRecyclableComponent

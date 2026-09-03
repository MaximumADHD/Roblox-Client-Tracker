local Root = script:FindFirstAncestor("ViewRecyclerReact")

local React = require(Root.Parent.React)
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local Signals = require(Root.Parent.Signals)

export type Readiness = RecyclableViewReadiness.RecyclableViewReadiness
export type SignalProps<T> = {
	itemSignal: Signals.getter<T>,
	pending: React.Binding<boolean>,
}
export type RecyclableViewType<T> = (props: T) -> React.Node
export type Metadata<T> = {
	readiness: Readiness,
	hideWhilePending: boolean,
	signalComponent: (props: SignalProps<T>) -> React.Node,
}

local registered: { [any]: Metadata<any> } = setmetatable({}, { __mode = "k" }) :: any

local RecyclableViewRegistry = {}

function RecyclableViewRegistry.register<T>(viewType: RecyclableViewType<T>, metadata: Metadata<T>)
	registered[viewType] = metadata
end

function RecyclableViewRegistry.isRegistered(viewType: any): boolean
	return registered[viewType] ~= nil
end

function RecyclableViewRegistry.getMetadata<T>(viewType: RecyclableViewType<T>): Metadata<T>?
	return registered[viewType]
end

return RecyclableViewRegistry

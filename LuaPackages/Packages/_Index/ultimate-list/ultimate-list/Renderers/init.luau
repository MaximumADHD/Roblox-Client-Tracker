local Src = script:FindFirstAncestor("ultimate-list")

local React = require(Src.Parent.React)

local Renderers = {}

export type Renderer<T> = {
	type: "byState",
	callback: (T) -> React.Node,
	config: StateRendererConfig,
} | {
	type: "byBinding",
	callback: (React.Binding<T?>) -> React.Node,
}

export type StateRendererConfig = {
	freezeViewWhileScrolling: boolean?,
}

function Renderers.byState<T>(callback: (T) -> React.Node, config: StateRendererConfig?): Renderer<T>
	return {
		type = "byState",
		callback = callback,
		config = config or {},
	}
end

function Renderers.byBinding<T>(callback: (React.Binding<T?>) -> React.Node): Renderer<T>
	return {
		type = "byBinding",
		callback = callback,
	}
end

return Renderers

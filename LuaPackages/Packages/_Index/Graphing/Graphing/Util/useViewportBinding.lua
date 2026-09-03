local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)
local Signals = require(Packages.Signals)
local SignalsReact = require(Packages.SignalsReact)

local CanvasContext = require(Graphing.CanvasContext)
local Types = require(Graphing.Types)

local function useViewportBinding<T>(compute: (canvasContext: Types.CanvasContext) -> T, deps: { any? }?): React.Binding<T>
	local canvasContext = React.useContext(CanvasContext)
	local viewportRectGetter = canvasContext.viewportRectGetter

	local allDeps: { any } = { viewportRectGetter }
	if deps then
		for _, dep in deps do
			table.insert(allDeps, dep)
		end
	end

	local getter = React.useMemo(function()
		return Signals.createComputed(function(scope)
			viewportRectGetter(scope)
			return compute(canvasContext)
		end)
	end, allDeps)

	return SignalsReact.useSignalBinding(getter)
end

local function useViewportVisibility(compute: (canvasContext: Types.CanvasContext) -> boolean, deps: { any? }?): boolean
	local canvasContext = React.useContext(CanvasContext)
	local viewportRectGetter = canvasContext.viewportRectGetter

	local allDeps: { any } = { viewportRectGetter }
	if deps then
		for _, dep in deps do
			table.insert(allDeps, dep)
		end
	end

	local getter = React.useMemo(function()
		return Signals.createComputed(function(scope)
			viewportRectGetter(scope)
			return compute(canvasContext)
		end)
	end, allDeps)

	return SignalsReact.useSignalState(getter)
end

return {
	useViewportBinding = useViewportBinding,
	useViewportVisibility = useViewportVisibility,
}

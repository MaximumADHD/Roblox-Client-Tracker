local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local elevation = require(script.Parent.elevation)

local ElevationLayer = require(Foundation.Enums.ElevationLayer)
type ElevationLayer = ElevationLayer.ElevationLayer
type Token = elevation.Token

export type Manager = {
	acquire: (layer: ElevationLayer) -> elevation.Token,
	peek: (layer: ElevationLayer) -> number,
	releaseIfTop: (layer: ElevationLayer, index: number) -> nil,
}

local ElevationManagerCtx = React.createContext(nil :: Manager?)
local OwnerTokenCtx = React.createContext(nil :: Token?)

type ElevationProviderProps = {
	children: React.ReactNode,
}

local function ElevationProvider(props: ElevationProviderProps)
	local countersRef = React.useRef({
		[ElevationLayer.Popover] = 0,
		[ElevationLayer.Drawer] = 0,
		[ElevationLayer.Sheet] = 0,
		[ElevationLayer.Dialog] = 0,
		[ElevationLayer.Notification] = 0,
	} :: { [ElevationLayer]: number })

	local manager = React.useMemo(function(): Manager
		return {
			acquire = function(layer: ElevationLayer)
				local count = countersRef.current[layer] or 0

				local spec = elevation.ELEVATION_LAYERS[layer]
				local capacity = math.floor((spec.finish - spec.start) / spec.step) + 1

				if count == capacity then
					warn(
						string.format(
							"Layer '%s' capacity exceeded (%d/%d). Capping zIndex at %d.",
							tostring(layer),
							count + 1,
							capacity,
							spec.finish
						)
					)
				end

				countersRef.current[layer] = count + 1

				local zIndex = spec.start + count * spec.step

				if zIndex > spec.finish then
					zIndex = spec.finish
				end

				return { layer = layer, index = count, zIndex = zIndex }
			end,
			peek = function(layer: ElevationLayer)
				return countersRef.current[layer] or 0
			end,
			releaseIfTop = function(layer: ElevationLayer, index: number)
				local current = countersRef.current[layer] or 0

				if index ~= nil and index >= 0 and index == (current - 1) then
					countersRef.current[layer] = current - 1
				end
			end,
		}
	end, {})

	return React.createElement(ElevationManagerCtx.Provider, {
		value = manager,
	}, props.children)
end

local function ElevationOwnerScope(props)
	return React.createElement(OwnerTokenCtx.Provider, { value = props.owner }, props.children)
end

local function useElevationManager(): Manager
	local ctx = React.useContext(ElevationManagerCtx)

	if not ctx then
		error("useElevationManager must be used under <ElevationProvider>")
	end

	return ctx
end

local function useOwnerToken(): Token
	local ctx = React.useContext(OwnerTokenCtx)

	return ctx :: Token
end

return {
	ElevationProvider = ElevationProvider,
	ElevationOwnerScope = ElevationOwnerScope,
	useElevationManager = useElevationManager,
	useOwnerToken = useOwnerToken,
}

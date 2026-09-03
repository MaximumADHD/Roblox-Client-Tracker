local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local Roblox = require(Root.Parent.ViewRecyclerRoblox)

local Axis = Core.Axis
local React = require(Root.Parent.React)
local RecyclingScope = require(Root.ReactAdapter.RecyclingScope)
local RecyclingScopeContext = require(Root.ReactAdapter.Private.RecyclingScopeContext)
local RecyclingViewportContext = require(Root.ReactAdapter.Private.RecyclingViewportContext)

local e = React.createElement
local ShallowTable = Core.Adapter._Private.ShallowTable
local CONFIGURATION_KEYS = table.freeze({ "axis", "activationMargin", "retentionMargin" })

export type Props = {
	axis: Core.Axis,
	activationMargin: number?,
	retentionMargin: number?,
	children: React.Node,
	scrollingFrameProps: { [any]: any }?,
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
	maxPoolSize: number?,
	diagnostics: Core.DiagnosticCallback?,
}

local function assignRef<T>(ref: any, value: T?)
	if ref == nil then
		return
	end
	if type(ref) == "function" then
		ref(value)
	else
		ref.current = value
	end
end

local function createRecyclingViewport(adapterOptions: RecyclingScope.AdapterOptions?)
	local ConfiguredRecyclingScope = RecyclingScope.create(adapterOptions)

	local function RecyclingViewport(props: Props)
		local recyclingScope = React.useContext(RecyclingScopeContext)
		local initialConfiguration = React.useState(function()
			return {
				axis = props.axis,
				activationMargin = props.activationMargin,
				retentionMargin = props.retentionMargin,
			}
		end)
		assert(
			ShallowTable.containsEqual(props, initialConfiguration, CONFIGURATION_KEYS),
			"RecyclingViewport: axis and margins cannot change during its lifetime"
		)

		local coordinator = React.useState(function()
			return Roblox.ViewportCoordinator.new(initialConfiguration)
		end)
		local contextValue = React.useState(function()
			return {
				register = coordinator.register,
			}
		end)
		local scrollingFrameRef = props.scrollingFrameRef
		local setViewportRef = React.useCallback(function(instance: ScrollingFrame?)
			coordinator.setViewport(instance)
			assignRef(scrollingFrameRef, instance)
		end, { coordinator, scrollingFrameRef } :: { unknown })

		React.useEffect(function()
			return function()
				coordinator.destroy()
			end
		end, { coordinator })

		local frameProps: { [any]: any } = {
			Size = UDim2.fromScale(1, 1),
			ScrollingDirection = if props.axis == Axis.X then Enum.ScrollingDirection.X else Enum.ScrollingDirection.Y,
			ref = setViewportRef,
		}
		if props.scrollingFrameProps ~= nil then
			for key, value in props.scrollingFrameProps do
				if frameProps[key] ~= nil then
					error(`RecyclingViewport: {tostring(key)} is already used by ViewRecycler`)
				end
				frameProps[key] = value
			end
		end

		local viewport = e(RecyclingViewportContext.Provider, {
			value = contextValue,
		}, {
			Viewport = e("ScrollingFrame", frameProps, props.children),
		})
		if recyclingScope ~= nil then
			assert(
				props.maxPoolSize == nil and props.diagnostics == nil,
				"RecyclingViewport: configure recycling options on the ancestor RecyclingScope"
			)
			return viewport
		end
		return e(ConfiguredRecyclingScope, {
			maxPoolSize = props.maxPoolSize,
			diagnostics = props.diagnostics,
		}, {
			Viewport = viewport,
		})
	end

	return RecyclingViewport
end

return {
	create = createRecyclingViewport,
}

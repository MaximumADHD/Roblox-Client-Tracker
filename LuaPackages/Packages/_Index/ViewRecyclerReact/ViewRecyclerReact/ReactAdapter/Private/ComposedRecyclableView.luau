-- One composed position. Inside a placed view it mounts one placeholder and
-- registers it with the composition placement; anywhere else it renders the
-- selected view type's content inline. A nil view type leaves it empty.
local Root = script:FindFirstAncestor("ViewRecyclerReact")

local CompositionPlacement = require(script.Parent.CompositionPlacement)
local React = require(Root.Parent.React)
local RecyclableViewContext = require(script.Parent.RecyclableViewContext)
local RecyclableViewRegistry = require(script.Parent.RecyclableViewRegistry)
local Signals = require(Root.Parent.Signals)
local SignalsReact = require(Root.Parent.SignalsReact)

type PlacementHandle = CompositionPlacement.PlacementHandle

export type Props = {
	viewType: CompositionPlacement.ViewTypeSignal,
	itemSignal: Signals.getter<any>,
}

local EMPTY_ASSIGNMENT_SIGNAL = Signals.createSignal(nil)
local EMPTY_INDEX_SIGNAL = Signals.createSignal(nil)
local EMPTY_PLACEMENT_SIGNAL = Signals.createSignal(nil)

local function InlineRecyclableView(props: {
	metadata: RecyclableViewRegistry.Metadata<any>,
	itemSignal: Signals.getter<any>,
}): React.Node
	local sourceState = React.useState(function()
		local sourceSignal, setSource = Signals.createSignal({ get = props.itemSignal })
		local function itemSignal(scope: Signals.scope)
			return sourceSignal(scope).get(scope)
		end
		local identity = Signals.createSignal({})
		return {
			context = {
				placement = EMPTY_PLACEMENT_SIGNAL,
				assignmentSignal = EMPTY_ASSIGNMENT_SIGNAL,
				indexSignal = EMPTY_INDEX_SIGNAL,
				itemSignal = itemSignal,
				itemKeySignal = identity,
			},
			set = setSource,
			source = props.itemSignal,
		}
	end)
	if sourceState.source ~= props.itemSignal then
		sourceState.source = props.itemSignal
		sourceState.set({ get = props.itemSignal })
	end
	local pendingState = React.useState(function()
		local pending = React.createBinding(false)
		return { binding = pending }
	end)
	return React.createElement(RecyclableViewContext.Provider, {
		value = sourceState.context,
	}, {
		Content = React.createElement(props.metadata.signalComponent, {
			itemSignal = sourceState.context.itemSignal,
			pending = pendingState.binding,
		}),
	})
end

local function InlineSelectedRecyclableView(props: Props): React.Node
	-- React state would call a view type as an initializer, so this observes
	-- the view type's metadata rather than the view type itself.
	local viewType = props.viewType
	local selectedMetadata = React.useMemo(function()
		return function(scope: Signals.scope): RecyclableViewRegistry.Metadata<any>?
			local selected = viewType(scope)
			if selected == nil then
				return nil
			end
			local metadata = RecyclableViewRegistry.getMetadata(selected)
			assert(metadata ~= nil, "createRecyclableView: unknown Recyclable view type")
			return metadata
		end
	end, { viewType } :: { unknown })
	local metadata = SignalsReact.useSignalState(selectedMetadata)
	if metadata == nil then
		return nil
	end
	return React.createElement(InlineRecyclableView, {
		metadata = metadata,
		itemSignal = props.itemSignal,
	})
end

local MemoizedInlineSelectedRecyclableView = React.memo(InlineSelectedRecyclableView)

local function ComposedRecyclableView(props: Props): React.Node
	local contextValue = React.useContext(RecyclableViewContext)
	local rendersInline = contextValue == false
	local context = if rendersInline then nil else contextValue
	local placementSignal = if context == nil then EMPTY_PLACEMENT_SIGNAL else context.placement
	local placementToken = React.useState(function()
		return {}
	end)
	local placeholderRef = React.useRef(nil :: Frame?)
	local handleRef = React.useRef(nil :: PlacementHandle?)
	local itemSignalRef = React.useRef(props.itemSignal)
	itemSignalRef.current = props.itemSignal
	local viewTypeRef = React.useRef(props.viewType)
	viewTypeRef.current = props.viewType

	React.useLayoutEffect(function()
		local currentPlacement = nil
		local disposePlacementEffect = Signals.createEffect(function(scope)
			local placement = placementSignal(scope)
			if placement == currentPlacement then
				return
			end
			currentPlacement = placement
			local previousHandle = handleRef.current
			if previousHandle ~= nil then
				handleRef.current = nil
				previousHandle.unregister()
			end
			if context ~= nil and placement ~= nil then
				handleRef.current = placement.register(
					viewTypeRef.current,
					placementToken,
					context.assignmentSignal,
					itemSignalRef.current,
					placeholderRef.current
				)
			end
		end)
		return function()
			disposePlacementEffect()
			local handle = handleRef.current
			if handle ~= nil then
				handleRef.current = nil
				handle.unregister()
			end
		end
	end, { context, placementSignal, placementToken } :: { unknown })

	local itemSignal = props.itemSignal
	React.useLayoutEffect(function()
		local handle = handleRef.current
		if handle ~= nil then
			handle.setItemSignal(itemSignal)
		end
	end, { itemSignal } :: { unknown })

	local viewType = props.viewType
	React.useLayoutEffect(function()
		local handle = handleRef.current
		if handle ~= nil then
			handle.setViewType(viewType)
		end
	end, { viewType } :: { unknown })

	local setPlaceholderRef = React.useCallback(function(instance: Frame?)
		placeholderRef.current = instance
		local handle = handleRef.current
		if handle ~= nil then
			handle.setPlaceholder(instance)
		end
	end, {})

	if rendersInline then
		return React.createElement(MemoizedInlineSelectedRecyclableView, {
			viewType = viewType,
			itemSignal = itemSignal,
		})
	end

	return React.createElement("Frame", {
		Name = "RecyclableView",
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(),
		ref = setPlaceholderRef,
	})
end

return ComposedRecyclableView

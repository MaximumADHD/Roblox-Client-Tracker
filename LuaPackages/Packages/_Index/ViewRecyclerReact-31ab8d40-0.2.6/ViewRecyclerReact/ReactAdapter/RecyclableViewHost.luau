local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Roblox = require(Root.Parent.ViewRecyclerRoblox)

local React = require(Root.Parent.React)
local RecyclableViewContext = require(Root.ReactAdapter.Private.RecyclableViewContext)
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local RecyclableViewRegistry = require(Root.ReactAdapter.Private.RecyclableViewRegistry)
local ReparentableHost = Roblox.ReparentableHost
local RecyclableView = require(Root.ReactAdapter.Private.RecyclableView)
local SignalsReact = require(Root.Parent.SignalsReact)

local e = React.createElement

type ItemViewType<T> = RecyclableViewRegistry.RecyclableViewType<T>
type View<T> = RecyclableView.RecyclableView<T, ItemViewType<T>>

export type Props<T> = {
	itemView: View<T>,
	createPortal: (children: React.Node, target: Instance) -> React.Node,
}

local function CommitObserver<T>(props: {
	itemView: View<T>,
})
	local view = props.itemView
	local assignment = SignalsReact.useSignalState(view.signal)
	local generation = if assignment == nil then nil else assignment.generation
	local contentRevision = SignalsReact.useSignalState(view.contentRevision)
	React.useLayoutEffect(function()
		if generation ~= nil then
			view.commitContent(generation, contentRevision)
		end
	end, { contentRevision, generation, view.commitContent })
	return nil
end

local function RecyclableViewHost<T>(props: Props<T>)
	local view = props.itemView
	local signal = view.signal
	local portalFrame = view.portalFrame(false)
	assert(portalFrame ~= nil, "RecyclableViewHost: view host was destroyed before unmount")
	local recyclableViewContext: any = React.useState(function()
		return {
			placement = view.compositionPlacement,
			assignmentSignal = signal,
			itemSignal = view.itemSignal,
			itemKeySignal = view.itemKeySignal,
		}
	end)

	React.useLayoutEffect(function()
		local function detachFromPlaceholder(placeholder: Frame)
			if portalFrame.Parent == placeholder then
				ReparentableHost.detach(portalFrame)
			end
		end
		local unbindHost = view.bindHost({
			clearSelection = function()
				ReparentableHost.clearSelection(portalFrame)
			end,
			detachFromPlaceholder = detachFromPlaceholder,
		})
		return function()
			ReparentableHost.detach(portalFrame)
			unbindHost()
		end
	end, { view, portalFrame })

	local metadata = RecyclableViewRegistry.getMetadata(view.itemViewType)
	assert(metadata ~= nil, "RecyclableViewHost: unknown Recyclable view type")
	local itemContent = React.useMemo(function()
		return e(metadata.signalComponent, {
			itemSignal = view.itemSignal,
			pending = view.pending,
		})
	end, { view, metadata })
	local children = {
		Content = itemContent,
	}
	if metadata.readiness == RecyclableViewReadiness.ReadyOnCommit then
		-- A later keyed sibling, not a wrapper, so observing the Assignment
		-- never rerenders the assigned view. "Observer" sorts after "Content".
		children.Observer = e(CommitObserver, { itemView = view })
	end
	local content = e(RecyclableViewContext.Provider, {
		value = recyclableViewContext,
	}, children)
	return props.createPortal(content, portalFrame)
end

return React.memo(RecyclableViewHost) :: never

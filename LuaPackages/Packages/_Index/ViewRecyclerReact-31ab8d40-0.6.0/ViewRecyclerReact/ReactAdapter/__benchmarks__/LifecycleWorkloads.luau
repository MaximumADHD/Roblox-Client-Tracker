local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)

local CompositionPlacement = require(Root.ReactAdapter.Private.CompositionPlacement)
local RecyclableView = require(Root.ReactAdapter.Private.RecyclableView)
local RecyclingRoot = require(Root.ReactAdapter.Private.RecyclingRoot)
local Signals = require(Root.Parent.Signals)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)
local createRecyclableView = require(Root.ReactAdapter.createRecyclableView)

local LifecycleWorkloads = {}

local function viewType()
	return createRecyclableView(function()
		return nil
	end, {
		readiness = "ReadyOnAssignment",
	})
end

function LifecycleWorkloads.recyclingScopeHighWater(count: number, clock: () -> number)
	local hostChanges = 0
	local root = RecyclingRoot.new(function()
		hostChanges += 1
	end)
	local recyclingScope = root.getScope({})
	local sameListRecyclingScope = recyclingScope == root.getScope({})
	local recyclableType = viewType()
	local itemViewType = createRecyclableView(function()
		return nil
	end, {
		readiness = "ReadyOnAssignment",
	})
	local started = clock()
	local compositionRequests = table.create(count)
	for index = 1, count do
		compositionRequests[index] = { viewType = recyclableType }
	end
	local compositionViews = recyclingScope.bind({
		releases = {},
		requests = compositionRequests,
	}).acquired
	local itemViewRequests = table.create(count)
	for index = 1, count do
		itemViewRequests[index] = { viewType = itemViewType }
	end
	local itemViews = recyclingScope.bind({
		releases = compositionViews,
		requests = itemViewRequests,
	}).acquired
	local elapsedMs = (clock() - started) * 1000
	local resourceCount = #compositionViews + #itemViews
	local listItemViewCount = resourceCount
	local publishedHosts = 0
	for _ in
		root.getPortalChildren(function()
			return nil
		end)
	do
		publishedHosts += 1
	end
	recyclingScope.bind({ releases = itemViews, requests = {} })
	root.destroy()
	return elapsedMs,
		{
			createdHosts = resourceCount,
			listItemHosts = listItemViewCount,
			publishedHosts = publishedHosts,
			sameListRecyclingScope = sameListRecyclingScope,
			hostChanges = hostChanges,
			scopeWideHostScans = 0,
			completionPhaseCounts = {
				scopePublication = {
					synchronousBatch = 1,
				},
			},
		}
end

function LifecycleWorkloads.compositionChurn(count: number)
	local nextId = 1
	local assignmentUpdates = 0
	local scope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function(recyclableType)
				local view = RecyclableView(nextId, recyclableType, nil)
				nextId += 1
				local transition = view.transition
				view.transition = function(state)
					assignmentUpdates += 1
					transition(state)
				end
				return view
			end,
			destroy = function() end,
			batch = SignalsExperimental.batch,
		},
	})
	local placement = CompositionPlacement.new(scope)
	local recyclableType = viewType()
	local handles = table.create(count)
	local setParentAssignments = table.create(count)
	local placeholders = table.create(count)
	local updateSignals = table.create(count)
	for index = 1, count do
		local parentSignal, setParentAssignment = Signals.createSignal({
			key = `parent{index}`,
			value = index,
		})
		setParentAssignments[index] = setParentAssignment
		updateSignals[index] = Signals.createSignal({
			update = index,
		})
		local placeholder = Instance.new("Frame")
		placeholders[index] = placeholder
		handles[index] = placement.register(recyclableType, {}, parentSignal, Signals.createSignal({}), placeholder)
	end
	placement.flush()
	assignmentUpdates = 0
	local flushes = 0
	local revision = 0
	local nextIndex = 1
	return {
		run = function()
			SignalsExperimental.batch(function()
				for update = 1, count do
					handles[nextIndex].setItemSignal(updateSignals[update])
				end
			end)
			placement.flush()
			flushes += 1
			nextIndex = nextIndex % count + 1
		end,
		runBatchSettlement = function()
			revision += 1
			SignalsExperimental.batch(function()
				for index = 1, count do
					setParentAssignments[index]({
						key = `parent{index}-revision{revision}`,
						value = index,
					})
				end
			end)
			placement.flush()
			flushes += 1
		end,
		getAssignmentUpdates = function()
			return assignmentUpdates
		end,
		getFlushes = function()
			return flushes
		end,
		getReactInvalidations = function()
			return 0
		end,
		destroy = function()
			placement.destroy()
			scope.dispose()
			for _, placeholder in placeholders do
				placeholder:Destroy()
			end
		end,
	}
end

return LifecycleWorkloads

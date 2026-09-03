local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)

local CompositionPlacement = require(Root.ReactAdapter.Private.CompositionPlacement)
local RecyclingRoot = require(Root.ReactAdapter.Private.RecyclingRoot)
local Signals = require(Root.Parent.Signals)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)
local createRecyclableView = require(Root.ReactAdapter.createRecyclableView)
local RecyclableView = require(Root.ReactAdapter.Private.RecyclableView)

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
	local owner = {}
	local compositionRequests = table.create(count)
	local compositionAssignments = table.create(count)
	for index = 1, count do
		compositionRequests[index] = { viewType = recyclableType }
		compositionAssignments[index] = {
			key = `item{index}`,
			index = index,
			value = {
				props = {},
				placeholder = Instance.new("Frame"),
				automaticSize = Enum.AutomaticSize.XY,
			},
			generation = index,
		}
	end
	local compositionLeases = recyclingScope.exchange(owner, {}, compositionRequests).acquired
	for index, lease in compositionLeases do
		lease.view.set(compositionAssignments[index])
	end
	local itemViewRequests = table.create(count)
	local itemViewAssignments = table.create(count)
	for index = 1, count do
		itemViewRequests[index] = { viewType = itemViewType }
		itemViewAssignments[index] = {
			key = `listItem{index}`,
			index = index,
			value = index,
			generation = count + index,
		}
	end
	local itemViewLeases = recyclingScope.exchange(owner, compositionLeases, itemViewRequests).acquired
	for index, lease in itemViewLeases do
		lease.view.set(itemViewAssignments[index])
	end
	for _, assignment in compositionAssignments do
		assignment.value.placeholder:Destroy()
	end
	local elapsedMs = (clock() - started) * 1000
	local resourceCount = #recyclingScope.getScopeInventory()
	local listItemViewCount = #recyclingScope.getScopeInventory()
	local publishedHosts = 0
	for _ in
		root.getPortalChildren(function()
			return nil
		end)
	do
		publishedHosts += 1
	end
	recyclingScope.exchange(owner, itemViewLeases, {})
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
				local set = view.set
				view.set = function(assignment)
					assignmentUpdates += 1
					set(assignment)
				end
				return view
			end,
			destroy = function() end,
			batch = SignalsExperimental.batch,
		},
	})
	local placement = CompositionPlacement.new(scope, function() end)
	local recyclableType = viewType()
	local handles = table.create(count)
	local placeholders = table.create(count)
	for index = 1, count do
		local parentSignal = Signals.createSignal({
			key = `parent{index}`,
			index = index,
			value = index,
			generation = 1,
		})
		local placeholder = Instance.new("Frame")
		placeholders[index] = placeholder
		handles[index] = placement.register(recyclableType, {}, parentSignal, {}, placeholder)
	end
	placement.flush()
	assignmentUpdates = 0
	local flushes = 0
	local revision = 0
	local nextIndex = 1
	return {
		run = function()
			revision += 1
			for update = 1, count do
				handles[nextIndex].setProps({
					revision = revision,
					update = update,
				})
			end
			placement.flush()
			flushes += 1
			nextIndex = nextIndex % count + 1
		end,
		getAssignmentUpdates = function()
			return assignmentUpdates
		end,
		getFlushes = function()
			return flushes
		end,
		destroy = function()
			placement.destroy()
			scope.destroy()
			for _, placeholder in placeholders do
				placeholder:Destroy()
			end
		end,
	}
end

return LifecycleWorkloads

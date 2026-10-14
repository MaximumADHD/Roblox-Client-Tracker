local Root = script:FindFirstAncestor("ViewRecyclerReact")
local JestGlobals = require(Root.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local HostPresentationPhase = require(Root.Parent.ViewRecyclerRoblox).HostPresentationPhase
local PlacementKind = require(script.Parent.PlacementKind)
local RecyclableView = require(script.Parent.RecyclableView)
local Signals = require(Root.Parent.Signals)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)
local ViewRecycler = require(Root)

-- Stands in for a host whose item content has already mounted, unless
-- `contentMounted` is false.
local function createView(readiness, hideWhilePending, contentMounted: boolean?)
	local viewType = ViewRecycler.createRecyclableView(function()
		return nil
	end, {
		readiness = readiness or ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		hideWhilePending = hideWhilePending,
	})
	local view = RecyclableView(1, viewType, nil)
	if contentMounted ~= false then
		view.setContentMounted(true)
	end
	return view
end

local function assignment(key, value)
	return table.freeze({
		key = key,
		value = value,
	})
end

local function coreState(current, index)
	return table.freeze({
		assignment = current,
		index = index,
		itemRevision = 0,
		pinnedPosition = nil,
		itemLayout = { startOffset = 0, length = 20 },
		canvasPlacement = {},
		viewportPlacement = nil,
		contentStartOffset = 0,
	})
end

local function listState(current, index, sink, placement)
	local state = coreState(current, index)
	return table.freeze({
		assignment = current,
		index = index,
		destination = table.freeze({
			kind = PlacementKind.List,
			state = state,
			sink = sink,
			compositionPlacement = placement,
		}),
	})
end

describe("RecyclableView", function()
	it("publishes one complete list state and retains content through vacancy", function()
		local view = createView()
		local applied = {}
		local sink = {
			apply = function(physical)
				table.insert(applied, physical or false)
			end,
		}
		local current = assignment("a", "Alpha")
		local state = listState(current, 7, sink)

		view.transition(state)

		expect(view.signal(false)).toBe(current)
		expect(view.indexSignal(false)).toBe(7)
		expect(view.itemSignal(false)).toBe("Alpha")
		expect(applied[#applied].state).toBe(state.destination.state)
		expect(applied[#applied].phase).toBe(HostPresentationPhase.Presented)

		view.transition(nil)
		expect(view.signal(false)).toBeNil()
		expect(view.indexSignal(false)).toBeNil()
		expect(view.itemKeySignal(false)).toBe("a")
		expect(view.itemSignal(false)).toBe("Alpha")
		expect(applied[#applied]).toBe(false)
		view.destroy()
	end)

	it("stays Pending until its host's item content mounts", function()
		local view = createView(nil, nil, false)
		local applied = {}
		local sink = {
			apply = function(physical)
				table.insert(applied, physical or false)
			end,
		}
		local state = listState(assignment("a", "Alpha"), 1, sink)

		view.transition(state)
		expect(applied[#applied].phase).toBe(HostPresentationPhase.Pending)

		view.setContentMounted(true)
		expect(applied[#applied].phase).toBe(HostPresentationPhase.Presented)
		expect(applied[#applied].state).toBe(state.destination.state)

		local count = #applied
		view.setContentMounted(false)
		expect(#applied).toBe(count)
		view.destroy()
	end)

	it("publishes retained content before Assignment identity in one Signals batch", function()
		local view = createView()
		local sink = { apply = function() end }
		local first = assignment("a", "Alpha")
		local second = assignment("b", "Beta")
		view.transition(listState(first, 1, sink))
		local events = {}
		local disconnectItem = Signals.createEffect(function(scope)
			if view.itemSignal(scope) == "Beta" then
				table.insert(events, "item")
			end
		end)
		local disconnectAssignment = Signals.createEffect(function(scope)
			if view.signal(scope) == second then
				table.insert(events, "assignment")
			end
		end)

		SignalsExperimental.batch(function()
			view.transition(listState(second, 2, sink))
		end)

		expect(events).toEqual({ "item", "assignment" })
		disconnectItem()
		disconnectAssignment()
		view.destroy()
	end)

	it("uses complete state reference as list physical currentness", function()
		local view = createView()
		local applied = {}
		local sink = {
			apply = function(physical)
				if physical ~= nil then
					table.insert(applied, physical.state)
				end
			end,
		}
		local current = assignment("a", "Alpha")
		local first = listState(current, 1, sink)
		local second = listState(current, 2, sink)

		view.transition(first)
		view.transition(second)

		expect(view.signal(false)).toBe(current)
		expect(view.indexSignal(false)).toBe(2)
		expect(applied).toEqual({
			first.destination.state,
			first.destination.state,
			second.destination.state,
		})
		view.destroy()
	end)

	it("reapplies the current destination when matching content commits", function()
		local view = createView(ViewRecycler.RecyclableViewReadiness.ReadyOnCommit, true)
		local applied = {}
		local sink = {
			apply = function(physical)
				if physical ~= nil then
					table.insert(applied, physical)
				end
			end,
		}
		local state = listState(assignment("a", "Alpha"), 1, sink)

		view.transition(state)
		expect(applied[#applied].phase).toBe(HostPresentationPhase.Hidden)
		expect(view.pending:getValue()).toBe(true)
		expect(view.commitContent(view.contentRevision(false))).toBe(true)
		expect(applied[#applied].phase).toBe(HostPresentationPhase.Presented)
		expect(applied[#applied].state).toBe(state.destination.state)
		expect(view.pending:getValue()).toBe(false)
		view.destroy()
	end)

	it("rejects stale content commits", function()
		local view = createView(ViewRecycler.RecyclableViewReadiness.ReadyOnCommit, true)
		local sink = { apply = function() end }
		view.transition(listState(assignment("a", "Alpha"), 1, sink))
		local stale = view.contentRevision(false)
		view.transition(listState(assignment("b", "Beta"), 2, sink))

		expect(view.commitContent(stale)).toBe(false)
		expect(view.pending:getValue()).toBe(true)
		expect(view.commitContent(view.contentRevision(false))).toBe(true)
		view.destroy()
	end)

	it("applies composition destination and reads its retained item Signal", function()
		local view = createView()
		local placeholder = Instance.new("Frame")
		local source, setSource = Signals.createSignal({ text = "Alpha" })
		local current = assignment("parent:1", source)
		local attached = 0
		local detached = 0
		local placement = {}
		local state = table.freeze({
			assignment = current,
			index = nil,
			destination = table.freeze({
				kind = PlacementKind.Composition,
				placementId = 1,
				placeholder = placeholder,
				automaticSize = Enum.AutomaticSize.XY,
				compositionPlacement = placement,
				attachMeasurementDependency = function()
					attached += 1
				end,
				detachMeasurementDependency = function()
					detached += 1
				end,
			}),
		})

		view.transition(state)
		expect(view.portalFrame(false).Parent).toBe(placeholder)
		expect(view.itemSignal(false).text).toBe("Alpha")
		expect(view.compositionPlacement(false)).toBe(placement)
		setSource({ text = "Beta" })
		expect(view.itemSignal(false).text).toBe("Beta")
		expect(attached).toBe(1)

		view.transition(nil)
		expect(detached).toBe(1)
		expect(view.portalFrame(false).Parent).toBeNil()
		view.destroy()
		placeholder:Destroy()
	end)

	it("registers composition Measurement dependencies on a list sink", function()
		local view = createView()
		local dependency = Instance.new("Frame")
		local current = assignment("a", "Alpha")
		local observed
		local placement = {
			getMeasurementDependencies = function(parent)
				observed = parent
				return { dependency }
			end,
			subscribeMeasurementDependencies = function()
				return function() end
			end,
		}
		local registered
		local sink = {
			apply = function() end,
			setMeasurementDependencies = function(value)
				registered = value
			end,
		}

		view.transition(listState(current, 1, sink, placement))
		expect(registered.get()).toEqual({ dependency })
		expect(observed).toBe(current)
		view.transition(nil)
		expect(registered).toBeNil()
		view.destroy()
		dependency:Destroy()
	end)
end)

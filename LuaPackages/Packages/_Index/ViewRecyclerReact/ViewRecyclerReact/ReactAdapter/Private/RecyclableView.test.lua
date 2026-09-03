local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Signals = require(Root.Parent.Signals)
local ViewRecycler = require(Root)
local HostPresentationPhase = require(script.Parent.HostPresentationPhase)
local PlacementKind = require(script.Parent.PlacementKind)
local RecyclableView = require(script.Parent.RecyclableView)

local function assignment(key: string, value: string)
	return {
		key = key,
		index = 1,
		value = value,
		generation = string.byte(key),
	}
end

local function createView(initialAssignment)
	local viewType = ViewRecycler.createRecyclableView(function()
		return nil
	end, {
		readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnCommit,
		hideWhilePending = true,
	})
	return RecyclableView(1, viewType, initialAssignment)
end

describe("RecyclableView", function()
	it("derives stable key and value getters from the retained Assignment through vacancy", function()
		local view = createView(assignment("a", "Alpha"))
		local itemKeySignal = view.itemKeySignal
		local itemSignal = view.itemSignal
		local compositionAssignment = {
			key = "b",
			index = 2,
			value = {
				props = { text = "Beta" },
				placeholder = Instance.new("Frame"),
				automaticSize = Enum.AutomaticSize.XY,
			},
			generation = string.byte("b"),
		}

		view.bindPlacement(PlacementKind.Composition, {
			apply = function() end,
		})
		view.set(compositionAssignment)

		expect(view.itemKeySignal).toBe(itemKeySignal)
		expect(view.itemSignal).toBe(itemSignal)
		expect(itemKeySignal(false)).toBe("b")
		expect(itemSignal(false)).toBe(compositionAssignment.value.props)

		view.set(nil)

		expect(itemKeySignal(false)).toBe("b")
		expect(itemSignal(false)).toBe(compositionAssignment.value.props)
		compositionAssignment.value.placeholder:Destroy()
		view.destroy()
	end)

	it("publishes a new assignment generation and item value atomically", function()
		local view = createView(assignment("a", "Alpha"))
		local observations = {}
		local disconnect = Signals.createEffect(function(scope)
			local current = view.signal(scope)
			table.insert(observations, {
				generation = if current == nil then nil else current.generation,
				value = view.itemSignal(scope),
			})
		end)

		view.set(assignment("b", "Beta"))

		expect(observations).toEqual({
			{ generation = string.byte("a"), value = "Alpha" },
			{ generation = string.byte("b"), value = "Beta" },
		})
		disconnect()
	end)

	it("publishes item content before its assignment generation", function()
		local view = createView(assignment("a", "Alpha"))
		local publications = {}
		local disconnectItem = Signals.createEffect(function(scope)
			if view.itemSignal(scope) == "Beta" then
				table.insert(publications, "item")
			end
		end)
		local disconnectGeneration = Signals.createEffect(function(scope)
			local current = view.signal(scope)
			if current ~= nil and current.generation == string.byte("b") then
				table.insert(publications, "generation")
			end
		end)

		view.set(assignment("b", "Beta"))

		expect(publications).toEqual({ "item", "generation" })
		disconnectItem()
		disconnectGeneration()
	end)

	it("rejects stale generation and content-revision commits", function()
		local view = createView(assignment("a", "Alpha"))
		view.set(assignment("b", "Beta"))
		local staleGeneration = view.signal(false).generation
		local staleRevision = view.contentRevision(false)
		view.set(assignment("b", "Beta replacement"))
		local currentRevision = view.contentRevision(false)

		expect(view.commitContent(staleGeneration - 1, currentRevision)).toBe(false)
		expect(view.commitContent(staleGeneration, staleRevision)).toBe(false)
		expect(view.pending:getValue()).toBe(true)
		expect(view.commitContent(staleGeneration, currentRevision)).toBe(true)
		expect(view.pending:getValue()).toBe(false)
	end)

	it("keeps retained key, value, pending Binding, and Portal host identities stable", function()
		local view = createView(assignment("a", "Alpha"))
		local pending = view.pending
		local portalFrame = view.portalFrame(false)
		local itemSignal = view.itemSignal
		local itemKeySignal = view.itemKeySignal

		view.set(assignment("b", "Beta"))

		expect(view.itemSignal).toBe(itemSignal)
		expect(view.itemKeySignal).toBe(itemKeySignal)
		expect(view.itemKeySignal(false)).toBe("b")
		expect(view.itemSignal(false)).toBe("Beta")
		expect(view.pending).toBe(pending)
		expect(view.portalFrame(false)).toBe(portalFrame)
	end)

	it("binds placement explicitly without publishing a port on Assignment", function()
		local view = createView(nil)
		local placements = 0
		local current = assignment("a", "Alpha")
		view.bindPlacement(PlacementKind.List, {
			apply = function(state)
				placements += 1
				expect(state.assignment).toBe(current)
			end,
		})

		view.set(current)

		expect(placements).toBe(1)
		expect(current.adapterData).toBeNil()
	end)

	it("drives one placement port through state application and complete detach", function()
		local view = createView(nil)
		local events = {}
		local stateMarker = {}
		local reusedHostState = false
		local fallbackSelectionClears = 0
		view.bindHost({
			clearSelection = function()
				fallbackSelectionClears += 1
			end,
			detachFromPlaceholder = function() end,
		})
		local port = {
			apply = function(state)
				if state == nil then
					table.insert(events, "detach")
				elseif state.testMarker == nil then
					state.testMarker = stateMarker
					table.insert(events, `apply:{state.assignment.key}:{state.phase}:{tostring(state.visible)}`)
				else
					reusedHostState = state.testMarker == stateMarker
					table.insert(events, `apply:{state.assignment.key}:{state.phase}:{tostring(state.visible)}`)
				end
			end,
		}
		local first = assignment("a", "Alpha")
		local second = assignment("b", "Beta")

		view.bindPlacement(PlacementKind.List, port)
		view.set(first)
		view.set(second)
		view.bindPlacement(nil, nil)
		view.set(nil)
		view.set(nil)

		expect(events).toEqual({
			`apply:a:{HostPresentationPhase.Hidden}:false`,
			`apply:b:{HostPresentationPhase.Hidden}:false`,
			"detach",
		})
		expect(reusedHostState).toBe(true)
		expect(fallbackSelectionClears).toBe(0)
	end)

	it("publishes commit readiness synchronously through the attached placement port", function()
		local view = createView(nil)
		local events = {}
		local assignmentPublications = 0
		local disconnect = Signals.createEffect(function(scope)
			view.signal(scope)
			assignmentPublications += 1
		end)
		local port = {
			apply = function(state)
				table.insert(events, `apply:{state.phase}`)
			end,
		}
		local current = assignment("a", "Alpha")

		view.bindPlacement(PlacementKind.List, port)
		view.set(current)
		local publicationsBeforeCommit = assignmentPublications
		table.insert(events, "after:set")
		view.commitContent(current.generation, view.contentRevision(false))
		table.insert(events, "after:commit")

		expect(events).toEqual({
			`apply:{HostPresentationPhase.Hidden}`,
			"after:set",
			`apply:{HostPresentationPhase.Presented}`,
			"after:commit",
		})
		expect(assignmentPublications).toBe(publicationsBeforeCommit)
		disconnect()
	end)

	it("fully detaches the old placement before attaching another", function()
		local view = createView(nil)
		local events = {}
		local function createPort(name)
			return {
				apply = function(state)
					if state == nil then
						expect(view.signal(false).key).toBe("a")
						table.insert(events, `detach:{name}`)
					else
						table.insert(events, `apply:{name}`)
					end
				end,
			}
		end
		local first = assignment("a", "Alpha")
		local second = assignment("b", "Beta")

		view.bindPlacement(PlacementKind.List, createPort("first"))
		view.set(first)
		view.bindPlacement(PlacementKind.List, createPort("second"))
		view.set(second)

		expect(events).toEqual({ "apply:first", "detach:first", "apply:second" })
	end)

	it("tears down its stable Portal host exactly once", function()
		local view = createView(assignment("a", "Alpha"))
		local portalFrame = view.portalFrame(false)
		local destroying = 0
		local detaches = 0
		local placed = assignment("b", "Beta")
		view.bindPlacement(PlacementKind.List, {
			apply = function(state)
				if state == nil then
					detaches += 1
				end
			end,
		})
		view.set(placed)
		local connection = portalFrame.Destroying:Connect(function()
			destroying += 1
		end)

		view.destroy()
		view.destroy()

		expect(destroying).toBe(1)
		expect(detaches).toBe(1)
		expect(view.portalFrame(false)).toBeNil()
		connection:Disconnect()
	end)
end)

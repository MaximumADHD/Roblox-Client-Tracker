local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local CompositionPlacement = require(script.Parent.CompositionPlacement)
local RecyclableView = require(script.Parent.RecyclableView)
local Signals = require(Root.Parent.Signals)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)
local ViewRecycler = require(Root)

local function viewType(options)
	return ViewRecycler.createRecyclableView(function()
		return nil
	end, {
		readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		contributesToParentMeasurement = if options == nil then nil else options.contributesToParentMeasurement,
	})
end

local function parent(key)
	local signal, set = Signals.createSignal(table.freeze({
		key = key,
		value = { id = key },
	}))
	return signal, set
end

local function createPool()
	local views = {}
	local submitCount = 0
	local nextId = 1
	local scope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function(recyclableType)
				local view = RecyclableView(nextId, recyclableType, nil)
				nextId += 1
				table.insert(views, view)
				return view
			end,
			destroy = function(view)
				view.destroy()
			end,
			batch = SignalsExperimental.batch,
		},
	})
	return {
		views = views,
		scope = {
			bind = function(submission)
				submitCount += 1
				return scope.bind(submission)
			end,
			dispose = scope.dispose,
		},
		getSubmitCount = function()
			return submitCount
		end,
	}
end

local function item(value)
	return Signals.createSignal(value or {})
end

describe("CompositionPlacement", function()
	it("acquires and releases a physical view through submit", function()
		local pool = createPool()
		local composition = CompositionPlacement.new(pool.scope)
		local placeholder = Instance.new("Frame")
		local active, setActive = Signals.createSignal(false)
		local parentSignal = parent("parent")
		composition.register(viewType(), {}, parentSignal, item(), placeholder, active)
		expect(#pool.views).toBe(0)

		setActive(true)
		expect(#pool.views).toBe(1)
		local view = pool.views[1]
		expect(view.signal(false)).never.toBeNil()
		expect(view.portalFrame(false).Parent).toBe(placeholder)

		setActive(false)
		expect(view.signal(false)).toBeNil()
		expect(view.portalFrame(false).Parent).toBeNil()
		composition.destroy()
		pool.scope.dispose()
		placeholder:Destroy()
	end)

	it("directly reuses a compatible released view in one submit", function()
		local pool = createPool()
		local composition = CompositionPlacement.new(pool.scope)
		local placeholders = { Instance.new("Frame"), Instance.new("Frame") }
		local firstActive, setFirstActive = Signals.createSignal(true)
		local secondActive, setSecondActive = Signals.createSignal(false)
		local recyclableType = viewType()
		composition.register(recyclableType, {}, parent("first"), item(), placeholders[1], firstActive)
		composition.register(recyclableType, {}, parent("second"), item(), placeholders[2], secondActive)
		local view = pool.views[1]

		SignalsExperimental.batch(function()
			setFirstActive(false)
			setSecondActive(true)
		end)
		composition.flush()

		expect(#pool.views).toBe(1)
		expect(view.portalFrame(false).Parent).toBe(placeholders[2])
		expect(view.signal(false).key).toContain("second")
		composition.destroy()
		pool.scope.dispose()
		for _, placeholder in placeholders do
			placeholder:Destroy()
		end
	end)

	it("retains Assignment for destination-only changes", function()
		local pool = createPool()
		local composition = CompositionPlacement.new(pool.scope)
		local placeholders = { Instance.new("Frame"), Instance.new("Frame") }
		local parentSignal = parent("parent")
		local source = item({ text = "Alpha" })
		local handle = composition.register(viewType(), {}, parentSignal, source, placeholders[1])
		local view = pool.views[1]
		local retained = view.signal(false)

		handle.setPlaceholder(placeholders[2])

		expect(view.signal(false)).toBe(retained)
		expect(view.portalFrame(false).Parent).toBe(placeholders[2])
		composition.destroy()
		pool.scope.dispose()
		for _, placeholder in placeholders do
			placeholder:Destroy()
		end
	end)

	it("replaces Assignment only when parent identity or item source changes", function()
		local pool = createPool()
		local composition = CompositionPlacement.new(pool.scope)
		local placeholder = Instance.new("Frame")
		local parentSignal, setParent = parent("first")
		local handle = composition.register(viewType(), {}, parentSignal, item({ text = "first" }), placeholder)
		local view = pool.views[1]
		local first = view.signal(false)

		local secondSource = item({ text = "second" })
		handle.setItemSignal(secondSource)
		local second = view.signal(false)
		expect(second).never.toBe(first)
		expect(second.value).toBe(secondSource)

		setParent(table.freeze({ key = "replacement", value = {} }))
		local replacement = view.signal(false)
		expect(replacement).never.toBe(second)
		expect(replacement.key).toContain("replacement")
		composition.destroy()
		pool.scope.dispose()
		placeholder:Destroy()
	end)

	it("does not touch an unrelated sparse placement", function()
		local pool = createPool()
		local composition = CompositionPlacement.new(pool.scope)
		local placeholders = { Instance.new("Frame"), Instance.new("Frame") }
		local first = composition.register(viewType(), {}, parent("first"), item(), placeholders[1])
		composition.register(viewType(), {}, parent("second"), item(), placeholders[2])
		local unchangedView = pool.views[2]
		local unchanged = unchangedView.signal(false)

		first.setItemSignal(item({ updated = true }))

		expect(unchangedView.signal(false)).toBe(unchanged)
		composition.destroy()
		pool.scope.dispose()
		for _, placeholder in placeholders do
			placeholder:Destroy()
		end
	end)

	it("settles registered descendants synchronously after a parent rekey", function()
		local pool = createPool()
		local composition = CompositionPlacement.new(pool.scope)
		local recyclableType = viewType()
		local placeholders = {}
		local rootSignal, setRoot = parent("root")
		local parentSignal = rootSignal
		for depth = 1, 6 do
			local placeholder = Instance.new("Frame")
			table.insert(placeholders, placeholder)
			composition.register(recyclableType, {}, parentSignal, item({ depth = depth }), placeholder)
			parentSignal = pool.views[depth].signal
		end
		local deepest = pool.views[6]
		local previous = deepest.signal(false)

		setRoot(table.freeze({ key = "replacement", value = {} }))

		expect(deepest.signal(false)).never.toBe(previous)
		expect(deepest.signal(false).key).toContain("replacement")
		composition.destroy()
		pool.scope.dispose()
		for _, placeholder in placeholders do
			placeholder:Destroy()
		end
	end)

	it("indexes Measurement dependencies by parent Assignment reference", function()
		local pool = createPool()
		local composition = CompositionPlacement.new(pool.scope)
		local placeholder = Instance.new("Frame")
		local parentSignal = parent("parent")
		local parentAssignment = parentSignal(false)
		local active, setActive = Signals.createSignal(false)
		local notifications = 0
		local disconnect = composition.subscribeMeasurementDependencies(parentAssignment, function()
			notifications += 1
		end)
		composition.register(viewType(), {}, parentSignal, item(), placeholder, active)
		expect(composition.getMeasurementDependencies(parentAssignment)).toEqual({})

		setActive(true)
		local view = pool.views[1]
		expect(composition.getMeasurementDependencies(parentAssignment)).toEqual({ view.portalFrame(false) })
		expect(notifications).toBe(1)

		setActive(false)
		expect(composition.getMeasurementDependencies(parentAssignment)).toEqual({})
		expect(notifications).toBe(2)
		disconnect()
		composition.destroy()
		pool.scope.dispose()
		placeholder:Destroy()
	end)

	it("excludes views that opt out of parent Measurement", function()
		local pool = createPool()
		local composition = CompositionPlacement.new(pool.scope)
		local placeholder = Instance.new("Frame")
		local parentSignal = parent("parent")
		composition.register(
			viewType({ contributesToParentMeasurement = false }),
			{},
			parentSignal,
			item(),
			placeholder
		)

		expect(composition.getMeasurementDependencies(parentSignal(false))).toEqual({})
		composition.destroy()
		pool.scope.dispose()
		placeholder:Destroy()
	end)

	it("faults after complete-state publication fails", function()
		local pool = createPool()
		local composition = CompositionPlacement.new(pool.scope)
		local placeholder = Instance.new("Frame")
		local handle = composition.register(viewType(), {}, parent("parent"), item(), placeholder)
		local view = pool.views[1]
		local original = view.transition
		view.transition = function()
			error("expected publication failure")
		end

		expect(function()
			handle.setItemSignal(item({ updated = true }))
		end).toThrow("expected publication failure")
		view.transition = original
		expect(function()
			composition.flush()
		end).toThrow("cannot flush after a publication failure")

		composition.destroy()
		pool.scope.dispose()
		placeholder:Destroy()
	end)
end)

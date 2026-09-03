--!nonstrict
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local CompositionPlacement = require(script.Parent.CompositionPlacement)
local Signals = require(Root.Parent.Signals)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)
local ViewRecycler = require(Root)
local RecyclableView = require(script.Parent.RecyclableView)

local function registration(_id)
	return ViewRecycler.createRecyclableView(function()
		return nil
	end, {
		readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
	})
end

local function assignedParent(key)
	local signal, set = Signals.createSignal({
		key = key,
		index = 1,
		value = { id = key },
		generation = 1,
	})
	return {
		signal = signal,
		set = set,
	}
end

local function createPool()
	local views = {}
	local createdBatches = 0
	local evictedBatches = 0
	local nextId = 1
	local batchDepth = 0
	local createdInBatch = false
	local evictedInBatch = false
	local scope = Core.Adapter.createRecyclingScope({
		adapter = {
			create = function(viewType)
				local view = RecyclableView(nextId, viewType, nil)
				nextId += 1
				table.insert(views, view)
				createdInBatch = true
				return view
			end,
			destroy = function(view)
				view.destroy()
				evictedInBatch = true
			end,
		},
	})
	local function batch(callback)
		batchDepth += 1
		SignalsExperimental.batch(callback)
		batchDepth -= 1
		if batchDepth == 0 then
			if createdInBatch then
				createdBatches += 1
				createdInBatch = false
			end
			if evictedInBatch then
				evictedBatches += 1
				evictedInBatch = false
			end
		end
	end
	local pool = {
		exchange = function(owner, releases, requests)
			local result
			batch(function()
				result = scope.exchange(owner, releases, requests)
			end)
			return result
		end,
		destroy = function()
			batch(scope.destroy)
		end,
	}
	return {
		pool = pool,
		views = views,
		getCreatedBatches = function()
			return createdBatches
		end,
		getEvictedBatches = function()
			return evictedBatches
		end,
	}
end

local function createPlacement(pool)
	local dirtyCount = 0
	local placement = CompositionPlacement.new(pool, function()
		dirtyCount += 1
	end)
	return placement, function()
		return dirtyCount
	end
end

describe("CompositionPlacement", function()
	it("coalesces placement changes and publishes one creation batch per flush", function()
		local lifetime = createPool()
		local placement, getDirtyCount = createPlacement(lifetime.pool)
		local firstPlaceholder = Instance.new("Frame")
		local secondPlaceholder = Instance.new("Frame")
		local viewType = registration(1)

		placement.register(viewType, {}, assignedParent("item").signal, {}, firstPlaceholder)
		placement.register(viewType, {}, assignedParent("item").signal, {}, secondPlaceholder)

		expect(getDirtyCount()).toBe(1)
		expect(#lifetime.views).toBe(0)
		placement.flush()
		expect(#lifetime.views).toBe(2)
		expect(lifetime.getCreatedBatches()).toBe(1)
		for _, view in lifetime.views do
			local adapterData = view.signal(false).adapterData
			expect(type(adapterData) ~= "table" or adapterData.port == nil).toBe(true)
		end

		placement.destroy()
		lifetime.pool.destroy()
		expect(lifetime.getEvictedBatches()).toBe(1)
		firstPlaceholder:Destroy()
		secondPlaceholder:Destroy()
	end)

	it("retains generation for one composite key and changes it for a new placement", function()
		local lifetime = createPool()
		local composition = createPlacement(lifetime.pool)
		local placeholder = Instance.new("Frame")
		local viewType = registration(1)
		local parent = assignedParent("item")
		local handle = composition.register(viewType, {}, parent.signal, { value = "first" }, placeholder)
		composition.flush()
		local view = lifetime.views[1]
		local firstGeneration = view.signal(false).generation

		handle.setProps({ value = "updated" })
		composition.flush()
		expect(view.signal(false).generation).toBe(firstGeneration)

		handle.unregister()
		composition.flush()
		composition.register(viewType, {}, parent.signal, {}, placeholder)
		composition.flush()
		expect(lifetime.views[1]).toBe(view)
		expect(view.signal(false).generation).toBeGreaterThan(firstGeneration)

		composition.destroy()
		lifetime.pool.destroy()
		placeholder:Destroy()
	end)

	it("does not reassign unchanged destinations when another placement changes", function()
		local lifetime = createPool()
		local placement = createPlacement(lifetime.pool)
		local placeholders = { Instance.new("Frame"), Instance.new("Frame") }
		local viewType = registration(1)
		local first = placement.register(viewType, {}, assignedParent("item").signal, {}, placeholders[1])
		placement.register(viewType, {}, assignedParent("item").signal, {}, placeholders[2])
		placement.flush()
		local unchangedBefore = lifetime.views[2].signal(false)

		first.setProps({ updated = true })
		placement.flush()

		expect(lifetime.views[2].signal(false)).toBe(unchangedBefore)
		placement.destroy()
		lifetime.pool.destroy()
		for _, placeholder in placeholders do
			placeholder:Destroy()
		end
	end)

	it("shares a vacant compatible view across placement lifetimes", function()
		local lifetime = createPool()
		local firstPlacement = createPlacement(lifetime.pool)
		local firstPlaceholder = Instance.new("Frame")
		local secondPlaceholder = Instance.new("Frame")
		local viewType = registration(1)

		firstPlacement.register(viewType, {}, assignedParent("first-list").signal, {}, firstPlaceholder)
		firstPlacement.flush()
		local view = lifetime.views[1]
		firstPlacement.destroy()
		expect(view.signal(false)).toBeNil()

		local secondPlacement = createPlacement(lifetime.pool)
		secondPlacement.register(viewType, {}, assignedParent("second-list").signal, {}, secondPlaceholder)
		secondPlacement.flush()
		expect(#lifetime.views).toBe(1)
		expect(view.signal(false).value.placeholder).toBe(secondPlaceholder)

		secondPlacement.destroy()
		lifetime.pool.destroy()
		firstPlaceholder:Destroy()
		secondPlaceholder:Destroy()
	end)

	it("isolates incompatible types and never steals an active lease", function()
		local lifetime = createPool()
		local firstPlacement = createPlacement(lifetime.pool)
		local secondPlacement = createPlacement(lifetime.pool)
		local placeholders = { Instance.new("Frame"), Instance.new("Frame"), Instance.new("Frame") }
		local firstType = registration(1)
		local secondType = registration(2)

		firstPlacement.register(firstType, {}, assignedParent("first").signal, {}, placeholders[1])
		firstPlacement.flush()
		local firstView = lifetime.views[1]

		secondPlacement.register(firstType, {}, assignedParent("second").signal, {}, placeholders[2])
		secondPlacement.register(secondType, {}, assignedParent("third").signal, {}, placeholders[3])
		secondPlacement.flush()

		expect(#lifetime.views).toBe(3)
		expect(lifetime.views[1]).toBe(firstView)
		expect(lifetime.views[2].viewType).toBe(firstType)
		expect(lifetime.views[3].viewType).toBe(secondType)

		firstPlacement.destroy()
		secondPlacement.destroy()
		lifetime.pool.destroy()
		for _, placeholder in placeholders do
			placeholder:Destroy()
		end
	end)

	it("keeps nested composed leases independent within one scope", function()
		local lifetime = createPool()
		local outerComposition = createPlacement(lifetime.pool)
		local innerComposition = createPlacement(lifetime.pool)
		local placeholders = { Instance.new("Frame"), Instance.new("Frame") }
		local viewType = registration(1)
		local outerParent = assignedParent("outer")
		local innerParent = assignedParent("inner")
		local outerPlacement = outerComposition.register(viewType, {}, outerParent.signal, { depth = 1 }, placeholders[1])
		innerComposition.register(viewType, {}, innerParent.signal, { depth = 2 }, placeholders[2])
		outerComposition.flush()
		innerComposition.flush()
		local outerView = lifetime.views[1]
		local innerView = lifetime.views[2]

		outerParent.set(nil)
		outerPlacement.setProps({ depth = 1 })
		outerComposition.flush()

		expect(outerView.signal(false)).toBeNil()
		expect(innerView.signal(false).key).toContain("inner")
		expect(innerView.portalFrame(false).Parent).toBe(placeholders[2])

		outerComposition.destroy()
		innerComposition.destroy()
		lifetime.pool.destroy()
		for _, placeholder in placeholders do
			placeholder:Destroy()
		end
	end)

	it("detaches and resets composition geometry before releasing views", function()
		local lifetime = createPool()
		local placement = createPlacement(lifetime.pool)
		local placeholder = Instance.new("Frame")
		placement.register(registration(1), {}, assignedParent("item").signal, {}, placeholder)
		placement.flush()
		local view = lifetime.views[1]
		local portalFrame = view.portalFrame(false)
		expect(portalFrame.Parent).toBe(placeholder)
		expect(portalFrame.AutomaticSize).toBe(Enum.AutomaticSize.XY)

		placement.destroy()
		expect(portalFrame.Parent).toBeNil()
		expect(portalFrame.AnchorPoint).toBe(Vector2.zero)
		expect(portalFrame.Position).toBe(UDim2.new())
		expect(portalFrame.Size).toBe(UDim2.new())
		expect(portalFrame.AutomaticSize).toBe(Enum.AutomaticSize.None)
		expect(view.signal(false)).toBeNil()

		lifetime.pool.destroy()
		placeholder:Destroy()
	end)

	it("does not retain a stale placeholder callback after detach", function()
		local lifetime = createPool()
		local composition = createPlacement(lifetime.pool)
		local firstPlaceholder = Instance.new("Frame")
		local secondPlaceholder = Instance.new("Frame")
		local handle = composition.register(registration(1), {}, assignedParent("item").signal, {}, firstPlaceholder)
		composition.flush()
		local view = lifetime.views[1]
		local portalFrame = view.portalFrame(false)

		handle.setPlaceholder(secondPlaceholder)
		composition.flush()
		expect(portalFrame.Parent).toBe(secondPlaceholder)
		firstPlaceholder:Destroy()
		expect(portalFrame.Parent).toBe(secondPlaceholder)

		handle.unregister()
		composition.flush()
		expect(portalFrame.Parent).toBeNil()
		secondPlaceholder:Destroy()
		expect(portalFrame.Parent).toBeNil()

		composition.destroy()
		lifetime.pool.destroy()
	end)
end)

--!nonstrict
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local JestGlobals = require(Root.TestDependencies).JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local RecyclingRoot = require(script.Parent.RecyclingRoot)
local ViewRecycler = require(Root)

local function createViewType()
	return ViewRecycler.createRecyclableView(function()
		return nil
	end, {
		readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
	})
end

local function acquire(scope, owner, viewType, key)
	local lease = scope.exchange(owner, {}, { { viewType = viewType } }).acquired[1]
	lease.view.set({ key = key, index = 1, value = key, generation = lease.leaseToken })
	return lease
end

describe("RecyclingRoot", function()
	it("owns one Recycling scope shared by every React placement client", function()
		local root = RecyclingRoot.new(function() end)
		expect(root.getScope({})).toBe(root.getScope({}))
		root.destroy()
	end)

	it("publishes hosts after a complete synchronization", function()
		local changes = 0
		local root = RecyclingRoot.new(function()
			changes += 1
		end)
		local scope = root.getScope({})
		local lease = acquire(scope, {}, createViewType(), "a")
		local hostCount = 0
		for _ in
			root.getPortalChildren(function()
				return nil
			end)
		do
			hostCount += 1
		end
		expect(hostCount).toBe(1)
		expect(changes).toBe(1)
		expect(lease.view.signal(false).key).toBe("a")
		root.destroy()
	end)

	it("coalesces release and reacquire without replacing the host", function()
		local root = RecyclingRoot.new(function() end)
		local scope = root.getScope({})
		local owner = {}
		local viewType = createViewType()
		local first = acquire(scope, owner, viewType, "a")
		local second = scope.exchange(owner, { first }, { { viewType = viewType } }).acquired[1]
		second.view.set({ key = "b", index = 2, value = "b", generation = second.leaseToken })
		expect(second.view).toBe(first.view)
		expect(second.leaseToken).never.toBe(first.leaseToken)
		expect(second.view.signal(false).key).toBe("b")
		root.destroy()
	end)
end)

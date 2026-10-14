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

local function acquire(scope, viewType)
	return scope.bind({
		releases = {},
		requests = { { viewType = viewType } },
	}).acquired[1]
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
		acquire(scope, createViewType())
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
		root.destroy()
	end)

	it("coalesces release and reacquire without replacing the host", function()
		local root = RecyclingRoot.new(function() end)
		local scope = root.getScope({})
		local viewType = createViewType()
		local first = acquire(scope, viewType)
		local second = scope.bind({
			releases = { first },
			requests = { { viewType = viewType } },
		}).acquired[1]
		expect(second).toBe(first)
		root.destroy()
	end)

	it("exposes only bind and dispose on the shared pool", function()
		local root = RecyclingRoot.new(function() end)
		local scope = root.getScope({})
		expect(type(scope.bind)).toBe("function")
		expect(type(scope.dispose)).toBe("function")
		expect((scope :: any).batch).toBeNil()
		expect((scope :: any).exchange).toBeNil()
		root.destroy()
	end)
end)

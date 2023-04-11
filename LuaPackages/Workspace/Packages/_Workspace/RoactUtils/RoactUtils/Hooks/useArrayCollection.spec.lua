return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent
	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	local useArrayCollection = require(script.Parent.useArrayCollection)

	it("should create a new array collection and perform operations", function()
		local container = Instance.new("ScreenGui")
		local root = ReactRoblox.createRoot(container)
		local collection

		local function mockComponent()
			collection = useArrayCollection({ 1, 2, 3 })
			return
		end

		ReactRoblox.act(function()
			root:render(React.createElement(mockComponent))
		end)
		expect(collection.values).toEqual({ 1, 2, 3 })

		-- Test append
		ReactRoblox.act(function()
			collection.append(4)
		end)
		expect(collection.values).toEqual({ 1, 2, 3, 4 })

		-- Test extend
		ReactRoblox.act(function()
			collection.extend({ 5, 6 })
		end)
		expect(collection.values).toEqual({ 1, 2, 3, 4, 5, 6 })

		-- Test replaceAt
		ReactRoblox.act(function()
			collection.replaceAt(3, 99)
		end)
		expect(collection.values).toEqual({ 1, 2, 99, 4, 5, 6 })

		-- Test removeAt
		ReactRoblox.act(function()
			local removed = collection.removeAt(2)
			expect(removed).toEqual(2)
		end)
		expect(collection.values).toEqual({ 1, 99, 4, 5, 6 })

		-- Test remove
		ReactRoblox.act(function()
			local wasRemoved = collection.remove(4)
			expect(wasRemoved).toBeTruthy()
		end)
		expect(collection.values).toEqual({ 1, 99, 5, 6 })

		-- Test findFirst

		ReactRoblox.act(function()
			local found = collection.findFirst(function(value)
				return value == 99
			end)
			expect(found).toEqual({ index = 2, value = 99 })
		end)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should handle negative cases gracefully", function()
		local container = Instance.new("ScreenGui")
		local root = ReactRoblox.createRoot(container)
		local collection

		local function mockComponent()
			collection = useArrayCollection({ 1, 2, 3 })
			return
		end

		ReactRoblox.act(function()
			root:render(React.createElement(mockComponent))
		end)
		expect(collection.values).toEqual({ 1, 2, 3 })

		-- Test replaceAt with invalid index
		ReactRoblox.act(function()
			collection.replaceAt(0, 99)
		end)
		expect(collection.values).toEqual({ 1, 2, 3 })

		ReactRoblox.act(function()
			collection.replaceAt(5, 99)
		end)
		expect(collection.values).toEqual({ 1, 2, 3 })

		-- Test removeAt with invalid index
		ReactRoblox.act(function()
			local removed = collection.removeAt(0)
			expect(removed).toBeNil()
		end)

		expect(collection.values).toEqual({ 1, 2, 3 })

		ReactRoblox.act(function()
			local removed = collection.removeAt(5)
			expect(removed).toBeNil()
		end)
		expect(collection.values).toEqual({ 1, 2, 3 })

		-- Test remove with non-existent value
		ReactRoblox.act(function()
			local wasRemoved = collection.remove(99)
			expect(wasRemoved).toBeFalsy()
		end)
		expect(collection.values).toEqual({ 1, 2, 3 })

		-- Test findFirst with predicate that doesn't match any element
		ReactRoblox.act(function()
			local found = collection.findFirst(function(value)
				return value == 99
			end)
			expect(found).toBeNil()
		end)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)
end

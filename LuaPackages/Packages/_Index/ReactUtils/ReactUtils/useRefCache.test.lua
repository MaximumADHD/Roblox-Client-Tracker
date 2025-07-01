--!nonstrict
local ReactTestingUtils = script:FindFirstAncestor("ReactTestingUtils")
local Packages = ReactTestingUtils.Parent

local React = require(Packages.React)

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local ReactTestingLibrary = require(Packages.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local useRefCache = require(script.Parent.useRefCache)

describe("useRefCache", function()
	it("should return a table that acts as a ref cache", function()
		local refCache

		local function TestComponent()
			refCache = useRefCache()
			return nil
		end

		render(React.createElement(TestComponent))

		expect(typeof(refCache)).toBe("table")
		expect(refCache).toBeDefined()
	end)

	it("should automatically create refs when accessing new keys", function()
		local refCache

		local function TestComponent()
			refCache = useRefCache()
			return nil
		end

		render(React.createElement(TestComponent))

		local ref1 = refCache["test-key-1"]
		local ref2 = refCache["test-key-2"]

		expect(ref1).toBeDefined()
		expect(ref2).toBeDefined()
		expect(typeof(ref1)).toBe("table")
		expect(typeof(ref2)).toBe("table")
	end)

	it("should return the same ref for the same key", function()
		local refCache

		local function TestComponent()
			refCache = useRefCache()
			return nil
		end

		render(React.createElement(TestComponent))

		local ref1 = refCache["same-key"]
		local ref2 = refCache["same-key"]
		local ref3 = refCache["same-key"]

		expect(ref1).toBe(ref2)
		expect(ref2).toBe(ref3)
		expect(ref1).toBe(ref3)
	end)

	it("should return different refs for different keys", function()
		local refCache

		local function TestComponent()
			refCache = useRefCache()
			return nil
		end

		render(React.createElement(TestComponent))

		local ref1 = refCache["key-1"]
		local ref2 = refCache["key-2"]
		local ref3 = refCache["key-3"]

		expect(ref1).never.toBe(ref2)
		expect(ref2).never.toBe(ref3)
		expect(ref1).never.toBe(ref3)
	end)

	it("should maintain ref cache stability across re-renders", function()
		local refCache1
		local refCache2
		local renderCount = 0

		local function TestComponent()
			renderCount = renderCount + 1
			local cache = useRefCache()

			if renderCount == 1 then
				refCache1 = cache
			elseif renderCount == 2 then
				refCache2 = cache
			end

			return nil
		end

		local root = render(React.createElement(TestComponent))

		root.rerender(React.createElement(TestComponent))

		expect(refCache1).toBe(refCache2)
		expect(renderCount).toBe(2)
	end)

	it("should maintain individual refs across re-renders", function()
		local refs1 = {}
		local refs2 = {}
		local renderCount = 0

		local function TestComponent()
			renderCount = renderCount + 1
			local refCache = useRefCache()

			local currentRefs = {
				ref1 = refCache["stable-key-1"],
				ref2 = refCache["stable-key-2"],
				ref3 = refCache["stable-key-3"],
			}

			if renderCount == 1 then
				refs1 = currentRefs
			elseif renderCount == 2 then
				refs2 = currentRefs
			end

			return nil
		end

		local root = render(React.createElement(TestComponent))
		root.rerender(React.createElement(TestComponent))

		expect(refs1.ref1).toBe(refs2.ref1)
		expect(refs1.ref2).toBe(refs2.ref2)
		expect(refs1.ref3).toBe(refs2.ref3)
	end)

	it("should work with various key types", function()
		local refCache

		local function TestComponent()
			refCache = useRefCache()
			return nil
		end

		render(React.createElement(TestComponent))

		local stringRef = refCache["string-key"]
		local numberRef = refCache[123]
		local booleanRef = refCache[true]

		expect(stringRef).toBeDefined()
		expect(numberRef).toBeDefined()
		expect(booleanRef).toBeDefined()

		expect(stringRef).never.toBe(numberRef)
		expect(numberRef).never.toBe(booleanRef)
		expect(stringRef).never.toBe(booleanRef)
	end)

	it("should support __tostring for debugging", function()
		local refCache

		local function TestComponent()
			refCache = useRefCache()
			return nil
		end

		render(React.createElement(TestComponent))

		local _ref1 = refCache["debug-key-1"]
		local _ref2 = refCache["debug-key-2"]

		local stringRepresentation = tostring(refCache)
		expect(typeof(stringRepresentation)).toBe("string")
		expect(stringRepresentation).toBe("{\n\tdebug-key-1 -> Ref(nil)\n\tdebug-key-2 -> Ref(nil)\n}")
	end)

	it("should handle complex usage patterns", function()
		local refCache

		local function TestComponent()
			refCache = useRefCache()
			return nil
		end

		render(React.createElement(TestComponent))

		local customConfigRef1 = refCache["0.00 8.00 4.00 2.00"]
		local customConfigRef2 = refCache["0.00 8.00 4.00 2.00"] -- Same config
		local customConfigRef3 = refCache["0.00 16.00 8.00 3.00"] -- Different config
		local cursorTypeRef1 = refCache["RoundedRect"]
		local cursorTypeRef2 = refCache["RoundedRect"] -- Same type
		local cursorTypeRef3 = refCache["SmallPill"] -- Different type

		expect(customConfigRef1).toBe(customConfigRef2)
		expect(cursorTypeRef1).toBe(cursorTypeRef2)

		expect(customConfigRef1).never.toBe(customConfigRef3)
		expect(customConfigRef1).never.toBe(cursorTypeRef1)
		expect(cursorTypeRef1).never.toBe(cursorTypeRef3)

		expect(customConfigRef1).toBeDefined()
		expect(customConfigRef3).toBeDefined()
		expect(cursorTypeRef1).toBeDefined()
		expect(cursorTypeRef3).toBeDefined()
	end)

	it("should create React refs with proper structure", function()
		local refCache

		local function TestComponent()
			refCache = useRefCache()
			return nil
		end

		render(React.createElement(TestComponent))

		local testRef = refCache["structure-test"]

		expect(typeof(testRef)).toBe("table")
		expect(testRef.current).toBe(nil)
	end)
end)

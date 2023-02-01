-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/helpers.js
local Packages = script.Parent.Parent.Parent

local Promise = require(Packages.Promise)

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test
local describe = JestGlobals.describe
local jest = JestGlobals.jest

-- ROBLOX deviation START: assume constant document
local document = require(script.Parent.Parent.jsHelpers.document)
-- ROBLOX deviation END

-- ROBLOX TODO START: not ported yet. Mocked
-- local screen = require(script.Parent.Parent).screen
local screen = {
	debug = function() end,
	logTestingPlaygroundURL = function() end,
}
-- ROBLOX TODO END

local helpersModule = require(script.Parent.Parent.helpers)
local getDocument = helpersModule.getDocument
local getWindowFromNode = helpersModule.getWindowFromNode
local checkContainerType = helpersModule.checkContainerType
test("returns global document if exists", function()
	expect(getDocument()).toBe(document)
end)

describe("window retrieval throws when given something other than a node", function()
	-- we had an issue when user insert screen instead of query
	-- actually here should be another more clear error output
	test("screen as node", function()
		expect(function()
			return getWindowFromNode(screen)
		end).toThrowError(
			"It looks like you passed a `screen` object. Did you do something like `fireEvent.click(screen, ...` when you meant to use a query, e.g. `fireEvent.click(screen.getBy..., `?"
		)
	end)
	test("Promise as node", function()
		expect(function()
			return getWindowFromNode(Promise.new(jest.fn()))
		end).toThrowError(
			"It looks like you passed a Promise object instead of a DOM node. Did you do something like `fireEvent.click(screen.findBy...` when you meant to use a `getBy` query `fireEvent.click(screen.getBy...`, or await the findBy query `fireEvent.click(await screen.findBy...`?"
		)
	end)
	test("Array as node", function()
		expect(function()
			return getWindowFromNode({})
		end).toThrowError(
			"It looks like you passed an Array instead of a DOM node. Did you do something like `fireEvent.click(screen.getAllBy...` when you meant to use a `getBy` query `fireEvent.click(screen.getBy...`?"
		)
	end)
	-- ROBLOX deviation START: no document available
	-- it("window is not available for node", function()
	-- 	local elem = document:createElement("div")
	-- 	Object.defineProperty(elem.ownerDocument, "defaultView", {
	-- 		get = function(self)
	-- 			return nil
	-- 		end,
	-- 	})

	-- 	expect(function()
	-- 		return getWindowFromNode(elem)
	-- 	end).toThrowErrorMatchingInlineSnapshot(
	-- 		"It looks like the window object is not available for the provided node."
	-- 	)
	-- end)
	-- ROBLOX deviation END

	test("unknown as node", function()
		expect(function()
			-- ROBLOX deviation START: adding some properties to object top differentiate from array
			return getWindowFromNode({ foo = "foo" })
			-- ROBLOX deviation END
		end).toThrowError("The given node is not an Element, the node type is: table.")
	end)
end)

describe("query container validation throws when validation fails", function()
	test("undefined as container", function()
		expect(function()
			return checkContainerType(nil)
		end).toThrowError("Expected container to be an Element, a Document or a DocumentFragment but got nil.")
	end)
	test("null as container", function()
		expect(function()
			return checkContainerType(nil)
		end).toThrowError("Expected container to be an Element, a Document or a DocumentFragment but got nil.")
	end)
	test("array as container", function()
		expect(function()
			return checkContainerType({})
		end).toThrowError("Expected container to be an Element, a Document or a DocumentFragment but got table.")
	end)
	test("object as container", function()
		expect(function()
			-- ROBLOX deviation START: adding props to table to differentiate from array
			return checkContainerType({ foo = "foo" })
			-- ROBLOX deviation END
		end).toThrowError("Expected container to be an Element, a Document or a DocumentFragment but got table.")
	end)
end)
return {}

-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/__tests__/wait-for-element-to-be-removed.js
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local setTimeout = LuauPolyfill.setTimeout

local Promise = require(Packages.Promise)

local JestGlobals = require(Packages.JestGlobals)
local expect = JestGlobals.expect
local test = JestGlobals.test

local CollectionService = game:GetService("CollectionService")

local waitForElementToBeRemoved =
	require(script.Parent.Parent["wait-for-element-to-be-removed"]).waitForElementToBeRemoved
local renderIntoDocument = require(script.Parent.helpers["test-utils"]).renderIntoDocument

local document = require(script.Parent.Parent.jsHelpers.document)
test("resolves on mutation only when the element is removed", function()
	return Promise.resolve()
		:andThen(function()
			local div1 = Instance.new("Frame")
			CollectionService:AddTag(div1, "data-testid=div")
			local div2 = Instance.new("Frame")
			CollectionService:AddTag(div2, "data-testid=div")
			local queryAllByTestId = renderIntoDocument({ div1, div2 }).queryAllByTestId
			local divs = queryAllByTestId("div")
			-- first mutation
			setTimeout(function()
				Array.forEach(divs, function(d)
					d:SetAttribute("id", "mutated")
				end)
			end)
			-- removal
			setTimeout(function()
				Array.forEach(divs, function(div)
					div:Destroy()
				end) --[[ ROBLOX CHECK: check if 'divs' is an Array ]]
			end, 100)
			-- the timeout is here for two reasons:
			-- 1. It helps test the timeout config
			-- 2. The element should be removed immediately
			--    so if it doesn't in the first 100ms then we know something's wrong
			--    so we'll fail early and not wait the full timeout
			waitForElementToBeRemoved(function()
				return queryAllByTestId("div")
			end, { timeout = 200 }):expect()
		end)
		:expect()
end)
test("resolves on mutation if callback throws an error", function()
	return Promise.resolve()
		:andThen(function()
			local div1 = Instance.new("Frame")
			CollectionService:AddTag(div1, "data-testid=div")
			local getByTestId = renderIntoDocument({ div1 }).getByTestId
			local div = getByTestId("div")
			setTimeout(function()
				div:Destroy()
			end)
			waitForElementToBeRemoved(function()
				return getByTestId("div")
			end, { timeout = 100 }):expect()
		end)
		:expect()
end)
test("requires an element to exist first", function()
	-- ROBLOX deviation START: replace .rejects.toThrowErrorMatchingInlineSnapshot
	return expect(function()
		waitForElementToBeRemoved(nil):expect()
	end).toThrowError(
		"The element(s) given to waitForElementToBeRemoved are already removed. waitForElementToBeRemoved requires that the element(s) exist(s) before waiting for removal."
	)
	-- ROBLOX deviation END
end)
test("requires element's parent to exist first", function()
	local div1 = Instance.new("Frame")
	CollectionService:AddTag(div1, "data-testid=div")

	local getByTestId = renderIntoDocument({ div1 }).getByTestId
	local div = getByTestId("div")
	div:Destroy()
	return expect(function()
		waitForElementToBeRemoved(div):expect()
	end).toThrowError(
		"The element(s) given to waitForElementToBeRemoved are already removed. waitForElementToBeRemoved requires that the element(s) exist(s) before waiting for removal."
	)
	-- ROBLOX deviation END
end)
test("requires an unempty array of elements to exist first", function()
	-- ROBLOX deviation START: replace .rejects.toThrowErrorMatchingInlineSnapshot
	return expect(function()
		waitForElementToBeRemoved({}):expect()
	end).toThrowError(
		"The element(s) given to waitForElementToBeRemoved are already removed. waitForElementToBeRemoved requires that the element(s) exist(s) before waiting for removal."
	)
	-- ROBLOX deviation END
end)
test("requires an element to exist first (function form)", function()
	-- ROBLOX deviation START: replace .rejects.toThrowErrorMatchingInlineSnapshot
	return expect(function()
		waitForElementToBeRemoved(function()
			return nil
		end):expect()
	end).toThrowError(
		"The element(s) given to waitForElementToBeRemoved are already removed. waitForElementToBeRemoved requires that the element(s) exist(s) before waiting for removal."
	)
	-- ROBLOX deviation END
end)
test("requires an unempty array of elements to exist first (function form)", function()
	-- ROBLOX deviation START: replace .rejects.toThrowErrorMatchingInlineSnapshot
	return expect(function()
		waitForElementToBeRemoved(function()
			return {}
		end):expect()
	end).toThrowError(
		"The element(s) given to waitForElementToBeRemoved are already removed. waitForElementToBeRemoved requires that the element(s) exist(s) before waiting for removal."
	)
	-- ROBLOX deviation END
end)
test("after successful removal, fullfills promise with empty value (undefined)", function()
	local div1 = Instance.new("Frame")
	CollectionService:AddTag(div1, "data-testid=div")
	local getByTestId = renderIntoDocument({ div1 }).getByTestId
	local div = getByTestId("div")
	local waitResult = waitForElementToBeRemoved(function()
		return getByTestId("div")
	end, { timeout = 100 })
	div:Destroy()
	-- ROBLOX deviation START: replace resolves
	return expect(waitResult:expect()).toBeUndefined()
	-- ROBLOX deviation END
end)
test("rethrows non-testing-lib errors", function()
	local throwIt = false
	local div = Instance.new("Frame")
	div.Parent = document
	local error_ = Error.new("my own error")
	-- ROBLOX deviation START: replace .rejects.toBe with toThrowError
	return expect(function()
		waitForElementToBeRemoved(function()
			if throwIt then
				error(error_)
			end
			throwIt = true
			return div
		end):expect()
	end).toThrowError(error_)
	-- ROBLOX deviation END
end)
test("logs timeout error when it times out", function()
	-- ROBLOX deviation START: replace .rejects.toThrowErrorMatchingInlineSnapshot
	return Promise.resolve()
		:andThen(function()
			local div = Instance.new("Frame")
			div.Parent = document
			expect(function()
				waitForElementToBeRemoved(function()
					return div
				end, {
					timeout = 1,
					onTimeout = function(e)
						return e
					end,
				}):expect()
			end).toThrowError("Timed out in waitForElementToBeRemoved.")
		end)
		:expect()
	-- ROBLOX deviation END
end)
test("accepts an element as an argument and waits for it to be removed from its top-most parent", function()
	return Promise.resolve()
		:andThen(function()
			local div1 = Instance.new("Frame")
			CollectionService:AddTag(div1, "data-testid=div")
			local queryByTestId = renderIntoDocument({ div1 }).queryByTestId
			local div = queryByTestId("div")
			setTimeout(function()
				(div :: Instance):Destroy()
			end, 20)
			waitForElementToBeRemoved(div, { timeout = 200 }):expect()
		end)
		:expect()
end)
test(
	"accepts an array of elements as an argument and waits for those elements to be removed from their top-most parent",
	function()
		return Promise.resolve()
			:andThen(function()
				local div1_ = Instance.new("Frame")
				CollectionService:AddTag(div1_, "data-testid=div")
				local div2_ = Instance.new("Frame")
				CollectionService:AddTag(div2_, "data-testid=div")
				local queryAllByTestId = renderIntoDocument({ div1_, div2_ }).queryAllByTestId
				local div1, div2 = table.unpack(queryAllByTestId("div"), 1, 2)
				setTimeout(function()
					div1:Destroy()
				end, 20)
				setTimeout(function()
					div2:Destroy()
				end, 50)
				waitForElementToBeRemoved({ div1, div2 }, { timeout = 200 }):expect()
			end)
			:expect()
	end
)
return {}

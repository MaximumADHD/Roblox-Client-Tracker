-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/wait-for-element-to-be-removed.js
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(Packages.Promise)

local isCallable = require(script.Parent.jsHelpers.isCallable)

local exports = {}

local waitFor = require(script.Parent["wait-for"]).waitFor

local function isRemoved(result): boolean
	return not Boolean.toJSBoolean(result)
		or (if Array.isArray(result) then not Boolean.toJSBoolean(#result) else false)
end

-- Check if the element is not present.
-- As the name implies, waitForElementToBeRemoved should check `present` --> `removed`
local function initialCheck(elements)
	if isRemoved(elements) then
		error(
			Error.new(
				"The element(s) given to waitForElementToBeRemoved are already removed. waitForElementToBeRemoved requires that the element(s) exist(s) before waiting for removal."
			)
		)
	end
end

local function waitForElementToBeRemoved(callback, options)
	return Promise.resolve():andThen(function(): Instance | Promise<any> | nil
		-- created here so we get a nice stacktrace
		local timeoutError = Error.new("Timed out in waitForElementToBeRemoved.")
		if not isCallable(callback) then
			initialCheck(callback)
			local elements = if Array.isArray(callback) then callback else { callback }
			local getRemainingElements = Array.map(elements, function(element: Instance)
				local parent = element.Parent
				if parent == nil then
					return function(): Instance?
						return nil
					end
				end
				while (parent :: Instance).Parent do
					parent = (parent :: Instance).Parent
				end
				return function(): Instance?
					-- ROBLOX deviation START: use ROBLOX Instance methods
					return if (parent :: Instance):IsAncestorOf(element) then element else nil
					-- ROBLOX deviation END
				end
			end)

			callback = function()
				return Array.filter(
					Array.map(getRemainingElements, function(c)
						return c()
					end),
					Boolean.toJSBoolean
				)
			end
		end

		initialCheck(callback())

		return waitFor(function()
			local result
			local ok, res = pcall(function()
				result = callback()
			end)
			if not ok then
				if res.name == "TestingLibraryElementError" then
					return nil
				end
				error(res)
			end
			if not isRemoved(result) then
				error(timeoutError)
			end
			return nil
		end, options)
	end)
end

exports.waitForElementToBeRemoved = waitForElementToBeRemoved
--[[
eslint
  require-await: "off"
]]
return exports

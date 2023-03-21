-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v6.11.0/src/wait.js

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local waitForExpect = require(srcWorkspace.testUtils.waitForExpect)

local reactTestingModule = require(rootWorkspace.ReactTestingLibrary)
local getConfig = reactTestingModule.getConfig

type GenericFunction = (...any) -> ...any?

local exports = {}

type WaitOptions = { timeout: number?, interval: number? }

local function wait_(callback_: GenericFunction?, ref_: WaitOptions?)
	local ref = ref_ :: WaitOptions
	local callback = callback_ :: GenericFunction

	if callback == nil then
		callback = function() end
	end

	if ref == nil then
		ref = {}
	end

	local timeout, interval
	if ref.timeout == nil then
		timeout = getConfig().asyncUtilTimeout
	else
		timeout = ref.timeout
	end

	if ref.interval == nil then
		interval = 50
	else
		interval = ref.interval
	end

	return waitForExpect(callback, timeout, interval)
end

local function waitWrapper(...)
	local args = table.pack(...)
	return getConfig().asyncWrapper(function()
		return wait_(table.unpack(args))
	end)
end

exports.wait = waitWrapper

return exports

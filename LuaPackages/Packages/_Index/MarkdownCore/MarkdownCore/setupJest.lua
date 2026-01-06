local Packages = script:FindFirstAncestor("MarkdownCore").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local beforeAll = JestGlobals.beforeAll
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local function toWarnWith(_self, callback, warningMessage)
	local foundMatch = false
	local foundOutput = ""
	local warnSpy = jest.spyOn(jest.globalEnv, "warn").mockImplementation(function(message)
		print("WARN", message)
		local ok, output = pcall(function()
			expect(message).toEqual(warningMessage)
		end)
		if ok then
			foundMatch = true
			foundOutput = output
		end
	end)

	local ok, output = pcall(callback)
	if not ok then
		warnSpy:mockRestore()
		error(output)
	end

	local message
	if foundMatch then
		message = function()
			return `Expected never to warn with string containing "{warningMessage}" but got "{foundOutput}"`
		end
	else
		message = function()
			return `Expected to warn with string containing "{warningMessage}" but did not find a match`
		end
	end
	warnSpy:mockRestore()
	return {
		message = message,
		pass = foundMatch,
	}
end

local function toWarn(_self, callback)
	local warnCount = 0
	local warnSpy = jest.spyOn(jest.globalEnv, "warn").mockImplementation(function(message)
		print("WARN", message)
		warnCount = warnCount + 1
	end)

	local ok, output = pcall(callback)
	if not ok then
		warnSpy:mockRestore()
		error(output)
	end

	local message
	if warnCount > 0 then
		message = function()
			return `Expected never to warn but got {warnCount} warnings`
		end
	else
		message = function()
			return `Expected to warn but never did`
		end
	end

	warnSpy:mockRestore()
	return {
		message = message,
		pass = warnCount > 0,
	}
end

beforeAll(function()
	expect.extend({
		toWarnWith = toWarnWith,
		toWarn = toWarn,
	})
end)

-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/testing/withConsoleSpy.ts
local exports = {}

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local Promise = require(rootWorkspace.Promise)
local JestGlobals = require(rootWorkspace.JestGlobals)
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local console = LuauPolyfill.console

local function wrapTestFunction(fn: (...any) -> any, consoleMethodName: string)
	return function(...)
		local args_ = table.pack(...)
		-- ROBLOX deviation: using jest.fn instead of spyOn(not available)
		local originalFn = console[consoleMethodName]
		local spy = jest.fn(function() end)
		console[consoleMethodName] = spy

		return Promise
			.new(function(resolve)
				resolve(if fn then fn(table.unpack(args_)) else nil)
			end)
			-- ROBLOX deviation START: Roblox promise finally works different. We must handle successs and error
			:andThen(
				function()
					expect(spy).toMatchSnapshot()
					spy:mockClear()
					console[consoleMethodName] = originalFn
				end
			)
			:catch(function(e)
				expect(spy).toMatchSnapshot()
				spy:mockClear()
				console[consoleMethodName] = originalFn
				error(e)
			end)
		-- ROBLOX deviation END
	end
end

-- ROBLOX deviation START: add helper types
type TestFn<TResult> = (...any) -> ...TResult
type TestFnLike<TResult> =
	typeof(setmetatable({}, { __call = function(_self: any, ...: any): ...TResult end }))
	| TestFn<TResult>
-- ROBLOX deviation END

local function withErrorSpy<TArgs, TResult>(it: TestFnLike<TResult>, ...: any)
	local args = { ... } -- TArgs
	args[2] = wrapTestFunction(args[2], "error")
	-- ROBLOX deviation START: analyze complains with union of fn and callable table
	return (it :: TestFn<TResult>)(table.unpack(args))
	-- ROBLOX deviation END
end
exports.withErrorSpy = withErrorSpy

local function withWarningSpy<TArgs, TResult>(it: TestFnLike<TResult>, ...: any)
	local args = { ... } -- TArgs
	args[2] = wrapTestFunction(args[2], "warn")
	-- ROBLOX deviation START: analyze complains with union of fn and callable table
	return (it :: TestFn<TResult>)(table.unpack(args))
	-- ROBLOX deviation END
end
exports.withWarningSpy = withWarningSpy

local function withLogSpy<TArgs, TResult>(it: TestFnLike<TResult>, ...: any)
	local args = { ... } -- TArgs
	args[2] = wrapTestFunction(args[2], "log")
	-- ROBLOX deviation START: analyze complains with union of fn and callable table
	return (it :: TestFn<TResult>)(table.unpack(args))
	-- ROBLOX deviation END
end
exports.withLogSpy = withLogSpy

return exports

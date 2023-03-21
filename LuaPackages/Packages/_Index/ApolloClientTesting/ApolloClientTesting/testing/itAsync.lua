-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/testing/itAsync.ts
local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(rootWorkspace.Promise)

local JestGlobals = require(rootWorkspace.JestGlobals)
local it = JestGlobals.it

local exports = {}

-- ROBLOX deviation START: add explicit type
type Callback = (resolve: (result: any?) -> (), reject: (reason: any?) -> ()) -> ()
-- ROBLOX deviation END

local function wrap(key: string?): (message: string, callback: Callback, timeout: number?) -> ()
	return function(message: string, callback: Callback, timeout: number?)
		return (if key then (it :: any)[key] else it)(message, function()
			return Promise
				.new(function(resolve, reject)
					callback(resolve, reject)
				end)
				--[[
				ROBLOX deviation START:
				Roblox Promise resolves synchronously,
				we need to delay the execution of chains of `andThen` by at least one tick
			]]
				:andThen(
					function(value)
						return Promise.delay(1 / 60):andThenReturn(value)
					end
				)
			-- ROBLOX deviation END
		end, timeout)
	end
end

local wrappedIt = wrap()

local itAsync = setmetatable({
	only = wrap("only"),
	skip = wrap("skip"),
	todo = wrap("todo"),
}, {
	__call = function(_self: any, message: string, callback: Callback, timeout: number?)
		return wrappedIt(message, callback, timeout)
	end,
})

exports.itAsync = itAsync

return exports

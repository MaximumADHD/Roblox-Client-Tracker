-- ROBLOX upstream: https://github.com/facebook/jest/tree/v27.4.7/packages/jest-util/src/createProcessObject.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

--[[
	ROBLOX deviation:
	skipped whole file as it seems unnecessary in Lua environment
]]

return {
	default = function()
		return {}
	end,
}

-- type unknown = any --[[ ROBLOX FIXME: adding `unknown` type alias to make it easier to use Luau unknown equivalent when supported ]]

-- -- ROBLOX FIXME START: added types and objects that do not exist in Luau
-- type NodeJS_ProcessEnv = any
-- type NodeJS_Process = any

-- local process = {
-- 	env = {},
-- }
-- -- ROBLOX FIXME END

-- local CurrentModule = script.Parent
-- local Packages = CurrentModule.Parent
-- local LuauPolyfill = require(Packages.LuauPolyfill)
-- local Array = LuauPolyfill.Array
-- local Boolean = LuauPolyfill.Boolean
-- local Object = LuauPolyfill.Object
-- local Set = LuauPolyfill.Set
-- local Symbol = LuauPolyfill.Symbol
-- type Record<K, V> = { [K]: V }
-- local exports = {}

-- local deepCyclicCopy = require(script.Parent.deepCyclicCopy).default

-- local BLACKLIST = Set.new({ "env", "mainModule", "_events" })
-- -- ROBLOX FIXME: make proper platform check
-- -- local isWin32 = process.platform == "win32"
-- local isWin32 = false -- UserInputService:GetPlatform() == 0
-- local proto: Record<string, unknown> = Object.getPrototypeOf(process.env)

-- -- The "process.env" object has a bunch of particularities: first, it does not
-- -- directly extend from Object; second, it converts any assigned value to a
-- -- string; and third, it is case-insensitive in Windows. We use a proxy here to
-- -- mimic it (see https://nodejs.org/api/process.html#process_process_env).

-- local function createProcessEnv(): NodeJS_ProcessEnv
-- 	local real = Object.create(proto)
-- 	local lookup: typeof(process.env) = {}

-- 	local function deletePropertyWin32(_target: unknown, key: unknown)
-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: ForInStatement ]] --[[ for (const name in real) {
--       if (real.hasOwnProperty(name)) {
--         if (typeof key === 'string') {
--           if (name.toLowerCase() === key.toLowerCase()) {
--             delete real[name];
--             delete lookup[name.toLowerCase()];
--           }
--         } else {
--           if (key === name) {
--             delete real[name];
--             delete lookup[name];
--           }
--         }
--       }
--     } ]]

-- 		return true
-- 	end

-- 	local function deleteProperty(_target: unknown, key: any)
-- 		real[tostring(key)] = nil
-- 		lookup[tostring(key)] = nil
-- 		return true
-- 	end

-- 	local function getProperty(_target: unknown, key: any)
-- 		return real[tostring(key)]
-- 	end

-- 	local function getPropertyWin32(_target: unknown, key: any)
-- 		if typeof(key) == "string" then
-- 			return lookup[tostring((function()
-- 				if Array.indexOf(Object.keys(proto), tostring(key)) ~= -1 then
-- 					return key
-- 				else
-- 					return key:lower()
-- 				end
-- 			end)())]
-- 		else
-- 			return real[tostring(key)]
-- 		end
-- 	end

-- 	-- ROBLOX CHECK: what was the intent of the proxy
-- 	local proxy = setmetatable({
-- 		deleteProperty = (function()
-- 			if Boolean.toJSBoolean(isWin32) then
-- 				return deletePropertyWin32
-- 			else
-- 				return deleteProperty
-- 			end
-- 		end)(),
-- 		get = (function()
-- 			if Boolean.toJSBoolean(isWin32) then
-- 				return getPropertyWin32
-- 			else
-- 				return getProperty
-- 			end
-- 		end)(),
-- 		set = function(self, _target, key, value)
-- 			local strValue = "" .. tostring(value)
-- 			if typeof(key) == "string" then
-- 				lookup[tostring(key:lower())] = strValue
-- 			end
-- 			real[tostring(key)] = strValue
-- 			return true
-- 		end,
-- 	}, real)
-- 	-- local proxy = Proxy.new(real, {
-- 	-- 	deleteProperty = (function()
-- 	-- 		if Boolean.toJSBoolean(isWin32) then
-- 	-- 			return deletePropertyWin32
-- 	-- 		else
-- 	-- 			return deleteProperty
-- 	-- 		end
-- 	-- 	end)(),
-- 	-- 	get = (function()
-- 	-- 		if Boolean.toJSBoolean(isWin32) then
-- 	-- 			return getPropertyWin32
-- 	-- 		else
-- 	-- 			return getProperty
-- 	-- 		end
-- 	-- 	end)(),
-- 	-- 	set = function(self, _target, key, value)
-- 	-- 		local strValue = "" .. tostring(value)
-- 	-- 		if typeof(key) == "string" then
-- 	-- 			lookup[tostring(key:lower())] = strValue
-- 	-- 		end
-- 	-- 		real[tostring(key)] = strValue
-- 	-- 		return true
-- 	-- 	end,
-- 	-- })
-- 	return Object.assign(proxy, process.env)
-- end
-- exports.default = function(): NodeJS_Process
-- 	local process = require("process")
-- 	local newProcess = deepCyclicCopy(process, { blacklist = BLACKLIST, keepPrototype = true })
-- 	local ok, result, hasReturned = pcall(function()
-- 		-- This fails on Node 12, but it's already set to 'process'
-- 		newProcess[tostring(Symbol.toStringTag)] = "process"
-- 	end)
-- 	if not ok then
-- 		local e = result
-- 		-- Make sure it's actually set instead of potentially ignoring errors
-- 		if newProcess[tostring(Symbol.toStringTag)] ~= "process" then
-- 			e.message = "Unable to set toStringTag on process. Please open up an issue at https://github.com/facebook/jest\n\n"
-- 				.. tostring(e.message)
-- 			error(e)
-- 		end
-- 	end
-- 	if hasReturned then
-- 		return result
-- 	end
-- 	-- Sequentially execute all constructors over the object.
-- 	local proto = process
-- 	error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: WhileStatement ]] --[[ while (proto = Object.getPrototypeOf(proto)) {
--     if (typeof proto.constructor === 'function') {
--       proto.constructor.call(newProcess);
--     }
--   } ]]
-- 	newProcess.env = createProcessEnv()
-- 	newProcess.send = function()
-- 		return true
-- 	end
-- 	Object.defineProperty(newProcess, "domain", {
-- 		get = function(self)
-- 			return process.domain
-- 		end,
-- 	})
-- 	return newProcess
-- end
-- return exports

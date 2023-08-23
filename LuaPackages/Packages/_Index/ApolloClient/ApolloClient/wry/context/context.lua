--[[
 * Copyright (c) 2019-2021 Ben Newman <ben@eloper.dev>
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/benjamn/wryware/blob/91655122045a99ad445aa330e88905feb3775db6/packages/context/src/context.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

type Function = (...any) -> any

local exports = {}

local slotModule = require(script.Parent.slot)
local Slot = slotModule.Slot
exports.Slot = Slot
export type Slot<TValue> = slotModule.Slot<TValue>
local bind, noContext = Slot.bind, Slot.noContext
exports.bind, exports.noContext = bind, noContext
-- ROBLOX deviation: using setTimeout from LuauPolyfill
local setTimeout = LuauPolyfill.setTimeout
local function setTimeoutWithContext(callback: () -> any, delay: number)
	return setTimeout(bind(callback), delay)
end

-- ROBLOX deviation: moved export after function declaration. There is no hoisting in Lua
-- Like global.setTimeout, except the callback runs with captured context.
exports.setTimeout = setTimeoutWithContext

-- ROBLOX deviation: Luau doesn't support generators
-- local function asyncFromGen(
-- 	genFn: (...any) -> any
-- 	--[[ (...args: TArgs) => Generator<TYield, TReturn, TNext> ]]
-- )
-- 	return function(this: any)
-- 		local gen = genFn:apply(
-- 			error("not implemented")
-- 			--[[ ROBLOX TODO: Unhandled node for type: ThisExpression ]]
-- 			--[[ this ]]
-- ,
-- 			arguments :: any
-- 		)
-- 		type Method = any
-- 		--[[ ROBLOX TODO: Unhandled node for type: TSFunctionType ]]
-- 		--[[ (this: Generator<TYield, TReturn, TNext>, arg: any) => IteratorResult<TYield, TReturn> ]]
-- 		local boundNext: Method = bind(gen.next)
-- 		local boundThrow: Method = bind(gen.throw)
-- 		return Promise.new(function(resolve, reject)
-- 			local function invoke(method: Method, argument: any)
-- 				local ok, result, hasReturned = xpcall(function()
-- 					local result: any = method(gen, argument)
-- 				end, function(error_)
-- 					return reject(error_), true
-- 				end)
-- 				if hasReturned then
-- 					return result
-- 				end
-- 				local next = (function()
-- 					if Boolean.toJSBoolean(result.done) then
-- 						return resolve
-- 					else
-- 						return invokeNext
-- 					end
-- 				end)()
-- 				if Boolean.toJSBoolean(isPromiseLike(result.value)) then
-- 					result.value:andThen(
-- 						next,
-- 						(function()
-- 							if Boolean.toJSBoolean(result.done) then
-- 								return reject
-- 							else
-- 								return invokeThrow
-- 							end
-- 						end)()
-- 					)
-- 				else
-- 					next(result.value)
-- 				end
-- 			end
-- 			local function invokeNext(value: any)
-- 				return invoke(boundNext, value)
-- 			end
-- 			local function invokeThrow(error_)
-- 				return invoke(boundThrow, error_)
-- 			end
-- 			invokeNext()
-- 		end)
-- 	end :: any
-- 	--[[ ROBLOX TODO: Unhandled node for type: TSFunctionType ]]
-- 	--[[ (...args: TArgs) => Promise<any> ]]
-- end
-- exports.asyncFromGen = asyncFromGen
-- local function isPromiseLike(value: any): boolean
-- 	if Boolean.toJSBoolean(value) then
-- 		return typeof(value.andThen) == "function"
-- 	else
-- 		return false
-- 	end
-- end
-- local wrappedFibers: Array<Function> = {}
-- local function wrapYieldingFiberMethods(Fiber: F): F
-- 	if wrappedFibers:indexOf(Fiber) < 0 then
-- 		local function wrap(obj: any, method: string)
-- 			local fn = obj[tostring(method)]
-- 			obj[tostring(method)] = function()
-- 				return noContext(
-- 					fn,
-- 					arguments :: any,
-- 					error("not implemented")
-- 					--[[ ROBLOX TODO: Unhandled node for type: ThisExpression ]]
-- 					--[[ this ]]
-- 				)
-- 			end
-- 		end
-- 		wrap(Fiber, "yield")
-- 		wrap(Fiber.prototype, "run")
-- 		wrap(Fiber.prototype, "throwInto")
-- 		wrappedFibers:push(Fiber)
-- 	end
-- 	return Fiber
-- end
-- exports.wrapYieldingFiberMethods = wrapYieldingFiberMethods
return exports

-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/ErrorWithStack.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
type Error = LuauPolyfill.Error
local exports = {}

export type ErrorWithStack = Error & {}
local ErrorWithStack = setmetatable({}, { __index = Error })
ErrorWithStack.__index = ErrorWithStack
function ErrorWithStack.new(
	message: string | nil,
	callsite: (...any) -> ...unknown,
	stackLimit: number?
): ErrorWithStack
	-- Ensure we have a large stack length so we get full details.
	local originalStackLimit = Error["stackTraceLimit"]
	if stackLimit ~= nil and stackLimit ~= 0 then
		Error["stackTraceLimit"] =
			math.max(stackLimit, Boolean.toJSBoolean(originalStackLimit) and originalStackLimit or 10)
	end

	local self = setmetatable(Error.new(message), ErrorWithStack)
	if Error.captureStackTrace then
		Error.captureStackTrace((self :: any) :: ErrorWithStack, callsite)
	end
	Error["stackTraceLimit"] = originalStackLimit
	return (self :: any) :: ErrorWithStack
end
exports.default = ErrorWithStack
return exports

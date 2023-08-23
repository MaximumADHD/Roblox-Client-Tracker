--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/maybeDeepFreeze.ts
local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local Array = LuauPolyfill.Array

require(script.Parent.Parent.globals) -- For __DEV__

local isNonNullObject = require(script.Parent.objects).isNonNullObject

local function deepFreeze(value: any)
	local workSet = Set.new({ value })
	-- ROBLOX deviation START: set is being modified inside the loop, can't use forEach
	for _, obj in workSet do
		if isNonNullObject(obj) then
			if not table.isfrozen(obj) then
				Object.freeze(obj)
			end
			Array.forEach(Object.keys(obj), function(name)
				if isNonNullObject(obj[name]) then
					workSet:add(obj[name])
				end
			end)
		end
	end
	-- ROBLOX deviation END
	return value
end

local function maybeDeepFreeze<T>(obj: T): T
	if _G.__DEV__ then
		deepFreeze(obj)
	end
	return obj
end

exports.maybeDeepFreeze = maybeDeepFreeze

return exports

--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/observables/subclassing.ts

local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Object = LuauPolyfill.Object
type Symbol = LuauPolyfill.Symbol

local Observable = require(script.Parent.Observable).Observable

-- Generic implementations of Observable.prototype methods like map and
-- filter need to know how to create a new Observable from an Observable
-- subclass (like Concast or ObservableQuery). Those methods assume
-- (perhaps unwisely?) that they can call the subtype's constructor with a
-- Subscriber function, even though the subclass constructor might expect
-- different parameters. Defining this static Symbol.species property on
-- the subclass is a hint to generic Observable code to use the default
-- constructor instead of trying to do `new Subclass(observer => ...)`.
-- ROBLOX deviation START: no support for type constraints in Luau
-- S extends new (...args: any[]) => Observable<any>,
local function fixObservableSubclass(subclass: Object)
	-- ROBLOX deviation END
	local function set(key: Symbol | string)
		-- Object.defineProperty is necessary because the Symbol.species
		-- property is a getter by default in modern JS environments, so we
		-- can't assign to it with a normal assignment expression.
		-- ROBLOX deviation START: no support for an Object.key type assignment. Assigning normally.
		-- Object.defineProperty(subclass, key, { value = Observable })
		(subclass :: Object)[key] = Observable
		-- ROBLOX deviation END
	end

	-- ROBLOX deviation START: this won't work the way it does in JS, skip it since it's optional upstream anyway
	-- if typeof(Symbol) == "table" and Symbol.species then
	-- 	set(Symbol.species)
	-- end
	-- ROBLOX deviation END

	set("@@species")
	return subclass
end

exports.fixObservableSubclass = fixObservableSubclass

return exports

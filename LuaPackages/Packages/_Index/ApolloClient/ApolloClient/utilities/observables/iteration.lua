--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/observables/iteration.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>

local exports = {}

local ObservableModule = require(script.Parent.Observable)
type Observer<T> = ObservableModule.Observer<T>

-- ROBLOX deviation: generic function parameters aren't supported in Luau
-- E and A are placeholders for the generic function parameters for iterateObserversSafely
type E = any
type A = any
local function iterateObserversSafely(
	observers: Set<Observer<E>>,
	-- ROBLOX TODO: create keyof Observer<E> type for method for safety
	method: string,
	argument: A?
)
	-- In case observers is modified during iteration, we need to commit to the
	-- original elements, which also provides an opportunity to filter them down
	-- to just the observers with the given method.
	local observersWithMethod: Array<Observer<E>> = {}

	observers:forEach(function(obs: Observer<E>)
		if obs[method] ~= nil then
			table.insert(observersWithMethod, obs)
		end
	end)

	Array.forEach(observersWithMethod, function(obs)
		obs[method](obs, argument)
	end)
end

exports.iterateObserversSafely = iterateObserversSafely

return exports

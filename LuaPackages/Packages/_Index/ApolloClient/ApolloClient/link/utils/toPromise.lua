--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/utils/toPromise.ts

local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local Promise = require(rootWorkspace.Promise)

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>

local invariantModule = require(srcWorkspace.jsutils.invariant)
local invariant = invariantModule.invariant

local utilitiesModule = require(script.Parent.Parent.Parent.utilities)
type Observable<T> = utilitiesModule.Observable<T>

local function toPromise<R>(observable: Observable<R>): Promise<R>
	local completed = false
	return Promise.new(function(resolve, reject)
		observable:subscribe({
			next = function(_self, data)
				if completed then
					invariant.warn("Promise Wrapper does not support multiple results from Observable")
				else
					completed = true
					resolve(data)
				end
			end,
			error = function(_self, e)
				reject(e)
			end,
		})
	end):andThen(
		-- ROBLOX deviation: delaying promise resolution to allow Observable to complete first
		function(result)
			return Promise.delay(0):andThenReturn(result)
		end
	)
end

exports.toPromise = toPromise

return exports

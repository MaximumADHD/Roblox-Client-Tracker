--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/utils/fromPromise.ts

local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>

local utilitiesModule = require(script.Parent.Parent.Parent.utilities)
type Observable<T> = utilitiesModule.Observable<T>

local Observable = utilitiesModule.Observable

local function fromPromise<T>(promise: Promise<T>): Observable<T>
	return Observable.new(function(observer)
		promise
			:andThen(function(value: T)
				observer:next(value)
				observer:complete()
			end)
			:catch(function(e)
				observer.error(observer, e)
			end)
	end)
end

exports.fromPromise = fromPromise

return exports

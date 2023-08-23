--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/utils/fromError.ts

local exports = {}
local utilitiesModule = require(script.Parent.Parent.Parent.utilities)
local Observable = utilitiesModule.Observable
type Observable<T> = utilitiesModule.Observable<T>

-- ROBLOX TODO:replace when generic in functions are possible
type T_ = any

local function fromError(errorValue: any): Observable<T_>
	return Observable.new(function(observer)
		observer:error(errorValue)
	end)
end
exports.fromError = fromError
return exports

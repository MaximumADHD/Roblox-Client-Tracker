--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/observables/Observable.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local zenObservableModule = require(rootWorkspace.ZenObservable)
local Observable = zenObservableModule.Observable

-- ROBLOX deviation: rxjs support not required
-- -- require(Packages["symbol-observable"])
-- -- local prototype = Observable.prototype
-- -- local fakeObsSymbol = "@@observable" :: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]]
-- -- --[[ keyof typeof prototype ]]
-- -- if not Boolean.toJSBoolean(prototype[tostring(fakeObsSymbol)]) then
-- -- 	prototype[tostring(fakeObsSymbol)] = function()
-- -- 		return error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: ThisExpression ]]
-- -- 		--[[ this ]]
-- -- 	end
-- -- end

exports.Observable = Observable
export type Observable<T> = zenObservableModule.Observable<T> & {
	-- ROBLOX deviation: fix function signature type until fixed in zen-observable
	subscribe: (
		self: Observable<T>,
		observer: Observer<T> | (T) -> (),
		onError: ((any) -> ())?,
		onComplete: (() -> ())?
	) -> ObservableSubscription,
}
export type Observer<T> = zenObservableModule.Observer<T>
export type ObservableSubscription = zenObservableModule.Subscription<any>
export type Subscriber<T> = zenObservableModule.Subscriber<T>
return exports

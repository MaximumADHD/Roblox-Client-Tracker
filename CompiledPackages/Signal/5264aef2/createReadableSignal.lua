--!strict
--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
type Callback<T> = (T) -> ()
type InternalSubscription<T> = { callback: Callback<T>, unsubscribed: boolean }

export type Subscription = {
	unsubscribe: (self: Subscription) -> (),
}
export type ReadableSignal<T> = {
	subscribe: (self: ReadableSignal<T>, callback: Callback<T>) -> Subscription,
	getValue: (self: ReadableSignal<T>) -> T,
}
export type FireSignal<T> = (T) -> ()

local createSignal = require(script.Parent.createSignal)

local function createReadableSignal<T>(initialValue: T): (ReadableSignal<T>, FireSignal<T>)
	local innerSignal, innerFire = createSignal()

	local lastValue = initialValue

	local function subscribe(_self: ReadableSignal<T>, callback: Callback<T>): Subscription
		return innerSignal:subscribe(callback)
	end

	local function getValue(_self: ReadableSignal<T>): T
		return lastValue
	end

	local function fire(value: T)
		lastValue = value
		innerFire(value)
	end

	return {
		subscribe = subscribe,
		getValue = getValue,
	}, fire
end

return createReadableSignal

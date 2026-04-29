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
export type Callback<T> = (T) -> ()
export type Subscription = {
	unsubscribe: (self: Subscription) -> (),
}

export type Signal<T> = {
	subscribe: (self: Signal<T>, callback: Callback<T>) -> Subscription,
}
export type ReadableSignal<T> = {
	subscribe: (self: ReadableSignal<T>, callback: Callback<T>) -> Subscription,
	getValue: (self: ReadableSignal<T>) -> T,
}
export type FireSignal<T> = (T) -> ()

return {}

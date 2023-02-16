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
--!strict
export type Object = { [string]: any }
export type Array<T> = { [number]: T }
export type Function = (...any) -> ...any
export type Table<T, V> = { [T]: V }
export type Tuple<T, V> = Array<T | V>
export type mapCallbackFn<K, V> = (element: V, key: K, map: Map<K, V>) -> ()
export type mapCallbackFnWithThisArg<K, V> = (thisArg: Object, value: V, key: K, map: Map<K, V>) -> ()

export type Map<K, V> = typeof(setmetatable(
	{} :: {
		size: number,
		-- method definitions
		set: (self: Map<K, V>, K, V) -> Map<K, V>,
		get: (self: Map<K, V>, K) -> V | nil,
		clear: (self: Map<K, V>) -> (),
		delete: (self: Map<K, V>, K) -> boolean,
		forEach: (
			self: Map<K, V>,
			callback: mapCallbackFn<K, V> | mapCallbackFnWithThisArg<K, V>,
			thisArg: Object?
		) -> (),
		[K]: V,
		has: (self: Map<K, V>, K) -> boolean,
		keys: (self: Map<K, V>) -> Array<K>,
		values: (self: Map<K, V>) -> Array<V>,
		entries: (self: Map<K, V>) -> Array<Tuple<K, V>>,
		ipairs: (self: Map<K, V>) -> any,
		_map: { [K]: V },
		_array: { [number]: K },
		__index: (self: Map<K, V>, key: K) -> V,
		__iter: (self: Map<K, V>) -> (<K, V>({ [K]: V }, K?) -> (K?, V), V),
		__newindex: (self: Map<K, V>, key: K, value: V) -> (),
	},
	{} :: {
		__index: Map<K, V>,
		__iter: (self: Map<K, V>) -> (<K, V>({ [K]: V }, K?) -> (K, V), V),
		__newindex: (self: Map<K, V>, key: K, value: V) -> (),
	}
))

export type WeakMap<K, V> = {
	-- method definitions
	get: (self: WeakMap<K, V>, K) -> V,
	set: (self: WeakMap<K, V>, K, V) -> WeakMap<K, V>,
	has: (self: WeakMap<K, V>, K) -> boolean,
}

export type setCallbackFn<T> = (value: T, key: T, set: Set<T>) -> ()
export type setCallbackFnWithThisArg<T> = (thisArg: Object, value: T, key: T, set: Set<T>) -> ()

export type Set<T> = typeof(setmetatable(
	{} :: {
		size: number,
		-- method definitions
		add: (self: Set<T>, T) -> Set<T>,
		clear: (self: Set<T>) -> (),
		delete: (self: Set<T>, T) -> boolean,
		forEach: (self: Set<T>, callback: setCallbackFn<T> | setCallbackFnWithThisArg<T>, thisArg: Object?) -> (),
		has: (self: Set<T>, T) -> boolean,
		ipairs: (self: Set<T>) -> any,
	},
	{} :: {
		__index: Set<T>,
		__iter: (self: Set<T>) -> (<K, V>({ [K]: V }, K?) -> (K, V), T),
	}
))
return {}

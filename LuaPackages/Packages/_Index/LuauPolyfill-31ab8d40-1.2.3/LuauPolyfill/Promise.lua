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
-- this maps onto community promise libraries which won't support Luau, so we inline
export type PromiseLike<T> = {
	andThen: (
		self: PromiseLike<T>,
		resolve: ((T) -> ...(nil | T | PromiseLike<T>))?,
		reject: ((any) -> ...(nil | T | PromiseLike<T>))?
	) -> PromiseLike<T>,
}

type PromiseStatus = "Started" | "Resolved" | "Rejected" | "Cancelled"

export type Promise<T> = {
	andThen: (
		self: Promise<T>,
		resolve: ((T) -> ...(nil | T | PromiseLike<T>))?,
		reject: ((any) -> ...(nil | T | PromiseLike<T>))?
	) -> Promise<T>,

	catch: (Promise<T>, ((any) -> ...(nil | T | PromiseLike<nil>))) -> Promise<T>,

	onCancel: (Promise<T>, () -> ()?) -> boolean,

	expect: (Promise<T>) -> ...T,

	-- FIXME Luau: need union type packs to parse  (...T) | () | PromiseLike<T> here
	await: (Promise<T>) -> (boolean, ...(T | any)),

	getStatus: (self: Promise<T>) -> PromiseStatus,
	-- FIXME Luau: need union type packs to parse  (...T) | () | PromiseLike<T> here
	awaitStatus: (self: Promise<T>) -> (PromiseStatus, ...(T | any)),
}

return {}

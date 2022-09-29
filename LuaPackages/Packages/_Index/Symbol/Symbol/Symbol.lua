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
--[[
	Symbols have the type 'userdata', but when printed or coerced to a string,
	the symbol will turn into the string given as its name.

	**This implementation provides only the `Symbol()` constructor and the
	global registry via `Symbol.for_`.**

	Other behaviors, including the ability to find all symbol properties on
	objects, are not implemented.
]]
export type Symbol = typeof(newproxy(true)) & { [string]: any }

return {
	new = function(name: string?): Symbol
		local self = newproxy(true) :: any

		local wrappedName = "Symbol()"
		if name then
			wrappedName = ("Symbol(%s)"):format(name)
		end

		getmetatable(self).__tostring = function()
			return wrappedName
		end

		return (self :: any) :: Symbol
	end,
}

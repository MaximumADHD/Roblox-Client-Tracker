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
-- ROBLOX NOTE:  no upstream: replaces node js writeable stream API

export type Writeable = {
	isTTY: boolean?,
	write: (self: Writeable, data: string) -> (),
}

local Writeable = {}
Writeable.__index = Writeable

function Writeable.new(options: { write: (data: string) -> () }?): Writeable
	local self = setmetatable({}, Writeable)
	self._writeFn = if options ~= nil and typeof(options.write) == "function" then options.write else print
	self.isTTY = false
	return (self :: any) :: Writeable
end

function Writeable:write(data: string)
	self._writeFn(data)
end

return {
	Writeable = Writeable,
}

--!nocheck
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
-- ROBLOX deviation: no upstream tests

return function()
	local getLocation = require(script.Parent.Parent.location).getLocation
	local Source = require(script.Parent.Parent.source).Source

	describe("Location", function()
		it("returns line and column", function()
			local body = "function ()\n" .. "    print('hi')\n" .. "end"
			local source = Source.new(body)
			expect(getLocation(source, 4)).toEqual({ line = 1, column = 4 })
		end)
	end)
end

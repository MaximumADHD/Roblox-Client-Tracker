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
return function()
	local toArrayContains = require(script.Parent.Parent.toArrayContains)

	describe("toArrayContains", function()
		it("should fail with a message printing full table values", function()
			local tbl = { { name = "a" } }
			local item = { name = "d" }
			local result = toArrayContains(tbl, item)

			expect(result.pass).to.equal(false)
		end)

		it("should pass if given value in array", function()
			local tbl = { { name = "a" }, { name = "b" }, { name = "c" } }
			local item = { name = "b" }
			local result = toArrayContains(tbl, item)

			expect(result.pass).to.equal(true)
		end)

		it("should pass when using loose equal checking", function()
			local tbl = { { name = "a" }, { name = "b", extraProp = "d" }, { name = "c" } }
			local item = { name = "b" }
			local result = toArrayContains(tbl, item, true)

			expect(result.pass).to.equal(true)
		end)
	end)
end

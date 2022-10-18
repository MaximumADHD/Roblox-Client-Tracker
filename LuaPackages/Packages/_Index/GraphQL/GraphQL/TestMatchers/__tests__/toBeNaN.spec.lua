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
	local rootWorkspace = script.Parent.Parent.Parent.Parent
	local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
	local NaN = LuauPolyfill.Number.NaN

	local toBeNaN = require(script.Parent.Parent.toBeNaN)

	describe("toBeNaN", function()
		it("should fail when passed a number", function()
			local result = toBeNaN(1)

			expect(result.pass).to.equal(false)
			expect(result.message).to.equal('expected: NaN (number), got: "1" (number) instead')
		end)

		it("should pass if passed NaN", function()
			local result = toBeNaN(NaN)

			expect(result.pass).to.equal(true)
		end)
	end)
end

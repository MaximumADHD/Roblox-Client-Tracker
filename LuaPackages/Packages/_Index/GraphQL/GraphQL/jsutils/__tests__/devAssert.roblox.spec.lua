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
	local devAssert = require(script.Parent.Parent.devAssert).devAssert

	describe("Source", function()
		it("checks reponse message when assertion is false", function()
			local myString = "a"

			expect(function()
				devAssert(myString == "b", "string must equal 'b'")
			end).to.throw("string must equal 'b'")
		end)

		it("does nothing when assertion is true", function()
			local myString = "a"

			expect(function()
				devAssert(myString == "a", "string must equal 'a'")
			end).never.to.throw()
		end)
	end)
end

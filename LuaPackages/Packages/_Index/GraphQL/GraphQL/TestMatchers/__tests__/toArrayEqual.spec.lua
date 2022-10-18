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
	local toArrayEqual = require(script.Parent.Parent.toArrayEqual)

	describe("toArrayEqual", function()
		describe("strict comparison", function()
			it("should not pass if different length", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toArrayEqual(arrA, arrB)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal("Expected array length 1 / got length 2")
			end)

			it("should not pass if items are different", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "b" } }
				local result = toArrayEqual(arrA, arrB)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal("{1}[1][name] (a) ~= {2}[1][name] (b)")
			end)

			it("should not pass if same items in different order", function()
				local arrA = { { name = "b" }, { name = "a" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toArrayEqual(arrA, arrB)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal("{1}[1][name] (b) ~= {2}[1][name] (a)")
			end)

			it("should not pass origin array has additional properties", function()
				local arrA = { { name = "a", foo = "bar" }, { name = "b", fizz = "buzz" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toArrayEqual(arrA, arrB)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal(
					"{1}[1][foo]: value of type 'string'\n{2}[1][foo]: value of type 'nil'"
				)
			end)

			it("should not pass expected array has additional properties", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "a", foo = "bar" } }
				local result = toArrayEqual(arrA, arrB)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal(
					"{1}[1][foo]: value of type 'nil'\n{2}[1][foo]: value of type 'string'"
				)
			end)
		end)

		describe("loose comparison", function()
			it("should not pass if different length", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toArrayEqual(arrA, arrB, true)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal("Expected array length 1 / got length 2")
			end)

			it("should not pass if items are different", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "b" } }
				local result = toArrayEqual(arrA, arrB, true)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal("{1}[1][name] (a) ~= {2}[1][name] (b)")
			end)

			it("should not pass if same items in different order", function()
				local arrA = { { name = "b" }, { name = "a" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toArrayEqual(arrA, arrB, true)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal("{1}[1][name] (b) ~= {2}[1][name] (a)")
			end)

			it("should pass origin array has additional properties", function()
				local arrA = { { name = "a", foo = "bar" }, { name = "b", fizz = "buzz" } }
				local arrB = { { name = "a" }, { name = "b" } }
				local result = toArrayEqual(arrA, arrB, true)

				expect(result.pass).to.equal(true)
			end)

			it("should not pass expected array has additional properties", function()
				local arrA = { { name = "a" } }
				local arrB = { { name = "a", foo = "bar" } }
				local result = toArrayEqual(arrA, arrB, true)

				expect(result.pass).to.equal(false)
				expect(result.message).to.equal(
					"{1}[1][foo]: value of type 'nil'\n{2}[1][foo]: value of type 'string'"
				)
			end)
		end)
	end)
end

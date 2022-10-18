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
	describe("Error - init", function()
		it("should contain GraphQLError table", function()
			local GraphQLError = require(script.Parent.Parent).GraphQLError
			expect(GraphQLError).to.be.a("table")
		end)

		it("should contain printError function", function()
			local printError = require(script.Parent.Parent).printError
			expect(printError).to.be.a("function")
		end)

		it("should contain syntaxError function", function()
			local syntaxError = require(script.Parent.Parent).syntaxError
			expect(syntaxError).to.be.a("function")
		end)

		it("should contain locatedError function", function()
			local locatedError = require(script.Parent.Parent).locatedError
			expect(locatedError).to.be.a("function")
		end)

		it("should contain formatError function", function()
			local formatError = require(script.Parent.Parent).formatError
			expect(formatError).to.be.a("function")
		end)
	end)
end

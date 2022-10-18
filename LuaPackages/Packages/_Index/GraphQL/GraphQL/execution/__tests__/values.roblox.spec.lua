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
	local valuesImport = require(script.Parent.Parent.values)
	local getVariableValues = valuesImport.getVariableValues
	local getArgumentValues = valuesImport.getArgumentValues
	local getDirectiveValues = valuesImport.getDirectiveValues
	describe("values", function()
		it("imports functions", function()
			expect(getVariableValues).to.be.a("function")
			expect(getArgumentValues).to.be.a("function")
			expect(getDirectiveValues).to.be.a("function")
		end)
	end)
end

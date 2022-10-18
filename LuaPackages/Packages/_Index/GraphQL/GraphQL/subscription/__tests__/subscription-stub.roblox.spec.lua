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
	local subscriptionWorkspace = script.Parent.Parent

	local subscriptionModule = require(subscriptionWorkspace)
	local subscribe = subscriptionModule.subscribe
	local createSourceEventStream = subscriptionModule.createSourceEventStream

	-- ROBLOX TODO: delete this and implement subscription properly (if its never needed)
	describe("subscription stub", function()
		it("errors on subscribe", function()
			local expect: any = expect
			expect(function()
				subscribe(nil :: any)
			end).toThrow()
		end)
		it("errors on createSourceEventStream", function()
			local expect: any = expect
			expect(function()
				createSourceEventStream(nil :: any, nil :: any)
			end).toThrow()
		end)
	end)
end

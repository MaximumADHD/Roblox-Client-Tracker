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
	local jsutils = script.Parent.Parent
	local graphql = jsutils.Parent
	local Packages = graphql.Parent
	local LuauPolyfill = require(Packages.LuauPolyfill)
	type Promise<T> = LuauPolyfill.Promise<T>
	local Promise = require(Packages.Promise)
	local promiseReduce = require(jsutils.promiseReduce).promiseReduce

	describe("promiseReduce", function()
		it("should return the initial value when the list is empty", function()
			local initialValue = {}
			local result = promiseReduce({}, function()
				error("should not be called")
			end, initialValue)
			expect(result).to.equal(initialValue)
		end)

		it("should fold the list if the reducer never returns promises", function()
			-- ROBLOX FIXME Luau: should infer `element` from T in first argument, and `acc` from U in last argument
			local sum = promiseReduce({ 1, 2, 3 }, function(acc: number, element: number)
				return acc + element
			end, 0)
			expect(sum).to.equal(6)
		end)

		it(
			"should fold the list into a promise if the reducer returns at least a promise",
			function()
				-- ROBLOX FIXME Luau: should infer `element` from T in first argument, and `acc` from U in last argument
				local sum = promiseReduce({ 1, 2, 3 }, function(acc: number, element: number)
					if element == 2 then
						return Promise.resolve(acc + element)
					else
						return acc + element
					end
				end, 0)
				expect(Promise.is(sum)).to.equal(true)
				expect((sum :: Promise<number>):getStatus()).to.equal(Promise.Status.Resolved)
				expect((sum :: Promise<number>):expect()).to.equal(6)
			end
		)

		it("should return the first rejected promise", function()
			local errorMessage = "foo"
			-- ROBLOX FIXME Luau: should infer `element` from T in first argument, and `acc` from U in last argument
			local sum = promiseReduce({ 1, 2, 3 }, function(acc: number, element: number)
				if element == 2 then
					return Promise.reject(errorMessage)
				else
					return acc + element
				end
			end, 0)
			expect(Promise.is(sum)).to.equal(true)
			local status, rejection = (sum :: Promise<number>):awaitStatus()
			expect(status).to.equal(Promise.Status.Rejected)
			expect(rejection).to.equal(errorMessage)
		end)
	end)
end

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
	local TestMatchers = script.Parent.TestMatchers
	local toEqual = require(TestMatchers.toEqual)
	local toArrayContains = require(TestMatchers.toArrayContains)
	local toHaveSameMembers = require(TestMatchers.toHaveSameMembers)
	local toArrayEqual = require(TestMatchers.toArrayEqual)
	local toObjectContain = require(TestMatchers.toObjectContain)
	local toBeOneOf = require(TestMatchers.toBeOneOf)
	local toThrow = require(TestMatchers.toThrow)
	local toBeNaN = require(TestMatchers.toBeNaN)
	local Packages = script.Parent.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect

	beforeAll(function()
		-- ROBLOX FIXME: roblox-cli has special, hard-coded types for TestEZ that break when we
		-- use custom matchers added via `expect.extend`
		local expect: any = expect
		expect.extend({
			toEqual = toEqual,
			toArrayContains = toArrayContains,
			toHaveSameMembers = toHaveSameMembers,
			toArrayEqual = toArrayEqual,
			toObjectContain = toObjectContain,
			toBeOneOf = toBeOneOf,
			toThrow = toThrow,
			toBeNaN = toBeNaN,
		})
		jestExpect.extend({
			toHaveSameMembers = toHaveSameMembers,
		})
	end)
end

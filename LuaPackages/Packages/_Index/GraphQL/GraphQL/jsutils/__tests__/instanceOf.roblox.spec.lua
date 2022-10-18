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
	local jsutils = script.Parent.Parent
	local instanceOf = require(jsutils.instanceOf)

	describe("instanceOf", function()
		type ParentClass = {
			name: string,
			message: string,
			new: (message: string) -> ParentClass,
		}
		local ParentClass = {} :: ParentClass;
		(ParentClass :: any).__index = ParentClass

		function ParentClass.new(message: string): ParentClass
			local self = {}
			self.name = "Parent"
			self.message = message

			return (setmetatable(self, ParentClass) :: any) :: ParentClass
		end

		type ChildClass = ParentClass & {}
		local ChildClass = (setmetatable({}, { __index = ParentClass }) :: any) :: ChildClass;
		(ChildClass :: any).__index = ChildClass

		function ChildClass.new(message: string): ChildClass
			local self = ParentClass.new(message)
			self.name = "Child"

			return (setmetatable(self, ChildClass) :: any) :: ChildClass
		end

		it("returns false when passed nil", function()
			expect(instanceOf(nil, ParentClass)).to.equal(false)
		end)
		it("returns false when passed empty table", function()
			expect(instanceOf({}, ParentClass)).to.equal(false)
		end)

		it("returns true when passed instance class", function()
			local myParentClass = ParentClass.new("hello")

			expect(instanceOf(myParentClass, ParentClass)).to.equal(true)
		end)

		it("returns true when checking desecdent", function()
			local myChildClass = ChildClass.new("hello")

			expect(instanceOf(myChildClass, ParentClass)).to.equal(true)
		end)
	end)
end

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
--!nonstrict
--[[
	deviation: Our constructors currently have no notion of 'super' so any
	such behavior in upstream JS must be implemented manually by setting fields

	A constructor passed to this class would typically look along the lines of:
	function(self, arg, otherArg)
		self.arg = arg
		self.otherArg = otherArg
	end

	But even something like function() end can be passed in as the constructor
	if no fields need to be set. In upstream JS, the equivalent would be
	returning an empty object from the constructor.
]]
return function(parent, childName, constructor)
	local Child = {}
	Child.__index = Child
	Child.__tostring = function(self)
		return getmetatable(parent).__tostring(self)
	end

	local mt = {}

	Child.new = function(...)
		local self = {}
		constructor(self, ...)
		return setmetatable(self, Child)
	end

	if typeof(getmetatable(parent)) == "table" and getmetatable(parent).__call then
		mt.__call = function(_, ...)
			return Child.new(...)
		end
	end

	mt.__index = parent
	mt.__tostring = function(self)
		-- Printing class name
		if self == Child then
			return tostring(childName)
		end
		return getmetatable(parent).__tostring(self)
	end

	setmetatable(Child, mt)

	return Child
end

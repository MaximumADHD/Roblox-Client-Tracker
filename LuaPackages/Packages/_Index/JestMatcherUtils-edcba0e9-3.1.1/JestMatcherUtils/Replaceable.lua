-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-matcher-utils/src/Replaceable.ts
-- /**
-- * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
-- *
-- * This source code is licensed under the MIT license found in the
-- * LICENSE file in the root directory of this source tree.
-- */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local getType = require(Packages.JestGetType).getType

type ReplaceableForEachCallBack = (any, any, any) -> nil

local Replaceable = {}

Replaceable.__index = Replaceable
function Replaceable.new(object: any)
	local self = {}
	self.object = object
	self.type = getType(object)

	if self.type ~= "table" then
		error("Type " .. self.type .. " is not supported in Replaceable!")
	end

	setmetatable(self, Replaceable)

	return self
end

function Replaceable.isReplaceable(obj1: any, obj2: any): boolean
	local obj1Type = getType(obj1)
	local obj2Type = getType(obj2)

	return obj1Type == obj2Type and obj1Type == "table"
end

function Replaceable:forEach(callback: ReplaceableForEachCallBack)
	for key, value in pairs(self.object) do
		callback(value, key, self.object)
	end
end

function Replaceable:get(key: any): any
	return self.object[key]
end

function Replaceable:set(key: any, value: any)
	self.object[key] = value
end

return Replaceable

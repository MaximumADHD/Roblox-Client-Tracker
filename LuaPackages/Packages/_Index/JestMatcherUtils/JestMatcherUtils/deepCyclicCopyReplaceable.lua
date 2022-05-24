-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-matcher-utils/src/deepCyclicCopyReplaceable.ts
-- /**
-- * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
-- *
-- * This source code is licensed under the MIT license found in the
-- * LICENSE file in the root directory of this source tree.
-- */

-- ROBLOX deviation: omitted isBuiltInObject and isMap functions because Lua only has one type, the table,
-- for structuring data

local deepCyclicCopyTable, deepCyclicCopyReplaceable

type anyTable = { [any]: any }

function deepCyclicCopyTable(tableToCopy: anyTable, cycles: anyTable)
	local newTable: anyTable = {}

	cycles[tableToCopy] = newTable

	for key, value in pairs(tableToCopy) do
		newTable[key] = deepCyclicCopyReplaceable(value, cycles)
	end

	return newTable
end

function deepCyclicCopyReplaceable(value: any, cycles: anyTable)
	if typeof(value) ~= "table" then
		return value
	elseif cycles[value] then
		return cycles[value]
	else
		local t = deepCyclicCopyTable(value, cycles)
		local mt = getmetatable(value)
		if mt and typeof(mt) == "table" then
			setmetatable(t, mt)
		end
		return t
	end
end

return function(value, cycles)
	cycles = cycles or {}
	setmetatable(cycles, { _mode = "kv" })

	return deepCyclicCopyReplaceable(value, cycles)
end

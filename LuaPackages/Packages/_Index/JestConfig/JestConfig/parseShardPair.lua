-- ROBLOX upstream: https://github.com/facebook/jest/blob/v29.1.2-1-g2662f4708e/packages/jest-config/src/parseShardPair.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Number = LuauPolyfill.Number
local Error = LuauPolyfill.Error
local String = LuauPolyfill.String
local RegExp = require(Packages.RegExp)
local exports = {}
export type ShardPair = { shardCount: number, shardIndex: number }
local function parseShardPair(pair: string): ShardPair
	local shardPair = Array.filter(
		Array.map(
			Array.filter(String.split(pair, "/"), function(d)
				return RegExp("^\\d+$"):test(d)
			end),
			function(d)
				return tonumber(d, 10)
			end
		),
		function(shard)
			return not Boolean.toJSBoolean(Number.isNaN(shard))
		end
	)
	local shardIndex, shardCount = table.unpack(shardPair, 1, 2)
	if #shardPair ~= 2 then
		error(Error.new("The shard option requires a string in the format of <n>/<m>."))
	end
	if shardIndex == 0 or shardCount == 0 then
		error(Error.new("The shard option requires 1-based values, received 0 or lower in the pair."))
	end
	if (shardIndex :: number) > (shardCount :: number) then
		error(Error.new("The shard option <n>/<m> requires <n> to be lower or equal than <m>."))
	end
	return { shardCount = shardCount :: number, shardIndex = shardIndex :: number }
end
exports.parseShardPair = parseShardPair
return exports

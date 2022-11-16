-- ROBLOX upstream: https://github.com/facebook/jest/tree/v27.4.7/packages/jest-util/src/formatTime.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

-- ROBLOX deviation START: Polyfill Math.trunc
local function mathTrunc(value: number): number
	return if value > 0 then math.floor(value) else math.ceil(value)
end
-- ROBLOX deviation END
-- ROBLOX deviation START: Polyfill String.padStart
local function stringPadStart(str: string, targetLength_: number, padString_: string?)
	local targetLength = math.max(#str, targetLength_)

	local padString = padString_ or " "
	return (padString:rep(targetLength) .. str):sub(-targetLength)
end
-- ROBLOX deviation END

local function formatTime(time: number, prefixPower_: number?, padLeftLength_: number?): string
	local prefixPower = prefixPower_ or -3
	local padLeftLength = padLeftLength_ or 0
	local prefixes = { "n", "μ", "m", "" }
	local prefixIndex = math.max(0, math.min(mathTrunc(prefixPower / 3) + #prefixes - 1, #prefixes - 1)) + 1
	return ("%s %ss"):format(stringPadStart(tostring(time), padLeftLength), prefixes[prefixIndex])
end
exports.default = formatTime
return exports

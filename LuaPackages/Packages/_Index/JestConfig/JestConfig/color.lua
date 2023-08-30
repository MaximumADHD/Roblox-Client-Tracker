-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-config/src/color.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- local createHash = require(Packages.crypto).createHash
-- ROBLOX deviation START: inline as ChalkLua doesn't export this type
-- local chalkModule = require(Packages.chalk)
type ForegroundColor =
	"black"
	| "red"
	| "green"
	| "yellow"
	| "blue"
	| "magenta"
	| "cyan"
	| "white"
	| "gray"
	| "grey"
	| "blackBright"
	| "redBright"
	| "greenBright"
	| "yellowBright"
	| "blueBright"
	| "magentaBright"
	| "cyanBright"
	| "whiteBright"
-- ROBLOX deviation END
type Color = ForegroundColor

local colors: Array<Color> = { "red", "green", "yellow", "blue", "magenta", "cyan", "white" }

local function getDisplayNameColor(seed: string?): Color
	if seed == nil then
		return "white"
	end

	-- ROBLOX deviation START: randomize color using math.random
	-- local hash = createHash("sha256")
	-- hash:update(seed)
	-- local num = hash:digest():readUInt32LE(0)
	local num = math.random(#colors)
	return colors[num]
	-- ROBLOX deviation END
end
exports.getDisplayNameColor = getDisplayNameColor

return exports

-- ROBLOX upstream: https://github.com/facebook/jest/tree/v27.4.7/packages/jest-util/src/specialChars.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

-- local UserInputService = game:GetService("UserInputService")

-- ROBLOX FIXME: make proper platform check
-- local isWindows = process.platform == "win32"
local isWindows = false -- UserInputService:GetPlatform() == 0
local ARROW = " \u{203A} "
exports.ARROW = ARROW
local ICONS = {
	failed = if isWindows then "\u{00D7}" else "\u{2715}",
	pending = "\u{25CB}",
	success = if isWindows then "\u{221A}" else "\u{2713}",
	todo = "\u{270E}",
}
exports.ICONS = ICONS
local CLEAR = if isWindows then "\x1B[2J\x1B[0f" else "\x1B[2J\x1B[3J\x1B[H"
exports.CLEAR = CLEAR
return exports

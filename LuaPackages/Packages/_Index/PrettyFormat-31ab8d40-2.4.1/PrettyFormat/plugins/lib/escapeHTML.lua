-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/pretty-format/src/plugins/lib/escapeHTML.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}
local function escapeHTML(str: string): string
	return str:gsub("<", "&lt;"):gsub(">", "&gt;")
end
exports.default = escapeHTML
return exports

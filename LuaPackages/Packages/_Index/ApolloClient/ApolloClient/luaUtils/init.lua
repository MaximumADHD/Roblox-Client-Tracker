--[[
 * Copyright (c) Roblox Corporation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
local rootWorkspace = script.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object

local makeIntervalImpl = require(script.makeIntervalImpl)

return Object.assign({
	Object = require(script.Object),
}, makeIntervalImpl(delay))

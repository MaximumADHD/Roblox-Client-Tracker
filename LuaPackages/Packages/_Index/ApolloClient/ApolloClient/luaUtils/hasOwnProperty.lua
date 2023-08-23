--[[
 * Copyright (c) Roblox Corporation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
local function hasOwnProperty(obj: { [any]: any }, prop: string | number): boolean
	return obj[prop] ~= nil
end

return hasOwnProperty

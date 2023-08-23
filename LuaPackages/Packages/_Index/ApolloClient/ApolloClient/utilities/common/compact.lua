--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/compact.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local function compact(...): any
	local result = {}
	-- ROBLOX deviation: we don't need to remove "undefined" values from objects in Lua
	--[[
         objects.forEach(obj => {
            if (!obj) return;
            Object.keys(obj).forEach(key => {
                const value = (obj as any)[key];
                if (value !== void 0) {
                    result[key] = value;
                }
            });
        });
    ]]
	return Object.assign(result, ...)
end
exports.compact = compact
return exports

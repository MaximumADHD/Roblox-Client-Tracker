--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/globals/graphql.ts
local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent

--[[
// The ordering of these imports is important, because it ensures the temporary
// process.env.NODE_ENV polyfill is defined globally (if necessary) before we
// import { isType } from 'graphql'. The instanceOf function that we really care
// about (the one that uses process.env.NODE_ENV) is not exported from the
// top-level graphql package, but isType uses instanceOf, and is exported.
]]
--[[ ROBLOX FIXME: should I import this?
   local remove = require(Packages["ts-invariant"].process).remove
]]

local isType = require(Packages.GraphQL).isType

local function removeTemporaryGlobals()
	--[[
// Calling isType here just to make sure it won't be tree-shaken away,
// provided applyFixes is called elsewhere.
]]
	isType(nil)
	-- ROBLOX deviation: imported method from ts-invariant doesn`t make much sense here because we don't have process.env available
	local function remove() end
	return remove()
end
exports.removeTemporaryGlobals = removeTemporaryGlobals
return exports

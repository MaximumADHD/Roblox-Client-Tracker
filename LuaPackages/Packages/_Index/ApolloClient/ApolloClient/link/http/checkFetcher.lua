--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/checkFetcher.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

local exports = {}

type WindowOrWorkerGlobalScope_fetch = (...any) -> ...any

local invariantModule = require(srcWorkspace.jsutils.invariant)
local InvariantError = invariantModule.InvariantError

local function checkFetcher(fetcher: WindowOrWorkerGlobalScope_fetch | nil)
	-- ROBLOX deviation: using global fetch?
	if not Boolean.toJSBoolean(fetcher) and typeof(_G.fetch) == "nil" then
		error(InvariantError.new([[

"fetch" has not been found globally and no fetcher has been configured. To fix this, install a fetch package (like https://www.npmjs.com/package/cross-fetch), instantiate the fetcher, and pass it into your HttpLink constructor. For example:

import fetch from 'cross-fetch';
import { ApolloClient, HttpLink } from '@apollo/client';
const client = new ApolloClient({
  link: new HttpLink({ uri: '/graphql', fetch })
});
    ]]))
	end
end

exports.checkFetcher = checkFetcher

return exports

-- upstream: https://github.com/facebook/jest/blob/v27.0.6/packages/jest-snapshot/src/plugins.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local jestMockSerializer = require(CurrentModule.mock_serializer)

local plugins = require(Packages.PrettyFormat).plugins
-- deviation: omitting DOMCollection, DOMElement, Immutable, ReactElement, ReactTestComponent

-- ROBLOX TODO: ADO-1182 Add more plugins here as we translate them
local PLUGINS = {
	jestMockSerializer,
	plugins.AsymmetricMatcher,
	-- ROBLOX deviation: Roblox Instance matchers
	plugins.RobloxInstance
}

local originalPLUGINS = Array.from(PLUGINS)

-- // Prepend to list so the last added is the first tested.
local function addSerializer(plugin_)
	table.insert(PLUGINS, 1, plugin_)
end

local function getSerializers()
	return PLUGINS
end

-- deviation: add resetSerializers to deal with resetting plugins since we don't
-- have any of jest's test resetting implemented
local function resetSerializers()
	PLUGINS = Array.from(originalPLUGINS)
end

return {
	addSerializer = addSerializer,
	getSerializers = getSerializers,
	resetSerializers = resetSerializers
}
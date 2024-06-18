-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-snapshot/src/plugins.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local jestMockSerializer = require(CurrentModule.mockSerializer)

local prettyFormat = require(Packages.PrettyFormat)
type PrettyFormatPlugins = prettyFormat.Plugins
local plugins = require(Packages.PrettyFormat).plugins
-- ROBLOX deviation: omitting DOMCollection, DOMElement, Immutable, ReactElement, ReactTestComponent

-- ROBLOX TODO: ADO-1182 Add more plugins here as we translate them
local PLUGINS: PrettyFormatPlugins = {
	jestMockSerializer,
	plugins.AsymmetricMatcher,
	plugins.ReactElement,
	plugins.ReactTestComponent,
	-- ROBLOX deviation: Roblox Instance matchers
	plugins.RobloxInstance,
}

-- Prepend to list so the last added is the first tested.
local function addSerializer(plugin_)
	table.insert(PLUGINS, 1, plugin_)
end

local function getSerializers()
	return PLUGINS
end

return {
	addSerializer = addSerializer,
	getSerializers = getSerializers,
}

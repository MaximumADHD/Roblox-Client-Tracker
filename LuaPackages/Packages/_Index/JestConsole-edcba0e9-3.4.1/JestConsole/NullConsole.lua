-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-console/src/NullConsole.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

local CurrentModule = script.Parent
local CustomConsole = require(CurrentModule.CustomConsole).default

export type NullConsole = {
	assert: (...any) -> (),
	debug: (...any) -> (),
	dir: (...any) -> (),
	error: (...any) -> (),
	info: (...any) -> (),
	log: (...any) -> (),
	time: (...any) -> (),
	timeEnd: (...any) -> (),
	timeLog: (...any) -> (),
	trace: () -> ...any,
	warn: (...any) -> (),
	group: (...any) -> (),
	groupCollapsed: (...any) -> (),
	groupEnd: (...any) -> (),
}

local NullConsole = setmetatable({}, { __index = CustomConsole })
NullConsole.__index = NullConsole

function NullConsole.new(...)
	local self = setmetatable(CustomConsole.new(...), NullConsole)
	return self
end

function NullConsole:assert() end
function NullConsole:debug() end
function NullConsole:dir() end
function NullConsole:error() end
function NullConsole:info() end
function NullConsole:log() end
function NullConsole:time() end
function NullConsole:timeEnd() end
function NullConsole:timeLog() end
function NullConsole:trace() end
function NullConsole:warn() end
function NullConsole:group() end
function NullConsole:groupCollapsed() end
function NullConsole:groupEnd() end

exports.default = NullConsole
return exports

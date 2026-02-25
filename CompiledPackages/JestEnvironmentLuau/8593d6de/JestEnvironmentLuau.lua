--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
--[[
	ROBLOX NOTE: no upstream
	based on: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-environment-node/src/index.ts
]]

local Packages = script.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object
local Promise = require(Packages.Promise)
type Promise<T> = LuauPolyfill.Promise<T>

type Context = Object

local JestEnvironmentModule = require(Packages.JestEnvironment)
type JestEnvironment = JestEnvironmentModule.JestEnvironment

local JestFakeTimers = require(Packages.JestFakeTimers)

local typesModule = require(Packages.JestTypes)
type Config_ProjectConfig = typesModule.Config_ProjectConfig
type Global_Global = typesModule.Global_Global

local FakeTimersModule = require(Packages.JestFakeTimers)
type FakeTimers = FakeTimersModule.FakeTimers

local jestMockModule = require(Packages.JestMock)
type ModuleMocker = jestMockModule.ModuleMocker

-- ROBLOX NOTE: redefine props and methods to have proper `self` typing
type JestEnvironmentLuau = {
	new: (config: Config_ProjectConfig) -> JestEnvironmentLuau,
	global: Global_Global,
	-- ROBLOX deviation START: no modern/legacy timers
	-- fakeTimers: LegacyFakeTimers<Timer> | nil,
	-- fakeTimersModern: ModernFakeTimers | nil,
	fakeTimers: FakeTimers | nil,
	-- ROBLOX deviation END
	moduleMocker: ModuleMocker | nil,
	getVmContext: (self: JestEnvironmentLuau) -> Context | nil,
	setup: (self: JestEnvironmentLuau) -> Promise<nil>,
	teardown: (self: JestEnvironmentLuau) -> Promise<nil>,
	context: any,
}

local JestEnvironmentLuau = {} :: JestEnvironmentLuau;
(JestEnvironmentLuau :: any).__index = JestEnvironmentLuau

function JestEnvironmentLuau.new(config: Config_ProjectConfig): JestEnvironmentLuau
	local self = setmetatable({}, JestEnvironmentLuau)

	self.context = {}
	local global = Object.assign(self.context, config.testEnvironmentOptions)
	self.global = global
	global.global = global

	self.fakeTimers = JestFakeTimers.new()

	return (self :: any) :: JestEnvironmentLuau
end

function JestEnvironmentLuau:getVmContext()
	return self.context
end

function JestEnvironmentLuau:setup()
	return Promise.resolve()
end

function JestEnvironmentLuau:teardown()
	return Promise.resolve():andThen(function()
		if self.fakeTimers ~= nil then
			self.fakeTimers:dispose()
		end
		self.context = {}
		self.fakeTimers = nil
	end)
end

return JestEnvironmentLuau

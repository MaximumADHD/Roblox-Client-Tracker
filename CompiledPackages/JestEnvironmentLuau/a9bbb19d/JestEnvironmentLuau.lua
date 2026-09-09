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
-- Based on: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-environment-node/src/index.ts

local Packages = script.Parent

local Promise = require(Packages.Promise)

local JestFakeTimers = require(Packages.JestFakeTimers)

local typesModule = require(Packages.JestTypes)
type Promise<T> = typesModule.Promise<T>
type Config_ProjectConfig = typesModule.Config_ProjectConfig
type Global_Global = typesModule.Global_Global

type FakeTimers = JestFakeTimers.FakeTimers

local jestMockModule = require(Packages.JestMock)
type ModuleMocker = jestMockModule.ModuleMocker

type JestEnvironmentLuau = {
	new: (config: Config_ProjectConfig) -> JestEnvironmentLuau,
	global: Global_Global,
	fakeTimers: FakeTimers | nil,
	moduleMocker: ModuleMocker | nil,
	getVmContext: (self: JestEnvironmentLuau) -> { [string]: any }?,
	setup: (self: JestEnvironmentLuau) -> Promise<nil>,
	teardown: (self: JestEnvironmentLuau) -> Promise<nil>,
	context: any,
}

local JestEnvironmentLuau = {} :: JestEnvironmentLuau;
(JestEnvironmentLuau :: any).__index = JestEnvironmentLuau

function JestEnvironmentLuau.new(config: Config_ProjectConfig): JestEnvironmentLuau
	local self = setmetatable({}, JestEnvironmentLuau)

	self.context = {}
	if config.testEnvironmentOptions then
		for key, value in config.testEnvironmentOptions do
			self.context[key] = value
		end
	end
	local global = self.context
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

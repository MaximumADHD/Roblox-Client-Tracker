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
--!strict
-- ROBLOX NOTE: no upstream

local CurrentModule = script
local InstanceProxy = require(CurrentModule.InstanceProxy)
local DataModelMocker = require(CurrentModule.DataModelMocker)

export type InstanceProxy<ClassType = Instance> = InstanceProxy.InstanceProxy<ClassType>
export type Spied<ClassType = Instance> = InstanceProxy.Spied<ClassType>
export type ProxyControls<ClassType = Instance> = InstanceProxy.ProxyControls<ClassType>

export type DataModelMocker = DataModelMocker.DataModelMocker

local exports = {}

exports.DataModelMocker = DataModelMocker

return exports

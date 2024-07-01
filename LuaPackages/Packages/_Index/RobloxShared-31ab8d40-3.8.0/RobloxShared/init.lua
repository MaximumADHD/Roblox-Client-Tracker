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
local CurrentModule = script

local nodeUtilsModule = require(CurrentModule.nodeUtils)
export type NodeJS_WriteStream = nodeUtilsModule.NodeJS_WriteStream
local exports = {
	dedent = require(CurrentModule.dedent).dedent,
	escapePatternCharacters = require(CurrentModule.escapePatternCharacters).escapePatternCharacters,
	ensureDirectoryExists = require(CurrentModule.ensureDirectoryExists),
	getDataModelService = require(CurrentModule.getDataModelService),
	getParent = require(CurrentModule.getParent),
	expect = require(CurrentModule.expect),
	getRelativePath = require(CurrentModule.getRelativePath),
	RobloxInstance = require(CurrentModule.RobloxInstance),
	nodeUtils = nodeUtilsModule,
	normalizePromiseError = require(CurrentModule.normalizePromiseError),
	pruneDeps = require(CurrentModule.pruneDeps),
}

local WriteableModule = require(CurrentModule.Writeable)
exports.Writeable = WriteableModule.Writeable
export type Writeable = WriteableModule.Writeable

return exports

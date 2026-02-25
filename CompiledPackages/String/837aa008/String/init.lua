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
return {
	charCodeAt = require(script.charCodeAt),
	endsWith = require(script.endsWith),
	findOr = require(script.findOr),
	includes = require(script.includes),
	indexOf = require(script.indexOf),
	lastIndexOf = require(script.lastIndexOf),
	slice = require(script.slice),
	split = require(script.split),
	startsWith = require(script.startsWith),
	substr = require(script.substr),
	trim = require(script.trim),
	trimEnd = require(script.trimEnd),
	trimStart = require(script.trimStart),
	-- aliases for trimEnd and trimStart
	trimRight = require(script.trimEnd),
	trimLeft = require(script.trimStart),
}

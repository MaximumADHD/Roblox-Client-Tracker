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
-- ROBLOX NOTE: no upstream
local srcWorkspace = script.Parent
local rootWorkspace = srcWorkspace.Parent
local Packages = rootWorkspace

local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
type Object = LuauPolyfill.Object

local function getPromiseErrorStack(error_: any)
	local currentError = error_
	while not Boolean.toJSBoolean(currentError.trace) and currentError.parent do
		currentError = currentError.parent
	end
	return currentError.trace or ""
end

local function getPromiseErrorMessage(error_: any)
	local currentError = error_
	local message = error_.error
	while not Boolean.toJSBoolean(currentError.trace) and currentError.parent do
		currentError = currentError.parent
		message = currentError.error or message
	end
	return currentError.message or message
end

return function(err: Object)
	err.message = getPromiseErrorMessage(err)
	err.stack = getPromiseErrorStack(err)
	return err
end

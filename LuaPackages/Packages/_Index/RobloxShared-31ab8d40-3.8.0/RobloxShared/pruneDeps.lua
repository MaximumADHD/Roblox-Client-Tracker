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
local function pruneDeps(str: string?): string?
	if str == nil then
		return nil
	end

	local newLines = {}
	for _, line in (str :: string):split("\n") do
		if line:find("LoadedCode.JestRoblox._Index.") then
			continue
		end
		table.insert(newLines, line)
	end
	return table.concat(newLines, "\n")
end

return pruneDeps

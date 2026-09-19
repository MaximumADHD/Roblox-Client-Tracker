-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/createDirectory.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local exports = {}

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error

-- ROBLOX deviation: using FileSystemService instead of fs
local getFileSystemService = require(CurrentModule.getFileSystemService)
local typesModule = require(Packages.JestTypes)
type Config_Path = typesModule.Config_Path

local function createDirectory(path: Config_Path): ()
	local FileSystemService = getFileSystemService()

	local ok, result, hasReturned = pcall(function()
		-- ROBLOX deviation: using FileSystemService instead of fs
		FileSystemService:CreateDirectories(path)
	end)
	if not ok then
		local e = result
		-- ROBLOX deviation START: additional error handling for AccessDenied case
		if e:find("Error%(13%): Access Denied%. Path is outside of sandbox%.") then
			error(
				Error.new(
					"Provided path is invalid: you likely need to provide a different argument to --fs.readwrite.\n"
						.. "You may need to pass in `--fs.readwrite=$PWD`"
				)
			)
		end
		-- ROBLOX deviation END

		-- ROBLOX FIXME: investigate how to catch directory exists error
		if e.code ~= "EEXIST" then
			error(e)
		end
	end
	if hasReturned then
		return result
	end
end
exports.default = createDirectory
return exports

-- ROBLOX upstream: https://github.com/luvit/luvit/blob/master/deps/path/base.lua
--[[
Copyright 2014 The Luvit Authors. All Rights Reserved.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS-IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local process = {
	env = {},
	cwd = function()
		return ""
	end,
}

export type Path = {
	initialize: (self: Path, root: string, sep: string) -> (),
	getRoot: (self: Path) -> string,
	getSep: (self: Path) -> string,
	pathsEqual: (self: Path, a: string, b: string) -> boolean,
	_splitPath: (self: Path, filename: string) -> { root: string, dir: string, basename: string | string? },
	_normalizeArray: (self: Path, parts: Array<string>, isrelative: boolean) -> (),
	_splitBySeparators: (self: Path, filepath: string) -> Array<string>,
	normalize: (self: Path, filepath: string) -> string | nil,
	_filterparts: (self: Path, parts: Array<string>) -> Array<string>,
	_rawjoin: (self: Path, parts: Array<string>) -> string,
	_filteredjoin: (self: Path, ...string) -> { joined: string, filteredparts: Array<string> },
	join: (self: Path, ...string) -> string | nil,
	resolve: (self: Path, ...string) -> string | nil,
	_commonParts: (self: Path, ...string) -> Array<string>,
	relative: (self: Path, from: string, to: string) -> string,
	dirname: (self: Path, filepath: string) -> string,
	basename: (self: Path, filepath: string, expected_ext: string) -> string | string?,
	extname: (self: Path, filepath: string) -> string | string?,
	isDriveRelative: (self: Path) -> boolean,
	isAbsolute: (self: Path, filepath: string) -> boolean,
	normalizeSeparators: (self: Path, filepath: string) -> string,
}

local Path = {}
Path.__index = Path

function Path.new(): Path
	local self = setmetatable({}, Path)
	return (self :: any) :: Path
end

function Path:initialize(root: string, sep: string)
	self.root = root
	self.sep = sep
end

function Path:getRoot()
	return self.root
end

function Path:getSep()
	return self.sep
end

function Path:pathsEqual(a: string, b: string)
	return a == b
end

-- Split a filename into [root, dir, basename]
function Path:_splitPath(filename: string)
	filename = self:normalizeSeparators(filename)
	local root = ""
	if self:isAbsolute(filename) or self:isDriveRelative(filename) then
		root = self:getRoot(filename)
		filename = filename:sub(root:len() + 1)
	end
	local trailing_slashes = filename:match("[" .. self.sep .. "]*$")
	if trailing_slashes then
		filename = filename:sub(1, -trailing_slashes:len() - 1)
	end
	local basename = filename:match("[^" .. self.sep .. "]+$") or ""
	local dir = basename and filename:sub(1, -basename:len() - 1) or filename
	return root, dir, basename
end

-- Modifies an array of path parts in place by interpreting "." and ".." segments
function Path:_normalizeArray(parts: Array<string>, isrelative: boolean)
	local skip = 0
	for i = #parts, 1, -1 do
		local part = parts[i]
		if part == "." then
			table.remove(parts, i)
		elseif part == ".." then
			table.remove(parts, i)
			skip = skip + 1
		elseif skip > 0 then
			table.remove(parts, i)
			skip = skip - 1
		end
	end
	if isrelative then
		while skip > 0 do
			table.insert(parts, 1, "..")
			skip = skip - 1
		end
	end
end

function Path:_splitBySeparators(filepath: string)
	local parts = {}
	for part in filepath:gmatch("[^" .. self.sep .. "]+") do
		parts[#parts + 1] = part
	end
	return parts
end

function Path:normalize(filepath: string)
	filepath = self:normalizeSeparators(filepath)
	local is_absolute = self:isAbsolute(filepath)
	local root = is_absolute and self:getRoot(filepath) or nil
	local trailing_slash = filepath:sub(#filepath) == self.sep

	if root then
		filepath = filepath:sub(root:len() + 1)
	end

	local parts = self:_splitBySeparators(filepath)
	self:_normalizeArray(parts, not is_absolute)
	filepath = table.concat(parts, self.sep)

	if #filepath == 0 then
		if is_absolute then
			return root
		end
		return "."
	end
	if trailing_slash then
		filepath = filepath .. self.sep
	end
	if is_absolute then
		filepath = root .. filepath
	end
	return filepath
end

function Path:_filterparts(parts: Array<string>)
	local filteredparts = {}
	-- filter out empty parts
	for i, part in ipairs(parts) do
		if part and part ~= "" then
			table.insert(filteredparts, part)
		end
	end
	for i, part in ipairs(filteredparts) do
		-- Strip leading slashes on all but first item
		if i > 1 then
			while part:sub(1, 1) == self.sep do
				part = part:sub(2)
			end
		end
		-- Strip trailing slashes on all but last item
		if i < #filteredparts then
			while part:sub(#part) == self.sep do
				part = part:sub(1, #part - 1)
			end
		end
		filteredparts[i] = part
	end
	return filteredparts
end

function Path:_rawjoin(parts: Array<string>)
	return table.concat(parts, self.sep)
end

function Path:_filteredjoin(...: string)
	local parts: Array<string> = { ... }
	for i, part in ipairs(parts) do
		parts[i] = self:normalizeSeparators(part)
	end
	local filteredparts = self:_filterparts(parts)
	local joined = self:_rawjoin(filteredparts)
	return joined, filteredparts
end

function Path:join(...: string)
	local joined = self:_filteredjoin(...)
	return self:normalize(joined)
end

-- Works backwards, joining the arguments until it resolves to an absolute path.
-- If an absolute path is not resolved, then the current working directory is
-- prepended
function Path:resolve(...: string)
	local paths: Array<string> = { ... }
	local resolvedpath = ""
	local resolveddrive = nil
	local isabsolute = false
	for i = #paths, 1, -1 do
		local path = paths[i]
		if path and path ~= "" then
			local root = resolveddrive and self:getRoot(path)
			if self:isDriveRelative(path) then
				root = root or self:getRoot(path)
				resolveddrive = resolveddrive or root
				path = path:sub(root:len() + 1)
			end
			if not root or resolveddrive:sub(1, 2) == root:sub(1, 2) then
				resolvedpath = self:join(self:normalize(path), resolvedpath)
				if self:isAbsolute(resolvedpath) then
					isabsolute = true
					break
				end
			end
		end
	end
	if not isabsolute then
		if resolveddrive then
			local drivecwd = process.env["=" .. resolveddrive]
			if drivecwd and self:pathsEqual(drivecwd:sub(1, 2), resolveddrive) then
				resolvedpath = self:join(drivecwd, resolvedpath)
			else
				resolvedpath = self:join(resolveddrive, resolvedpath)
			end
		else
			resolvedpath = self:join(process.cwd(), resolvedpath)
		end
	end

	local trailing_slashes = resolvedpath:match("[" .. self.sep .. "]*$")
	if trailing_slashes then
		resolvedpath = resolvedpath:sub(1, -trailing_slashes:len() - 1)
	end

	return resolvedpath
end

-- Returns the common parts of the given paths or {} if no
-- common parts were found.
function Path:_commonParts(...: string)
	local common_parts: Array<string> = {}
	local paths: Array<string> = { ... }
	local split_paths = {}
	for _, path in ipairs(paths) do
		table.insert(split_paths, self:_splitBySeparators(path))
	end
	for part_i = 1, #split_paths[1] do
		local test_part = split_paths[1][part_i]
		for path_i = 2, #split_paths do
			local part = split_paths[path_i][part_i]
			if not self:pathsEqual(test_part, part) then
				return common_parts
			end
		end
		table.insert(common_parts, test_part)
	end
	return common_parts
end

-- Returns the relative path from 'from' to 'to'
-- If no relative path can be solved, then 'to' is returned
function Path:relative(from: string, to: string)
	local from_root, from_dir, from_basename = self:_splitPath(from)
	local to_root, to_dir, to_basename = self:_splitPath(to)

	if not self:pathsEqual(from_root, to_root) then
		return to
	end

	local from_path, to_path = from_dir .. from_basename, to_dir .. to_basename
	local common_parts = self:_commonParts(from_path, to_path)
	local from_parts = self:_splitBySeparators(from_path)
	local to_parts = self:_splitBySeparators(to_path)

	local relative_parts = {}
	if #common_parts > 0 then
		for i = #common_parts, #from_parts - 1 do
			table.insert(relative_parts, "..")
		end
	end
	for i = #common_parts + 1, #to_parts do
		table.insert(relative_parts, to_parts[i])
	end

	return self:_rawjoin(relative_parts)
end

function Path:dirname(filepath: string)
	filepath = self:normalizeSeparators(filepath)
	if filepath:sub(filepath:len()) == self.sep then
		filepath = filepath:sub(1, -2)
	end

	local root, dir = self:_splitPath(filepath)

	if #dir > 0 then
		dir = dir:sub(1, #dir - 1)
		return root .. dir
	end
	if #root > 0 then
		return root
	end
	return "."
end

function Path:basename(filepath: string, expected_ext: string)
	local _, _, base = self:_splitPath(filepath)
	if expected_ext then
		local ext_pos = base:find(expected_ext:gsub(".", ".") .. "$")
		if ext_pos then
			base = base:sub(1, ext_pos - 1)
		end
	end
	return base
end

function Path:extname(filepath: string)
	local basename = self:basename(filepath)
	if basename == ".." then
		return ""
	else
		return basename:match(".(%.[^.]*)$") or ""
	end
end

function Path:isDriveRelative()
	return false
end

function Path:isAbsolute(filepath: string)
	return filepath:sub(1, self.root:len()) == self.root
end

function Path:normalizeSeparators(filepath: string)
	return filepath
end

return {
	Path = Path,
}

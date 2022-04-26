--[[
	The FieldWatcher class is provided with a root table using setRoot and paths to watch for
	nested changes at. It periodically polls to check if any of the values being watched have
	changed, and calls the onFieldsChange handler with a list of changed paths.
]]
local Source = script.Parent.Parent.Parent
local Packages = Source.Parent
local getChildAtKey = require(Source.RoactInspector.Utils.getChildAtKey)

local Dash = require(Packages.Dash)
local assign = Dash.assign
local class = Dash.class
local collect = Dash.collect
local copy = Dash.copy
local keys = Dash.keys
local pretty = Dash.pretty
local reduce = Dash.reduce
local shallowEqual = Dash.shallowEqual

local insert = table.insert

local POLL_DELAY = 0.5

type Array<T> = { [number]: T }
type Path = Array<number | string>

local FieldWatcher = class("FieldWatcher", function(onFieldsChanged, rootKey: string?)
	return {
		onFieldsChanged = onFieldsChanged,
		activeFields = {},
		rootKey = rootKey,
	}
end)

function FieldWatcher:_init()
	-- A periodic check for changes
	self.onPoll = function()
		if self.root and self.polling then
			self:checkFields()
			delay(POLL_DELAY, self.onPoll)
		end
	end
end

-- Start polling for changes
function FieldWatcher:monitor()
	if not self.polling then
		self.polling = true
		spawn(self.onPoll)
	end
end

-- Determine if any fields have changed
function FieldWatcher:checkFields()
	-- Collect a map of paths which have had their values changed
	local changedEntries = collect(self.activeFields, function(path: Path, value)
		local newValue = self:walk(self.root, path)
		-- Perform a one-deep comparison as any deeper changes will be monitored by a separate path
		if not shallowEqual(value, newValue) then
			return path, newValue
		end
		return nil
	end)
	-- Update the values being listened to
	assign(self.activeFields, changedEntries)
	-- Check for changes and fire the event handler
	local changedPaths = keys(changedEntries)
	if #changedPaths > 0 then
		self.onFieldsChanged(changedPaths)
	end
end

function FieldWatcher:collect(table, depth: number, path)
	if typeof(table) ~= "table" then
		return {}
	end
	local fields = collect(table, function(key, value)
		-- Permit numbers to preserve numeric ordering of numbers (rather than 1, 10, 11, 2, 3...)
		local name = typeof(key) == "number" and key or tostring(key)
		-- The path to a nested value uses number or string representations of the keys indexing
		-- into each table. While it is possible to have name conflicts between the two
		-- representations or sibling keys, they will hopefully be rare, as complex data types
		-- typically stringify to a pointer ref in Lua.
		local childPath = copy(path)
		insert(childPath, name)
		local children = typeof(value) == "table" and depth > 0 and self:collect(value, depth - 1, childPath) or {}
		return name, {
			Name = name,
			Summary = pretty(value, {depth = 2, arrayLength = true}),
			Path = childPath,
			Children = children
		}
	end)
	return fields
end

-- Access a nested child of _value_ addressed by _path_.
function FieldWatcher:walk(value: {[string]: any}, path: Path)
	-- Guard against invalid accesses resulting from stale paths or user-defined assertions.
	local ok, result = pcall(function()
		return reduce(path, function(current, key: string, index: number)
			local child = getChildAtKey(current, key)
			if child and index == 1 and self.rootKey then
				return child[self.rootKey]
			else
				return child
			end
		end, self.root)
	end)
	if not ok then
		warn(("Cannot walk path %s: %s "):format(pretty(path), result))
		result = nil
	end
	return result
end

-- Update the root table being watched, from which paths are addressed from.
function FieldWatcher:setRoot(root: {[string]: any})
	self.root = root
end

-- Clear watched paths
function FieldWatcher:clear()
	self.activeFields = {}
	self:monitor()
end

-- Add a new path to be listened to, made up of an array of keys addressing descendants.
-- If the child at the path or any of its children shallow change, an event will be fired.
function FieldWatcher:addPath(path: Path)
	local value = self:walk(self.root, path)
	-- Store a copy so mutations to the existing value don't mutate the keys we are
	-- observing, allowing the shallowEqual utility to work its magic
	self.activeFields[path] = value and copy(value) or {}
end

function FieldWatcher:destroy()
	self.root = nil
	self.polling = false
end

return FieldWatcher
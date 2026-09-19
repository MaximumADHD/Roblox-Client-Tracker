--[[
	Returns a table of unique values keyed on name for each component.
	This file also creates Symbols for each DevFramework component.

	add(key)
		Adds a value into the ComponentSymbols table for use in Stylizer.
]]

local Framework = script.Parent.Parent
local tableCache = require(Framework.Util.tableCache)

local UIFolderData = require(Framework.UI.Components.UIFolderData)

local ComponentSymbols = tableCache("ComponentSymbols")

local function createSymbolsForFolder(folder)
	for _, component in pairs(folder) do
		ComponentSymbols:add(component.name, require)
	end
end

createSymbolsForFolder(UIFolderData)

return ComponentSymbols

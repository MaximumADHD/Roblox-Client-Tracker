
local SelectionService = game:GetService("Selection")

local Plugin = script.Parent.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local isProtectedInstance = require(DraggerFramework.Utility.isProtectedInstance)

local Selection = {}
Selection.__index = Selection

function Selection.new()
	local self = setmetatable({}, Selection)
	self.SelectionChanged = SelectionService.SelectionChanged
	return self
end

--[[
	Note: The fact that the processing of hint _first_ removes and _then_ adds
	items to the selection is important, all Selection implementations should
	handle things this way.
]]
function Selection:Set(objects, hint)
	if hint then
		SelectionService:Remove(hint.Removed)
		SelectionService:Add(hint.Added)
	else
		SelectionService:Set(objects)
	end
end

function Selection:Get()
	local unsafeSelection = SelectionService:Get()
	local safeSelection = {}
	for _, unsafeInstance in ipairs(unsafeSelection) do
		if not isProtectedInstance(unsafeInstance) then
			table.insert(safeSelection, unsafeInstance)
		end
	end
	return safeSelection
end

function Selection:GetActiveInstance()
	return SelectionService.ActiveInstance
end

return Selection

local Plugin = script.Parent.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Signal = require(DraggerFramework.Utility.Signal)

local Selection = {}
Selection.__index = Selection

function Selection.new(CursorGrid)
	local self = setmetatable({_CursorGrid = CursorGrid}, Selection)
	self.SelectionChanged = Signal.new()
	return self
end

function Selection:Set(objects, hint) end

function Selection:Get()
	return {self._CursorGrid}
end

return Selection


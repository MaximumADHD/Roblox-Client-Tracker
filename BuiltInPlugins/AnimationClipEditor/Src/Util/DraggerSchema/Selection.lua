local Plugin = script.Parent.Parent.Parent.Parent
local SelectionService = game:GetService("Selection")

local Framework = require(Plugin.Packages.Framework)
local deepCopy = Framework.Util.deepCopy

local Selection = {}
Selection.__index = Selection

function Selection.new(selectionChangedSignal, setSelectedTrackInstances)
	local self = setmetatable({}, Selection)

	self.SelectionChanged = selectionChangedSignal

	self.setSelectedTrackInstances = setSelectedTrackInstances

	return self
end

function Selection:Set(objects)
	self.setSelectedTrackInstances(objects)
end

function Selection:Get()
	return self.selectedTrackInstances and deepCopy(self.selectedTrackInstances) or SelectionService:Get()
end

function Selection:GetActiveInstance()
	return nil
end

return Selection

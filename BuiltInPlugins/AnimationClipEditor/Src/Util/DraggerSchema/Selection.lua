local Plugin = script.Parent.Parent.Parent.Parent
local SelectionService = game:GetService("Selection")

local Constants = require(Plugin.Src.Util.Constants)
local Framework = require(Plugin.Packages.Framework)
local deepCopy = Framework.Util.deepCopy

local GetFFlagRevertExplorerSelection = require(Plugin.LuaFlags.GetFFlagRevertExplorerSelection)

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
	if GetFFlagRevertExplorerSelection() then
		return self.selectedTrackInstances and deepCopy(self.selectedTrackInstances) or SelectionService:Get()
	else
		local currSelection = SelectionService:Get()
		local containsNonParts = false
		for _, selectedObject in pairs(currSelection) do
			if selectedObject ~= nil and selectedObject:IsA("BasePart") == false then
				containsNonParts = true
			end
		end
		if containsNonParts then
			currSelection = {}
		end
		return self.selectedTrackInstances and deepCopy(self.selectedTrackInstances) or currSelection
	end
end

function Selection:GetActiveInstance()
	return nil
end

return Selection

local ToggleIsIKModeActive = {}
ToggleIsIKModeActive.__index = ToggleIsIKModeActive

-- static function
function ToggleIsIKModeActive:execute(Paths)
	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionToggleIsIKModeActive:new(Paths))
end

function ToggleIsIKModeActive:new(Paths)
	local self = setmetatable({}, ToggleIsIKModeActive)
	self.Paths = Paths
	self.wasIKModeActive = self.Paths.DataModelIKManipulator.IsIKModeActive
	if self.wasIKModeActive then
		self.Paths.HelperFunctionsWarningsAndPrompts:createRemoveIKPrompt(self.Paths)
	else
		self.Paths.DataModelIKManipulator:setIsIKModeActive(true)
		if not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.Paths.DataModelKeyframes.keyframeList) then
			self.Paths.HelperFunctionsWarningsAndPrompts:createApplyIKPromptForIsIKModeActive(self.Paths)
		end
	end
	return self
end

function ToggleIsIKModeActive:undo()	
self.Paths.DataModelIKManipulator:setIsIKModeActive(self.wasIKModeActive)
end

function ToggleIsIKModeActive:redo()
	self.Paths.DataModelIKManipulator:setIsIKModeActive(not self.wasIKModeActive)
end

function ToggleIsIKModeActive:getDescription()
	return "Toggle IK"
end

return ToggleIsIKModeActive
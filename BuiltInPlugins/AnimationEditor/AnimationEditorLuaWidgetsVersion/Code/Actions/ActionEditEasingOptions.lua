local FastFlags = require(script.Parent.Parent.FastFlags)

local EditEasingOptions = {}
EditEasingOptions.__index = EditEasingOptions

-- static function
local setPoseEasingOptions = nil
local firePoseChanged = nil
function EditEasingOptions:executeSingle(Paths, poses, newDirection, newStyle)
	for _, pose in ipairs(poses) do
		setPoseEasingOptions(Paths, pose, newDirection, newStyle)
	end
	firePoseChanged(Paths)
end

function EditEasingOptions:executeMultiple(Paths, poses, newDirections, newStyles)
	for i = 1, #poses do
		local direction = newDirections ~= nil and newDirections[i] or nil
		local style = newStyles ~= nil and newStyles[i] or nil
		setPoseEasingOptions(Paths, poses[i], direction, style)
	end
	firePoseChanged(Paths)
end

function EditEasingOptions:executeUndoable(Paths, poses, newDirection, newStyle)
	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionEditEasingOptions:new(Paths, newDirection, newStyle))
	EditEasingOptions:executeSingle(Paths, poses, newDirection, newStyle)
	firePoseChanged(Paths)
end

setPoseEasingOptions = function(Paths, pose, newDirection, newStyle)
	pose.EasingDirection = newDirection ~= nil and newDirection or pose.EasingDirection
	pose.EasingStyle = newStyle ~= nil and newStyle or pose.EasingStyle
end

firePoseChanged = function(Paths)
	Paths.DataModelKeyframes.PoseTransformChangedEvent:fire()
end

function EditEasingOptions:new(Paths, newDirection, newStyle)
	local self = setmetatable({}, EditEasingOptions)	 
	self.SubAction = Paths.ActionEditClip:new(Paths, {action = Paths.ActionEditClip.ActionType.editEasingOptions})
	return self
end

function EditEasingOptions:undo()
	self.SubAction:undo()	
end

function EditEasingOptions:redo()
	self.SubAction:redo()
end

function EditEasingOptions:getDescription()
	return "Edit Easing"
end

return EditEasingOptions

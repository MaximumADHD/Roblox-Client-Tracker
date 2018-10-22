local FastFlags = require(script.Parent.Parent.FastFlags)

local EditClip = {}
EditClip.__index = EditClip

EditClip.ActionType = {
	lengthChange="lengthChange", 
	editRotate="editRotate",
	editTransform="editTransform",
	editEasingOptions="editEasingOptions",
	cut="cut",
	paste="paste",
	resetKeyframe="resetKeyframe",
	deleteKeyframe="deleteKeyframe",
	deletePose="deletePose",
	createKeyframe="createKeyframe",
	keyframeMove="keyframeMove",
}

if FastFlags:isScaleKeysOn() then
	EditClip.ActionType["clipScale"]="clipScale"
end

if FastFlags:isAnimationEditorRenameKeyFrameFlagOn() then
	EditClip.ActionType["editKeyframeName"]="editKeyframeName"
end

EditClip.Description = {
	[EditClip.ActionType.lengthChange]="Edit Length",
	[EditClip.ActionType.editRotate]="Edit Rotation",
	[EditClip.ActionType.editTransform]="Edit Position",
	[EditClip.ActionType.resetKeyframe]="Reset Keyframe(s)"
}

if FastFlags:isAnimationEditorRenameKeyFrameFlagOn() then
	EditClip.Description[EditClip.ActionType.editKeyframeName]="Edit Keyframe"
end

function EditClip:execute(Paths, actionType)
	Paths.UtilityScriptUndoRedo:registerUndo(EditClip:new(Paths, {action = actionType}))
end

function EditClip:new(Paths, action)
	local self = setmetatable({}, EditClip)
	self.Paths = Paths
	action.undo = Paths.DataModelClip:createAnimationFromCurrentData(false)
	self.action = action
	return self
end

function EditClip:undo()
	local newRedo = self.Paths.DataModelClip:createAnimationFromCurrentData(false)
	self.Paths.DataModelClip:loadImportAnim(self.action.undo)
	self.action.redo = newRedo
end

function EditClip:redo()
	local newUndo = self.Paths.DataModelClip:createAnimationFromCurrentData(false)
	self.Paths.DataModelClip:loadImportAnim(self.action.redo)
	self.action.undo = newUndo
end

function EditClip:getDescription()
	local defaultDescription = "Edit Clip"
	return self.Description[self.action.action] and self.Description[self.action.action] or defaultDescription
end

return EditClip

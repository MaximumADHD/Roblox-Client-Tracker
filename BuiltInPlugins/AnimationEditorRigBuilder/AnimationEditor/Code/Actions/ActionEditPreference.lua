local EditPreference = {}
EditPreference.__index = EditPreference

function EditPreference:execute(Paths, theType, newVal)
	if newVal ~= Paths.DataModelPreferences:getValue(theType) then
		Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionEditPreference:new(Paths, theType, newVal))
	end
end

function EditPreference:executeToggle(Paths, theType)
	local oldVal = Paths.DataModelPreferences:getValue(theType)
	if 'boolean' == type(oldVal) then
		Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionEditPreference:new(Paths, theType, not oldVal))
	end
end

function EditPreference:new(Paths, theType, newVal)
	local self = setmetatable({}, EditPreference)
	self.Paths = Paths
	self.theType = theType
	self.oldValue = self.Paths.DataModelPreferences:getValue(theType)
	self.newValue = newVal
	self:redo()
	return self
end

function EditPreference:undo()
	self.Paths.DataModelPreferences:setValue(self.theType, self.oldValue)
end

function EditPreference:redo()
	self.Paths.DataModelPreferences:setValue(self.theType, self.newValue)
end

function EditPreference:getDescription()
	return "Edit Preference"
end

return EditPreference

local EditSnapIncrement = {}
EditSnapIncrement.__index = EditSnapIncrement

EditSnapIncrement.MinIncrement = 0.01

-- static function
function EditSnapIncrement:execute(Paths)
	local currentTickIncrement = Paths.DataModelPreferences:getValue(Paths.DataModelPreferences.Type.SnapIncrement)
	Paths.GUIScriptPopUpInput:show("Snap Increment (seconds)", tostring(currentTickIncrement), function(numText)
		local newIncrement = tonumber(numText)
		if nil ~= newIncrement then
			newIncrement = newIncrement >= EditSnapIncrement.MinIncrement and newIncrement or 0
			Paths.UtilityScriptUndoRedo:registerUndo(EditSnapIncrement:new(Paths, newIncrement))	
		end	
	end)
end

function EditSnapIncrement:new(Paths, newIncrements)
	local self = setmetatable({}, EditSnapIncrement)
	self.subAction = Paths.ActionEditPreference:execute(Paths, Paths.DataModelPreferences.Type.SnapIncrement, newIncrements)
	return self
end

function EditSnapIncrement:undo()
	self.subAction:undo()
end

function EditSnapIncrement:redo()
	self.subAction:redo()
end

function EditSnapIncrement:getDescription()
	return "Edit Snap Increment"
end

return EditSnapIncrement

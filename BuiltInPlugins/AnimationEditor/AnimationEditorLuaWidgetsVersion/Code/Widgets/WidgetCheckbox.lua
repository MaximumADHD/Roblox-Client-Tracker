local Checkbox = {}
Checkbox.__index = Checkbox

local function clearConnections(self)
	if self.NotCheckedConnect then
		self.NotCheckedConnect:disconnect()
		self.NotCheckedConnect = nil
	end
	
	if self.CheckedConnect then
		self.CheckedConnect:disconnect()
		self.CheckedConnect = nil
	end
end

local function changeWidgetsInternal(self, newCheckBoxFrame, checked)
	checked = checked or false
	clearConnections(self)
			
	self.checkedButton = newCheckBoxFrame.Checked -- the check box frame is expected to have an imageButton child called 'Checked'
	self.notCheckedButton = newCheckBoxFrame.NotChecked -- the check box frame is expected to have an imageButton child called 'NotChecked'
		
	self.checkedButton.Visible = checked
	self.notCheckedButton.Visible = not checked
	
	self.CheckedConnect = self.checkedButton.MouseButton1Click:connect(function()
		self:setChecked(false)
	end)

	self.NotCheckedConnect = self.notCheckedButton.MouseButton1Click:connect(function()
		self:setChecked(true)
	end)	
	
	self.CheckboxFrame = newCheckBoxFrame	
end

function Checkbox:new(Paths, checkBoxFrame, initiallyChecked)
	local self = setmetatable({}, Checkbox)
	self.locked = false
	self.ToggledEvent = Paths.UtilityScriptEvent:new()	
	changeWidgetsInternal(self, checkBoxFrame, initiallyChecked)
	return self
end

function Checkbox:changeWidgets(newCheckBoxFrame)
	if newCheckBoxFrame ~= self.CheckboxFrame then
		changeWidgetsInternal(self, newCheckBoxFrame, self:isChecked())
	end
end

function Checkbox:setChecked(check)
	if not self.locked and self:isChecked() ~= check then
		self.checkedButton.Visible = check
		self.notCheckedButton.Visible = not check		
		self.ToggledEvent:fire(check)
	end
end

function Checkbox:toggle()
	self:setChecked(not self:isChecked())
end

function Checkbox:isChecked()
	return self.checkedButton.Visible
end

function Checkbox:lock(doLock)
	self.locked = doLock
end

function Checkbox:terminate()
	clearConnections(self)
end

return Checkbox

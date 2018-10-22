local RadioButton = {}
RadioButton.__index = RadioButton

-- the checkbox plus any of the proxy widgets can be clicked to toggle the radio button
function RadioButton:new(Paths, checkbox, proxyWidgets)
	local self = setmetatable({}, RadioButton)

	self.Checkbox = checkbox
	self.ToggledEvent = Paths.UtilityScriptEvent:new()	
	
	self.Connections = Paths.UtilityScriptConnections:new(Paths)
	self.Connections:add(checkbox.ToggledEvent:connect(function(on)
		self.ToggledEvent:fire(on) 
	end))
	
	for _, widget in ipairs(proxyWidgets) do
		self.Connections:add(widget.InputBegan:connect(function(input)
			if Enum.UserInputType.MouseButton1 == input.UserInputType then
				self.Checkbox:toggle()
			end 
		end))
	end
	return self
end

function RadioButton:setChecked(check)
	self.Checkbox:setChecked(check)
end

function RadioButton:isChecked()
	return self.Checkbox:isChecked()
end

function RadioButton:lock(doLock)
	self.Checkbox:lock(doLock)
end

function RadioButton:terminate()
	self.Connections:terminate()
	self.Connections = nil
	
	self.Checkbox:terminate()
	self.Checkbox = nil
end

return RadioButton

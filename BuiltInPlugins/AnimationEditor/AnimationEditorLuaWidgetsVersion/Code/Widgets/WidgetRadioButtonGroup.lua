local RadioButtonGroup = {}
RadioButtonGroup.__index = RadioButtonGroup

function RadioButtonGroup:new(Paths, radioButtons)
	local self = setmetatable({}, RadioButtonGroup)

	self.toggledOnEvent = Paths.UtilityScriptEvent:new()
	self.connections = {}
	
	local blockCallback = false
	for _, button in ipairs(radioButtons) do
		button:lock(button:isChecked())		
		
		local onChecked = function(on)
			if not blockCallback then							
				if on then
					button:lock(true)
					for _, otherButton in ipairs(radioButtons) do
						if button ~= otherButton then
							otherButton:lock(false)
							
							blockCallback = true -- stops setChecked() from coming into this function again
							otherButton:setChecked(false)
							blockCallback = false
						end
					end
					self.toggledOnEvent:fire(button)
				end
			end
		end
		
		button.ToggledEvent:connect(onChecked)		
		table.insert(self.connections, {theButton=button, callback=onChecked})	
	end

	return self
end

function RadioButtonGroup:check(button)
	if not button:isChecked() then
		button:setChecked(true)
	end
end

function RadioButtonGroup:terminate()
	for _, connect in ipairs(self.connections) do
		connect.theButton.ToggledEvent:disconnect(connect.callback)
		connect.theButton:terminate()
	end
	self.connections = {}
end

return RadioButtonGroup
--!strict
local function validateInputReceived(instance: GuiObject, simulateInput: () -> ()): boolean
	local connections, didReceiveInput = {}, false
	if instance:IsA("GuiButton") then
		-- The typical case is a button: we can listen to the `Activated` signal
		-- to match the way that most GuiButton behavior is implemented
		table.insert(
			connections,
			instance.Activated:Connect(function(inputObject: InputObject)
				if inputObject.UserInputState ~= Enum.UserInputState.Cancel then
					didReceiveInput = true
				end
			end)
		)
	elseif instance:IsA("TextBox") and not instance:IsFocused() then
		-- If the instance is an unfocused TextBox and we're clicking on it,
		-- we're probably trying to simulate a user clicking to focus on it
		table.insert(
			connections,
			instance.Focused:Connect(function()
				didReceiveInput = true
			end)
		)
	else
		-- For any other
		local clickStarted = false
		table.insert(
			connections,
			instance.InputBegan:Connect(function(inputObject: InputObject)
				if inputObject.UserInputState ~= Enum.UserInputState.Cancel then
					clickStarted = true
				end
			end)
		)
		table.insert(
			connections,
			instance.InputEnded:Connect(function(inputObject: InputObject)
				if inputObject.UserInputState ~= Enum.UserInputState.Cancel then
					if clickStarted then
						didReceiveInput = true
					end
				end
			end)
		)
	end

	simulateInput()

	for _, connection in connections do
		connection:Disconnect()
	end
	return didReceiveInput
end

return validateInputReceived

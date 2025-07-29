# signals-roblox

## Usage

### createRBXEventSignal
This function create a signal based on the given RBXScriptSignal.
```luau
...

local createRBXEventSignal = ...

...

local UserInputService = game:GetService("UserInputService")
local getWasMouseButtonInput, connection = createRBXEventSignal(UserInputService.InputBegan, function(input, _gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		return true
	end
	return false
end)

local dispose = Signals.createEffect(function()
	local wasMouseInput = getWasMouseButtonInput(false)
	if wasMouseInput then
		print("Mouse input detected")
	else
		print("No mouse input detected")
	end
end)

...

dispose()
connection:Disconnect()
```

local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local React = require(Packages.React)
local UserInputService = game:GetService("UserInputService")

local useEffect = React.useEffect
local useState = React.useState

return function()
	local keyboardHeight, setKeyboardHeight = useState(0)

	useEffect(function()
		local keyboardVisibleConn = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardVisible")
			:Connect(function()
				setKeyboardHeight(
					UserInputService.OnScreenKeyboardVisible and UserInputService.OnScreenKeyboardSize.Y or 0
				)
			end)
		return function()
			keyboardVisibleConn:Disconnect()
		end
	end, {})

	return keyboardHeight
end

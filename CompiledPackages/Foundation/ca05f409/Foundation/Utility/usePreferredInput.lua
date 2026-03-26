local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local UserInputService = require(Foundation.Utility.Wrappers.Services).UserInputService

local function usePreferredInput(): Enum.PreferredInput
	local preferredInput, setPreferredInput = React.useState(UserInputService.PreferredInput)

	React.useEffect(function()
		local preferredInputChangedSignal = UserInputService:GetPropertyChangedSignal("PreferredInput")
			:Connect(function()
				setPreferredInput(UserInputService.PreferredInput)
			end)

		setPreferredInput(UserInputService.PreferredInput)

		return function()
			if preferredInputChangedSignal then
				preferredInputChangedSignal:Disconnect()
			end
		end
	end, {})

	return preferredInput
end

return usePreferredInput

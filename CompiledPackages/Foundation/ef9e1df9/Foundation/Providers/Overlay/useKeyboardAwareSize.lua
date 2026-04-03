local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Wrappers = require(Foundation.Utility.Wrappers)

local GuiService = Wrappers.Services.GuiService
local UserInputService = Wrappers.Services.UserInputService

local React = require(Packages.React)

local function useKeyboardAwareSize(overlay: GuiBase2d?)
	local safeAreaSize, setSafeAreaSize = React.useBinding(UDim2.fromScale(1, 1))

	React.useLayoutEffect(function()
		if not overlay then
			return
		end

		local function updateSafeAreaSize()
			if not UserInputService.OnScreenKeyboardVisible then
				setSafeAreaSize(UDim2.fromScale(1, 1))
				return
			end

			local tlInset = GuiService:GetGuiInset()
			local keyboardPositionY = UserInputService.OnScreenKeyboardPosition.Y - tlInset.Y

			local screenSize = overlay.AbsoluteSize
			local screenPosition = overlay.AbsolutePosition

			local bottomY = screenPosition.Y + screenSize.Y
			local yAdjustment = bottomY - keyboardPositionY

			setSafeAreaSize(safeAreaSize:getValue() - UDim2.fromOffset(0, yAdjustment))
		end

		updateSafeAreaSize()

		local onScreenKeyboardVisible = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardVisible")
			:Connect(updateSafeAreaSize)
		local onScreenKeyboardPosition = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardPosition")
			:Connect(updateSafeAreaSize)

		return function()
			onScreenKeyboardVisible:Disconnect()
			onScreenKeyboardPosition:Disconnect()
		end
	end, { overlay })

	return safeAreaSize
end

return useKeyboardAwareSize

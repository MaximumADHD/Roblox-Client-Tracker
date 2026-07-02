local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Wrappers = require(Foundation.Utility.Wrappers)

local GuiService = Wrappers.Services.GuiService
local UserInputService = Wrappers.Services.UserInputService

local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)

local function useKeyboardAwareSize(screen: GuiBase2d?)
	local safeAreaSize, setSafeAreaSize = React.useBinding(UDim2.fromScale(1, 1))

	React.useLayoutEffect(function()
		if not screen then
			return
		end

		local function updateSafeAreaSize()
			if not UserInputService.OnScreenKeyboardVisible then
				setSafeAreaSize(UDim2.fromScale(1, 1))
				return
			end

			local tlInset = GuiService:GetGuiInset()
			local keyboardPositionY = UserInputService.OnScreenKeyboardPosition.Y - tlInset.Y

			local screenSize = screen.AbsoluteSize
			local screenPosition = screen.AbsolutePosition

			local bottomY = screenPosition.Y + screenSize.Y
			local yAdjustment = bottomY - keyboardPositionY

			if Flags.FoundationOverlayKeyboardAwarenessHardened then
				local newSafeAreaSize = UDim2.new(1, 0, 1, -yAdjustment)
				-- Bindings do not check for equality, so we should check the value explicitly
				if safeAreaSize:getValue() ~= newSafeAreaSize then
					setSafeAreaSize(newSafeAreaSize)
				end
			else
				setSafeAreaSize(safeAreaSize:getValue() - UDim2.fromOffset(0, yAdjustment))
			end
		end

		updateSafeAreaSize()

		local onScreenKeyboardVisible = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardVisible")
			:Connect(updateSafeAreaSize)
		local onScreenKeyboardPosition = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardPosition")
			:Connect(updateSafeAreaSize)
		local onScreenAbsoluteSize
		if Flags.FoundationOverlayKeyboardAwarenessHardened then
			onScreenAbsoluteSize = screen:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateSafeAreaSize)
		end

		return function()
			onScreenKeyboardVisible:Disconnect()
			onScreenKeyboardPosition:Disconnect()
			if Flags.FoundationOverlayKeyboardAwarenessHardened then
				onScreenAbsoluteSize:Disconnect()
			end
		end
	end, { screen })

	return safeAreaSize
end

return useKeyboardAwareSize

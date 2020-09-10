--!strict
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

--[[
	The CoreInterface will be used for any focus trees mounted under the
	`CoreGui` service in the DataModel.
]]
local CoreInterface = {}

function CoreInterface.getGamepadConnected(gamepadNum)
	return UserInputService:GetGamepadConnected(gamepadNum)
end

function CoreInterface.getGamepadState(gamepadNum)
	return UserInputService:GetGamepadState(gamepadNum)
end

function CoreInterface.getNavigationGamepads()
	return UserInputService:GetNavigationGamepads()
end

function CoreInterface.getSelection()
	return GuiService.SelectedCoreObject
end

function CoreInterface.setSelection(selectionTarget)
	GuiService.SelectedCoreObject = selectionTarget
end

function CoreInterface.subscribeToSelectionChanged(callback)
	return GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(callback)
end

function CoreInterface.subscribeToRenderStepped(callback)
	return RunService.RenderStepped:Connect(callback)
end

function CoreInterface.subscribeToGamepadConnected(callback)
	return UserInputService.GamepadConnected:Connect(callback)
end

function CoreInterface.subscribeToGamepadDisconnected(callback)
	return UserInputService.GamepadDisconnected:Connect(callback)
end

function CoreInterface.subscribeToInputBegan(callback)
	return UserInputService.InputBegan:Connect(callback)
end

function CoreInterface.subscribeToInputEnded(callback)
	return UserInputService.InputEnded:Connect(callback)
end

--[[
	The PlayerGuiInterface will be used for focus trees mounted anywhere under a
	`PlayerGui` instance
]]
local PlayerGuiInterface = {}

function PlayerGuiInterface.getSelection()
	return GuiService.SelectedObject
end

function PlayerGuiInterface.setSelection(selectionTarget)
	GuiService.SelectedObject = selectionTarget
end

function PlayerGuiInterface.subscribeToSelectionChanged(callback)
	return GuiService:GetPropertyChangedSignal("SelectedObject"):Connect(callback)
end

-- These functions aren't distinct from their core counterparts, but are still
-- very useful to mock. For the PlayerGuiInterface, we simply reuse the same
-- function as the CoreInterface
PlayerGuiInterface.getGamepadConnected = CoreInterface.getGamepadConnected
PlayerGuiInterface.getGamepadState = CoreInterface.getGamepadState
PlayerGuiInterface.getNavigationGamepads = CoreInterface.getNavigationGamepads
PlayerGuiInterface.subscribeToRenderStepped = CoreInterface.subscribeToRenderStepped
PlayerGuiInterface.subscribeToGamepadConnected = CoreInterface.subscribeToGamepadConnected
PlayerGuiInterface.subscribeToGamepadDisconnected = CoreInterface.subscribeToGamepadDisconnected
PlayerGuiInterface.subscribeToInputBegan = CoreInterface.subscribeToInputBegan
PlayerGuiInterface.subscribeToInputEnded = CoreInterface.subscribeToInputEnded

return function(instance)
	if instance:IsDescendantOf(CoreGui) then
		return CoreInterface
	else
		local playerGui = instance:FindFirstAncestorWhichIsA("PlayerGui")
		if playerGui == nil then
			error("Gamepad navigation not supported. Must be a child of CoreGui or a PlayerGui")
		end

		return PlayerGuiInterface
	end
end
--!strict
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local types = require(script.Parent.types)
type EngineInterface = types.EngineInterface

local canAccessCore, coreSignal = pcall(function()
	return GuiService:GetPropertyChangedSignal("SelectedCoreObject")
end)

local throwOnConnect = (
	{
		Connect = function()
			error("Could not access SelectedCoreObject signal; you may not have the correct permissions")
		end,
	} :: any
) :: RBXScriptSignal

local CoreInterface: EngineInterface = {
	getSelection = function()
		return GuiService.SelectedCoreObject
	end,
	setSelection = function(guiObject)
		if guiObject and not guiObject.Selectable then
			GuiService:Select(guiObject)
		else
			GuiService.SelectedCoreObject = guiObject
		end
	end,
	SelectionChanged = if canAccessCore then coreSignal else throwOnConnect,
	InputBegan = UserInputService.InputBegan,
	InputChanged = UserInputService.InputChanged,
	InputEnded = UserInputService.InputEnded,
	LastInputTypeChanged = UserInputService.LastInputTypeChanged,
}

local PlayerGuiInterface: EngineInterface = {
	getSelection = function()
		return GuiService.SelectedObject
	end,
	setSelection = function(guiObject)
		if guiObject and not guiObject.Selectable then
			GuiService:Select(guiObject)
		else
			GuiService.SelectedObject = guiObject
		end
	end,
	SelectionChanged = GuiService:GetPropertyChangedSignal("SelectedObject"),
	InputBegan = UserInputService.InputBegan,
	InputChanged = UserInputService.InputChanged,
	InputEnded = UserInputService.InputEnded,
	LastInputTypeChanged = UserInputService.LastInputTypeChanged,
}

return {
	CoreGui = CoreInterface,
	PlayerGui = PlayerGuiInterface,
}

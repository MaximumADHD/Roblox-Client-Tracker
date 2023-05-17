--!strict
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local Packages = script.Parent.Parent
local Utils = require(Packages.Utils)

local warn = Utils.mockableWarn

local types = require(script.Parent.types)
type EngineInterface = types.EngineInterface

local canAccessCore, coreSignal = pcall(function()
	return GuiService:GetPropertyChangedSignal("SelectedCoreObject")
end)

local canAccessCoreGui, CoreGui = pcall(function()
	return game:GetService("CoreGui")
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
		if _G.__DEV__ and canAccessCoreGui then
			if guiObject ~= nil and not guiObject:IsDescendantOf(CoreGui) then
				warn(
					string.format(
						"Attempting to focus non-CoreGui descendant '%s' from a CoreGui FocusNavigationService "
							.. "instance. Consider creating this FocusNavigationService with "
							.. "`FocusNavigation.EnginInterface.PlayerGui` instead",
						guiObject:GetFullName()
					)
				)
			end
		end
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
		if _G.__DEV__ and canAccessCoreGui then
			if guiObject ~= nil and guiObject:IsDescendantOf(CoreGui) then
				warn(
					string.format(
						"Attempting to focus CoreGui descendant '%s' from a non-CoreGui FocusNavigationService instance."
							.. "Consider creating this FocusNavigationService with "
							.. "`FocusNavigation.EnginInterface.CoreGui` instead",
						guiObject:GetFullName()
					)
				)
			end
		end
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

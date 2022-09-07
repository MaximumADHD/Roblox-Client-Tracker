--!nonstrict
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local function EnableKeyboardNavigation(actionName, inputState, inputObject)
	-- Only care about input began
	if inputState ~= Enum.UserInputState.Begin then
		return Enum.ContextActionResult.Pass
	end

	-- The selected object is already active, disable
	if GuiService.SelectedObject then
		GuiService.SelectedObject = nil
		return Enum.ContextActionResult.Sink
	end

	GuiService:Select(PlayerGui)
	return Enum.ContextActionResult.Sink
end

local KeyboardUINavigation = {}
KeyboardUINavigation.__index = KeyboardUINavigation
function KeyboardUINavigation.new()
	local self = setmetatable({}, KeyboardUINavigation)
	ContextActionService:BindCoreAction("EnableKeyboardUINavigation", EnableKeyboardNavigation, false, Enum.KeyCode.BackSlash)
	return self
end
return KeyboardUINavigation.new()

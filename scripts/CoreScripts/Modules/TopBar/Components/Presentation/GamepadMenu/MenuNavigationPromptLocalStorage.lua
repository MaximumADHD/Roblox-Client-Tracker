--!strict
local AppStorageService = game:GetService("AppStorageService")

local function getShouldShowMenuNavigationPrompt()
	local ok, shouldShowMenuNavigationPrompt = pcall(function()
		return AppStorageService:GetItem("GamepadMenuVirtualCursorPromptShown") == "false"
	end)

	if not ok then
		return false
	end
	return shouldShowMenuNavigationPrompt
end

local function setMenuNavigationPromptShown()
	pcall(function()
		AppStorageService:SetItem("GamepadMenuVirtualCursorPromptShown", "true")
	end)
end

return {
	getShouldShowMenuNavigationPrompt = getShouldShowMenuNavigationPrompt,
	setMenuNavigationPromptShown = setMenuNavigationPromptShown,
}

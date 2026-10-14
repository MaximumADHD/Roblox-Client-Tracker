local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local ChromeFocusUtils = ChromePackage.FocusUtils

local InputType = require(CorePackages.Workspace.Packages.InputType)
local getInputGroup = InputType.getInputGroup
local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatFocusNavigationStore = ExpChat.Stores.GetFocusNavigationStore(false)

local ChatSelector = require(RobloxGui.Modules.ChatSelector)

type IntegrationId = ChromePackage.IntegrationId

local function isUsingGamepad()
	-- APPEXP-2014: Todo refactor once Responsive LastInput can be used in any context
	return getInputGroup(UserInputService:GetLastInputType()) == InputType.InputTypeConstants.Gamepad
end

return function(id: IntegrationId)
	if ChatSelector:GetVisibility() and isUsingGamepad() then
		ChromeFocusUtils.FocusOffChrome(function()
			ExpChatFocusNavigationStore.focusChatInputBar()
		end)
	end
end

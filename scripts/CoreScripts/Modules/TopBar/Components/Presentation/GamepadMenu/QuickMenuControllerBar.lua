--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local LocalizationService = game:GetService("LocalizationService")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)

local Constants = require(RobloxGui.Modules.InGameMenuConstants)
local ControllerBar = UIBlox.App.Bar.ControllerBar

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector

local localizedHints = {
	back = "CoreScripts.TopBar.Back",
	leave = "CoreScripts.TopBar.Leave",
	respawn = "CoreScripts.TopBar.Respawn",
	showChat = "CoreScripts.TopBar.ShowChat",
	hideChat = "CoreScripts.TopBar.HideChat",
}

local function QuickMenuControllerBar(props)
	local locales = Localization.new(LocalizationService.RobloxLocaleId)

	-- This is the base set of right-side hints, we will add a chat option if the chat menu is visible
	local rightHints = {
		{
			text = locales:Format(localizedHints.respawn),
			keyCode = Enum.KeyCode.ButtonY,
		},
		{
			text = locales:Format(localizedHints.leave),
			keyCode = Enum.KeyCode.ButtonX,
		},
	}

	-- We only want to show the show/hide chat hint if the chat menu is visible
	if props.chatMenuEnabled then
		local selectChatVisibility = React.useCallback(function(state: any)
			return state.chat.visible
		end)

		local isChatVisible = useSelector(selectChatVisibility)

		local toggleChatHint = if isChatVisible then localizedHints.hideChat else localizedHints.showChat

		-- Prepend show/hide chat hint to the start of the table
		table.insert(rightHints, 1, {
			text = locales:Format(toggleChatHint),
			keyCode = Enum.KeyCode.ButtonR1,
		})
	end

	return React.createElement(Roact.Portal, {
		target = CoreGui,
	}, {
		QuickMenuControllerBar = React.createElement("ScreenGui", {
			DisplayOrder = Constants.DisplayOrder.ControllerBar,
		}, {
			ControllerBar = React.createElement(ControllerBar, {
				leftHint = {
					text = locales:Format(localizedHints.back),
					keyCode = Enum.KeyCode.ButtonB,
				},
				rightHints = rightHints,
			}),
		}),
	})
end

return QuickMenuControllerBar

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local GamepadService = game:GetService("GamepadService")
local GameSettings = UserSettings().GameSettings

local Chrome = script:FindFirstAncestor("Chrome")
local Root = script:FindFirstAncestor("ChromeShared")
local FocusSelectExpChat = require(Root.Utility.FocusSelectExpChat)
local ChromeService = require(Root.Service)
local GuiService = game:GetService("GuiService")
local Constants = require(Root.Unibar.Constants)
local RespawnUtils = require(Chrome.Integrations.RespawnUtils)
local ChromeFocusUtils = require(CorePackages.Workspace.Packages.Chrome).FocusUtils

local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatFocusNavigationStore = ExpChat.Stores.GetFocusNavigationStore(false)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagChromeShortcutAddRespawnLeaveToIEM = SharedFlags.FFlagChromeShortcutAddRespawnLeaveToIEM
local FFlagChromeShortcutRemoveLeaveOnRespawnPage = SharedFlags.FFlagChromeShortcutRemoveLeaveOnRespawnPage
local FFlagChromeShortcutRemoveRespawnOnLeavePage = SharedFlags.FFlagChromeShortcutRemoveRespawnOnLeavePage
local FFlagConsoleChatUseChromeFocusUtils = SharedFlags.FFlagConsoleChatUseChromeFocusUtils
local FFlagChromeShortcutChatOpenKeyboard = SharedFlags.FFlagChromeShortcutChatOpenKeyboard
local FFlagAddSwitchTabHintsToIEM = SharedFlags.FFlagAddSwitchTabHintsToIEM

local ChromeFlags = Chrome.Flags
local FFlagRespawnChromeShortcutTelemetry = require(ChromeFlags.FFlagRespawnChromeShortcutTelemetry)
local FFlagLeaveActionChromeShortcutTelemetry = require(ChromeFlags.FFlagLeaveActionChromeShortcutTelemetry)
local FFlagLeaveChromeShortcutTelemetry = require(ChromeFlags.FFlagLeaveChromeShortcutTelemetry)
local FFlagRespawnActionChromeShortcutTelemetry = require(ChromeFlags.FFlagRespawnActionChromeShortcutTelemetry)
local ChromeSharedFlags = require(Root.Flags)
local FFlagRemoveLeaveShortcutFromLeaveConfirm = ChromeSharedFlags.FFlagRemoveLeaveShortcutFromLeaveConfirm
local FFlagRemoveRespawnShortcutFromRespawnConfirmation =
	ChromeSharedFlags.FFlagRemoveRespawnShortcutFromRespawnConfirmation

local ChatSelector = if FFlagEnableConsoleExpControls then require(RobloxGui.Modules.ChatSelector) else nil :: never
local leaveGame = require(RobloxGui.Modules.Settings.leaveGame)

local FFlagShowUnibarOnVirtualCursor = SharedFlags.FFlagShowUnibarOnVirtualCursor

local leaveActionProps = {
	keyCode = Enum.KeyCode.ButtonX,
	activated = function()
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		local LeavePage = SettingsHub.Instance.LeaveGamePage
		local function switchToLeavePage()
			local payload = {
				used_shortcut = true,
			}
			SettingsHub.Instance:SwitchToPage(LeavePage, true, nil, nil, nil, payload)
		end

		if SettingsHub:GetVisibility() then
			if SettingsHub.Instance.Pages.CurrentPage == LeavePage then
				if FFlagLeaveActionChromeShortcutTelemetry then
					leaveGame(true, {
						telemetryFields = {
							used_shortcut = true,
						},
					})
				else
					leaveGame(true)
				end
			else
				if FFlagLeaveChromeShortcutTelemetry then
					switchToLeavePage()
				else
					SettingsHub:SwitchToPage(LeavePage, true)
				end
			end
		else
			if FFlagConsoleChatUseChromeFocusUtils and ExpChatFocusNavigationStore.getChatInputBarFocused(false) then
				ExpChatFocusNavigationStore.unfocusChatInputBar()
			end

			if FFlagRespawnChromeShortcutTelemetry then
				SettingsHub:SetVisibility(true)
				switchToLeavePage()
			else
				SettingsHub:SetVisibility(true, false, LeavePage)
			end
		end
		return
	end,
}

local repawnActionProps = {
	keyCode = Enum.KeyCode.ButtonY,
	integration = "respawn",
	activated = function()
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		if
			SettingsHub:GetVisibility()
			and SettingsHub.Instance.Pages.CurrentPage == SettingsHub.Instance.ResetCharacterPage
		then
			if FFlagRespawnActionChromeShortcutTelemetry then
				SettingsHub.Instance.ResetCharacterPage.ResetFunction({
					resetTelemetryFields = {
						used_shortcut = true,
					},
				})
			else
				SettingsHub.Instance.ResetCharacterPage.ResetFunction()
			end
		else
			if FFlagConsoleChatUseChromeFocusUtils and ExpChatFocusNavigationStore.getChatInputBarFocused(false) then
				ExpChatFocusNavigationStore.unfocusChatInputBar()
			end

			if FFlagRespawnChromeShortcutTelemetry then
				RespawnUtils.respawnPage({
					usedShortcut = true,
				})
			else
				ChromeService:activate("respawn")
			end
		end
		return
	end,
}

local function activateBack(): Enum.ContextActionResult?
	local isMenuIconSelected = FFlagEnableConsoleExpControls and ChromeFocusUtils.MenuIconSelectedSignal:get()
	local inFocusNav = (not FFlagConsoleChatUseChromeFocusUtils or ChromeService:inFocusNav():get())
	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
	if SettingsHub:GetVisibility() then
		SettingsHub.Instance:PopMenu(false, true)
		if not SettingsHub:GetVisibility() then
			ChromeService:selectMenuIcon()
		end
		return Enum.ContextActionResult.Sink
	elseif inFocusNav or isMenuIconSelected then
		local subMenuId = ChromeService:currentSubMenu():get()
		if subMenuId then
			ChromeService:toggleSubMenu(subMenuId)
			ChromeService:setSelected(subMenuId)
		else
			ChromeService:disableFocusNav()
			ChromeService:setShortcutBar(nil)
			GuiService.SelectedCoreObject = nil
			if FFlagEnableConsoleExpControls then
				ChromeFocusUtils.MenuIconSelectedSignal:set(false)
			end
		end
		return Enum.ContextActionResult.Sink
	elseif FFlagConsoleChatUseChromeFocusUtils and ExpChatFocusNavigationStore.getChatInputBarFocused(false) then
		ChromeFocusUtils.FocusOnChrome(function()
			ExpChatFocusNavigationStore.unfocusChatInputBar()
		end, "chat")
		return Enum.ContextActionResult.Sink
	end
	return
end

function registerShortcuts()
	ChromeService:registerShortcut({
		id = "leave",
		label = "CoreScripts.TopBar.Leave",
		keyCode = leaveActionProps.keyCode,
		integration = nil,
		actionName = "UnibarGamepadLeaveGame",
		activated = leaveActionProps.activated,
	})

	ChromeService:registerShortcut({
		id = "respawn",
		label = "CoreScripts.InGameMenu.QuickActions.Respawn",
		keyCode = repawnActionProps.keyCode,
		integration = repawnActionProps.integration,
		actionName = "UnibarGamepadRespawn",
		activated = repawnActionProps.activated,
	})

	if FFlagChromeShortcutAddRespawnLeaveToIEM then
		ChromeService:registerShortcut({
			id = "leave_in_experience_menu",
			label = nil,
			keyCode = leaveActionProps.keyCode,
			integration = nil,
			actionName = "IEMGamepadLeaveGame",
			activated = leaveActionProps.activated,
		})

		ChromeService:registerShortcut({
			id = "respawn_in_experience_menu",
			label = nil,
			keyCode = repawnActionProps.keyCode,
			integration = repawnActionProps.integration,
			actionName = "IEMGamepadRespawn",
			activated = repawnActionProps.activated,
		})
	end

	ChromeService:registerShortcut({
		id = "chat",
		label = "CoreScripts.TopBar.Chat",
		keyCode = if FFlagChromeShortcutChatOpenKeyboard then Enum.KeyCode.ButtonL2 else Enum.KeyCode.ButtonR1,
		integration = "chat",
		actionName = "UnibarGamepadChat",
		activated = if FFlagEnableConsoleExpControls
			then function()
				local chatVisible = ChatSelector:GetVisibility()
				if FFlagChromeShortcutChatOpenKeyboard then
					if
						FFlagConsoleChatUseChromeFocusUtils
						and ExpChatFocusNavigationStore.getChatInputBarFocused(false)
					then
						ChromeFocusUtils.FocusOnChrome(function()
							ExpChatFocusNavigationStore.unfocusChatInputBar()
						end, "chat")
						ChatSelector:SetVisible(false)
						GameSettings.ChatVisible = false
					else
						ChatSelector:SetVisible(true)
						GameSettings.ChatVisible = true
						ChatSelector:FocusChatBar()
						FocusSelectExpChat("chat")
					end
				else
					ChatSelector:SetVisible(not chatVisible)
					if not chatVisible then
						FocusSelectExpChat("chat")
					elseif
						FFlagConsoleChatUseChromeFocusUtils
						and ExpChatFocusNavigationStore.getChatInputBarFocused(false)
					then
						ChromeFocusUtils.FocusOnChrome(function()
							ExpChatFocusNavigationStore.unfocusChatInputBar()
						end, "chat")
					end
				end
				return
			end
			else nil,
	})

	ChromeService:registerShortcut({
		id = "tiltMenu",
		label = "CoreScripts.TopBar.Menu",
		keyCode = Enum.KeyCode.ButtonR2,
		integration = nil,
		actionName = "UnibarGamepadMenu",
		activated = function()
			local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
			if SettingsHub:GetVisibility() then
				SettingsHub:SetVisibility(false)
			else
				if
					FFlagConsoleChatUseChromeFocusUtils and ExpChatFocusNavigationStore.getChatInputBarFocused(false)
				then
					ExpChatFocusNavigationStore.unfocusChatInputBar()
				end
				SettingsHub:SetVisibility(true)
			end
			return
		end,
	})

	ChromeService:registerShortcut({
		id = "back",
		label = "CoreScripts.TopBar.Back",
		keyCode = Enum.KeyCode.ButtonB,
		displayPriority = if FFlagEnableConsoleExpControls then -10 else nil,
		integration = nil,
		actionName = "UnibarGamepadBack",
		activated = activateBack,
	})

	if FFlagRemoveLeaveShortcutFromLeaveConfirm or FFlagRemoveRespawnShortcutFromRespawnConfirmation then
		ChromeService:registerShortcut({
			id = "back-invisible",
			label = nil,
			keyCode = Enum.KeyCode.ButtonB,
			actionName = "UnibarGamepadBackInvisible",
			activated = activateBack,
		})
	end

	ChromeService:registerShortcut({
		id = "close",
		-- non-visible shortcut
		label = nil,
		keyCode = Enum.KeyCode.ButtonStart,
		actionName = "UnibarGamepadClose",
		activated = function()
			local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
			SettingsHub:SetVisibility(false)
			ChromeService:disableFocusNav()
			ChromeService:setShortcutBar(nil)
			GuiService.SelectedCoreObject = nil
			return
		end,
	})

	ChromeService:registerShortcut({
		id = "virtualCursor",
		-- non-visible shortcut
		label = nil,
		keyCode = Enum.KeyCode.ButtonSelect,
		actionName = "VirtualCursorShortcut",
		activated = function()
			ChromeService:disableFocusNav()
			ChromeService:setShortcutBar(nil)
			GuiService.SelectedCoreObject = nil
			GamepadService.GamepadCursorEnabled = true
			return
		end,
	})

	ChromeService:registerShortcut({
		id = "tiltMenuPreviousTab",
		label = "CoreScripts.InGameMenu.Controls.PreviousTab",
		keyCode = Enum.KeyCode.ButtonL1,
		integration = nil,
		actionName = nil,
		-- tab movement is handled in SettingsHub
		activated = nil,
	})

	ChromeService:registerShortcut({
		id = "tiltMenuNextTab",
		label = "CoreScripts.InGameMenu.Controls.NextTab",
		keyCode = Enum.KeyCode.ButtonR1,
		integration = nil,
		actionName = nil,
		-- tab movement is handled in SettingsHub
		activated = nil,
	})
end

function configureShortcutBars()
	ChromeService:configureShortcutBar(
		Constants.UNIBAR_SHORTCUTBAR_ID,
		if FFlagShowUnibarOnVirtualCursor
			then { "leave", "respawn", "chat", "tiltMenu", "back", "virtualCursor" }
			else { "leave", "respawn", "chat", "tiltMenu", "back" }
	)

	ChromeService:configureShortcutBar(
		Constants.TILTMENU_SHORTCUTBAR_ID,
		if FFlagAddSwitchTabHintsToIEM
			then {
				"leave_in_experience_menu",
				"respawn_in_experience_menu",
				"back-invisible",
				"close",
			}
			elseif FFlagChromeShortcutAddRespawnLeaveToIEM then {
				"leave_in_experience_menu",
				"respawn_in_experience_menu",
				"tiltMenuPreviousTab",
				"tiltMenuNextTab",
				"back",
				"close",
			}
			else { "tiltMenuPreviousTab", "tiltMenuNextTab", "back", "close" }
	)

	-- in the future, some kind of availability system for shortcuts would probably be cleaner
	if not FFlagChromeShortcutRemoveRespawnOnLeavePage or not FFlagChromeShortcutRemoveLeaveOnRespawnPage then
		ChromeService:configureShortcutBar(
			Constants.TILTMENU_DIALOG_SHORTCUTBAR_ID,
			{ "leave", "respawn", "back", "close" }
		)
	end

	if FFlagRemoveLeaveShortcutFromLeaveConfirm then
		ChromeService:configureShortcutBar(
			Constants.TILTMENU_LEAVE_DIALOG_SHORTCUTBAR_ID,
			{ "back-invisible", "close" }
		)
	elseif FFlagChromeShortcutRemoveRespawnOnLeavePage then
		ChromeService:configureShortcutBar(Constants.TILTMENU_LEAVE_DIALOG_SHORTCUTBAR_ID, { "leave", "back", "close" })
	end

	if FFlagRemoveRespawnShortcutFromRespawnConfirmation then
		ChromeService:configureShortcutBar(
			Constants.TILTMENU_RESPAWN_DIALOG_SHORTCUTBAR_ID,
			{ "back-invisible", "close" }
		)
	elseif FFlagChromeShortcutRemoveLeaveOnRespawnPage then
		ChromeService:configureShortcutBar(
			Constants.TILTMENU_RESPAWN_DIALOG_SHORTCUTBAR_ID,
			{ "respawn", "back", "close" }
		)
	end
end

return function()
	registerShortcuts()
	configureShortcutBars()
end

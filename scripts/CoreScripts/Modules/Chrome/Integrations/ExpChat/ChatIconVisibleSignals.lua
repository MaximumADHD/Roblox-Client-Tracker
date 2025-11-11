local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local Signals = require(Packages.Signals)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagExpChatGuacChatDisabledReason = SharedFlags.GetFFlagExpChatGuacChatDisabledReason
local FFlagExpChatWindowSyncUnibar = SharedFlags.FFlagExpChatWindowSyncUnibar
local FFlagEnableAEGIS2CommsFAEUpsell = SharedFlags.FFlagEnableAEGIS2CommsFAEUpsell

local Chrome = script.Parent.Parent.Parent
local FFlagRemoveLegacyChatConsoleCheck = require(Chrome.Flags.FFlagRemoveLegacyChatConsoleCheck)
local FFlagExpChatOnShowIconChatAvailabilityStatus =
	game:DefineFastFlag("ExpChatOnShowIconChatAvailabilityStatus", false)
local GetChatStatusStore
if FFlagExpChatOnShowIconChatAvailabilityStatus then
	local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
	GetChatStatusStore = ExpChat.Stores.GetChatStatusStore
end

local UniversalAppPolicy
if GetFFlagExpChatGuacChatDisabledReason() then
	UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
end

local function new(chatStatusStore: any?)
	local getIsCoreGuiEnabled, setCoreGuiEnabled = Signals.createSignal(true)
	local getLocalUserCanChat, setLocalUserCanChat = Signals.createSignal(false)
	local getChatActiveCalledByDeveloper, setChatActiveCalledByDeveloper = Signals.createSignal(false)
	local getVisibleViaChatSelector, setVisibleViaChatSelector = Signals.createSignal(false)
	local getForceDisableForConsoleUsecase, setForceDisableForConsoleUsecase = Signals.createSignal(false)
	local getGameSettingsChatVisible, setGameSettingsChatVisible
	if FFlagExpChatWindowSyncUnibar then
		getGameSettingsChatVisible, setGameSettingsChatVisible = Signals.createSignal(false)
	end

	local isChatDisabledRegionLocked = false
	if GetFFlagExpChatGuacChatDisabledReason() and UniversalAppPolicy then
		isChatDisabledRegionLocked = UniversalAppPolicy.getAppFeaturePolicies().getExperienceChatAvailability()
			== "regionLocked"
	end

	local AegisIsEnabled = FFlagEnableAEGIS2CommsFAEUpsell and FFlagExpChatOnShowIconChatAvailabilityStatus

	local getIsChatIconVisible = Signals.createComputed(function(scope)
		-- APPEXP-2427: We can remove this console edge case once legacy chat is fully deprecated
		if not FFlagRemoveLegacyChatConsoleCheck and getForceDisableForConsoleUsecase(scope) then
			return false
		elseif not getIsCoreGuiEnabled(scope) then
			return false
		elseif not AegisIsEnabled and getLocalUserCanChat(scope) then
			return true
		-- Edge case: We never want to show chat without the unibar button. This can happen if the developer
		-- uses SetCore("ChatActive") to toggle chat visibility.
		elseif not FFlagExpChatWindowSyncUnibar and getVisibleViaChatSelector(scope) then
			return true
		-- Edge case: developer can reveal chat via SetCore("ChatActive") even if privacy settings are off
		elseif not FFlagExpChatWindowSyncUnibar and getChatActiveCalledByDeveloper(scope) then
			return true
		elseif FFlagExpChatWindowSyncUnibar and getGameSettingsChatVisible(scope) then
			return true
		end

		if AegisIsEnabled then
			local chatPrivacyStatus = chatStatusStore.getChatStatus(scope)
			if chatPrivacyStatus ~= "NoOne" then
				return true
			end
		end

		if GetFFlagExpChatGuacChatDisabledReason() and isChatDisabledRegionLocked then
			return true
		else
			return false
		end
	end)

	local getIsChatWindowVisible
	if FFlagExpChatWindowSyncUnibar then
		getIsChatWindowVisible = Signals.createComputed(function(scope)
			if getIsChatIconVisible(scope) then
				if getGameSettingsChatVisible(scope) then
					return true
				end
			end

			return false
		end)
	end

	return {
		getIsChatIconVisible = getIsChatIconVisible,
		getIsChatWindowVisible = getIsChatWindowVisible,
		setCoreGuiEnabled = setCoreGuiEnabled,
		setLocalUserChat = setLocalUserCanChat,
		setChatActiveCalledByDeveloper = setChatActiveCalledByDeveloper,
		setVisibleViaChatSelector = setVisibleViaChatSelector,
		setForceDisableForConsoleUsecase = if FFlagRemoveLegacyChatConsoleCheck
			then (function() end) :: never
			else setForceDisableForConsoleUsecase,
		setGameSettingsChatVisible = setGameSettingsChatVisible,
	}
end

return {
	new = new,
	default = new(if FFlagExpChatOnShowIconChatAvailabilityStatus then GetChatStatusStore(false) else nil),
}

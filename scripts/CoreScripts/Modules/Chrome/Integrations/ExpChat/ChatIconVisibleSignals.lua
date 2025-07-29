local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local Signals = require(Packages.Signals)

local function new()
	local getIsCoreGuiEnabled, setCoreGuiEnabled = Signals.createSignal(true)
	local getLocalUserCanChat, setLocalUserCanChat = Signals.createSignal(false)
	local getChatActiveCalledByDeveloper, setChatActiveCalledByDeveloper = Signals.createSignal(false)
	local getVisibleViaChatSelector, setVisibleViaChatSelector = Signals.createSignal(false)
	local getForceDisableForConsoleUsecase, setForceDisableForConsoleUsecase = Signals.createSignal(false)

	local getIsChatIconVisible = Signals.createComputed(function(scope)
		-- APPEXP-2427: We can remove this console edge case once legacy chat is fully deprecated
		if getForceDisableForConsoleUsecase(scope) then
			return false
		elseif not getIsCoreGuiEnabled(scope) then
			return false
		elseif getLocalUserCanChat(scope) then
			return true
		-- Edge case: We never want to show chat without the unibar button. This can happen if the developer
		-- uses SetCore("ChatActive") to toggle chat visibility.
		elseif getVisibleViaChatSelector(scope) then
			return true
		-- Edge case: developer can reveal chat via SetCore("ChatActive") even if privacy settings are off
		elseif getChatActiveCalledByDeveloper(scope) then
			return true
		end

		return false
	end)

	return {
		getIsChatIconVisible = getIsChatIconVisible,
		setCoreGuiEnabled = setCoreGuiEnabled,
		setLocalUserChat = setLocalUserCanChat,
		setChatActiveCalledByDeveloper = setChatActiveCalledByDeveloper,
		setVisibleViaChatSelector = setVisibleViaChatSelector,
		setForceDisableForConsoleUsecase = setForceDisableForConsoleUsecase,
	}
end

return {
	new = new,
	default = new(),
}

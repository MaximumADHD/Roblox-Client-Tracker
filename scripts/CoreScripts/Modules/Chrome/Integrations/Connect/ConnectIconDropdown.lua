local CorePackages = game:GetService("CorePackages")
local Chrome = script:FindFirstAncestor("Chrome")

local ChromeService = require(Chrome.Service)
local GetFFlagAppChatAddConnectUnibarForActiveSquad =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatAddConnectUnibarForActiveSquad
local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal

local registerConnectIntegration = require(script.Parent.registerConnectIntegration)
local isConnectDropdownEnabled = require(script.Parent.isConnectDropdownEnabled)
local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled
local FFlagAppChatConnectIconDropdownAlwaysAvailable =
	game:DefineFastFlag("AppChatConnectIconDropdownAlwaysAvailable", false)
-- "Connect" icon and option are used to open AppChat (InExperienceAppChat)
-- It will also serve as an entry point for Party

local integration = nil
if isConnectDropdownEnabled() then
	integration = registerConnectIntegration("connect_dropdown", ChromeService.AvailabilitySignal.Available)

	if
		not FFlagAppChatConnectIconDropdownAlwaysAvailable
		and GetFFlagAppChatAddConnectUnibarForActiveSquad()
		and GetFFlagIsSquadEnabled()
	then
		-- active squad initial value
		local hasActiveSquad = InExperienceAppChatModal.default.currentSquadId ~= ""
		if hasActiveSquad then
			integration.availability:unavailable()
		end

		InExperienceAppChatModal.default.currentSquadIdSignal.Event:Connect(function(currentSquadId)
			if currentSquadId == "" then
				integration.availability:available()
			else
				integration.availability:unavailable()
			end
		end)
	end
end

return integration

local CorePackages = game:GetService("CorePackages")
local Chrome = script:FindFirstAncestor("Chrome")

local ChromeService = require(Chrome.Service)

local GetFFlagAppChatAddConnectUnibarForActiveSquad =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAppChatAddConnectUnibarForActiveSquad
local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal

local registerConnectIntegration = require(script.Parent.registerConnectIntegration)
local isConnectUnibarEnabled = require(script.Parent.isConnectUnibarEnabled)
local isConnectDropdownEnabled = require(script.Parent.isConnectDropdownEnabled)

local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled

-- "Connect_Unibar" icon and option are used to open AppChat (InExperienceAppChat)
-- It will also serve as an entry point for Party

local integration = nil
if isConnectUnibarEnabled() then
	-- Note: when connect_unibar is added, there are 2 scenarios
	-- s1, AppChat launches unibar entrypoint: no need to hide and show connect_unibar,
	--   it will be initialAvailability will be pinned, no-opt here
	-- s2, AppChat launches dropdown entrypoint: need to hide and show connect_unibar
	--   see logic below

	local currentIntegrationSoleyForParty = GetFFlagAppChatAddConnectUnibarForActiveSquad()
		and GetFFlagIsSquadEnabled()
		and isConnectDropdownEnabled()
	integration = registerConnectIntegration(
		"connect_unibar",
		if currentIntegrationSoleyForParty
			then ChromeService.AvailabilitySignal.Unavailable
			else ChromeService.AvailabilitySignal.Pinned
	)

	-- s2
	if currentIntegrationSoleyForParty then
		-- active squad initial value
		local hasActiveSquad = InExperienceAppChatModal.default.currentSquadId ~= ""
		if hasActiveSquad then
			integration.availability:pinned()
		end

		InExperienceAppChatModal.default.currentSquadIdSignal.Event:Connect(function(currentSquadId)
			if currentSquadId == "" then
				integration.availability:unavailable()
			else
				integration.availability:pinned()
			end
		end)
	end
end

return integration

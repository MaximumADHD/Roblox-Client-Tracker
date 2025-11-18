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
local FFlagIsSquadEnabledAMP = require(CorePackages.Workspace.Packages.SharedFlags).FFlagIsSquadEnabledAMP

-- "Connect_Unibar" icon and option are used to open AppChat (InExperienceAppChat)
-- It will also serve as an entry point for Party
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local PolicyProvider = require(CorePackages.Packages.PolicyProvider)

local impl = if FFlagIsSquadEnabledAMP
	then PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
	else nil

local function canAccessParty()
	return UniversalAppPolicy.getAppFeaturePolicies().getCanAccessParty()
end

local function shouldEnableIntegrationForParty(): boolean
	return GetFFlagAppChatAddConnectUnibarForActiveSquad() and canAccessParty() and isConnectDropdownEnabled()
end

local integration = nil
local squadSignalDisconnect: (() -> ())? = nil

-- combine s1 and s2 logic into one function
local function updateConnectIntegration(currentIntegrationSoleyForParty)
	-- if connect unibar has not been registered yet, register the integration and show it if party and connect dropdown is enabled
	if not integration then
		integration = registerConnectIntegration(
			"connect_unibar",
			if currentIntegrationSoleyForParty
				then ChromeService.AvailabilitySignal.Pinned
				else ChromeService.AvailabilitySignal.Unavailable
		)
	end
	-- s2
	-- hide connect_unibar if party and connect dropdown is not enabled
	if not currentIntegrationSoleyForParty then
		integration.availability:unavailable()
		-- detach any prior squad signal listener so it can't re-pin later
		if squadSignalDisconnect then
			squadSignalDisconnect()
			squadSignalDisconnect = nil
		end
	else
		local hasActiveSquad = InExperienceAppChatModal.default.currentSquadId ~= ""
		-- pin/re-pin connect_unibar if there is an active squad when party and connect dropdown is enabled
		if hasActiveSquad then
			integration.availability:pinned()
		end

		-- attach listener to update availability based on active squad
		if not squadSignalDisconnect then
			local conn = InExperienceAppChatModal.default.currentSquadIdSignal.Event:Connect(function(currentSquadId)
				if currentSquadId == "" then
					integration.availability:unavailable()
				else
					integration.availability:pinned()
				end
			end)
			squadSignalDisconnect = function()
				conn:Disconnect()
			end
		end
	end
end

local function handlePolicyUpdate()
	updateConnectIntegration(shouldEnableIntegrationForParty())
end

if isConnectUnibarEnabled() then
	if FFlagIsSquadEnabledAMP then
		handlePolicyUpdate()
		impl.onPolicyChanged(handlePolicyUpdate)
	else
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
end

return integration

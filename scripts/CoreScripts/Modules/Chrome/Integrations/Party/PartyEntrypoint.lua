local CorePackages = game:GetService("CorePackages")
local Chrome = script:FindFirstAncestor("Chrome")

local InExperienceAppChatModal = require(CorePackages.Workspace.Packages.AppChat.InExperienceAppChatModal)
local PolicyProvider = require(CorePackages.Packages.PolicyProvider)
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)

local registerPartyIntegration = require(script.Parent.registerPartyIntegration)

local ChromeService = require(Chrome.Service)
local isConnectUnibarEnabled = require(Chrome.Integrations.Connect.isConnectUnibarEnabled)
local isConnectDropdownEnabled = require(Chrome.Integrations.Connect.isConnectDropdownEnabled)

local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled

local impl = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")

local function canAccessParty()
	return UniversalAppPolicy.getAppFeaturePolicies().getCanAccessParty()
end

local function shouldEnableIntegrationForParty(): boolean
	return GetFFlagIsSquadEnabled() and canAccessParty() and isConnectDropdownEnabled()
end

local integration = nil
local squadSignalDisconnect: (() -> ())? = nil

local function updatePartyIntegration(currentIntegrationSoleyForParty)
	if not integration then
		integration = registerPartyIntegration(
			"party_entrypoint",
			if currentIntegrationSoleyForParty
				then ChromeService.AvailabilitySignal.Pinned
				else ChromeService.AvailabilitySignal.Unavailable
		)
	end

	if not currentIntegrationSoleyForParty then
		integration.availability:unavailable()
		-- detach any prior squad signal listener so it can't re-pin later
		if squadSignalDisconnect then
			squadSignalDisconnect()
			squadSignalDisconnect = nil
		end
	else
		local hasActiveSquad = InExperienceAppChatModal.default.currentSquadId ~= ""
		-- pin/re-pin party_entrypoint if there is an active squad when party is enabled
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
	updatePartyIntegration(shouldEnableIntegrationForParty())
end

if isConnectUnibarEnabled() then
	handlePolicyUpdate()
	impl.onPolicyChanged(handlePolicyUpdate)
end

return integration

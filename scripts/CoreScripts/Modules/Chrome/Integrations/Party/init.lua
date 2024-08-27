local CorePackages = game:GetService("CorePackages")
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local GetFFlagEnablePartyIconInChrome =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnablePartyIconInChrome

local ChromeService = require(script.Parent.Parent.Service)
local PartyIcon = require(script.PartyIcon)
local Constants = require(script.Constants)

local observeCurrentPartyId = CrossExperienceVoice.Utils.observeCurrentPartyId

local integration = ChromeService:register({
	id = Constants.INTEGRATION_ID,
	label = "CoreScripts.TopBar.Party",
	activated = function()
		-- Open/close squad sheet
	end,
	components = {
		Icon = function()
			return PartyIcon()
		end,
	},
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
})

if GetFFlagEnablePartyIconInChrome() then
	observeCurrentPartyId(function(currentPartyId)
		if currentPartyId == "" then
			integration.availability:unavailable()
		else
			integration.availability:pinned()
		end
	end)
end

return integration

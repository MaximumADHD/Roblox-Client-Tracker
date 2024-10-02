local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local CrossExperienceVoice = require(CorePackages.Workspace.Packages.CrossExperienceVoice)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)

local dependencyArray = RoactUtils.Hooks.dependencyArray

local ChromeEnabled = require(script.Parent.Parent.Parent.Enabled)
local ChromeService = if ChromeEnabled() then require(script.Parent.Parent.Parent.Service) else nil
local Constants = require(script.Parent.Constants)
local useIsVoiceConnected = CrossExperienceVoice.Hooks.useIsVoiceConnected

local function PartyMicBinder()
	local isVoiceConnected = useIsVoiceConnected()
	local integration = React.useMemo(function()
		if ChromeService then
			return ChromeService:integrations()[Constants.TOGGLE_MIC_INTEGRATION_ID] :: any
		end
		return nil
	end, {})

	React.useEffect(function()
		if integration then
			if isVoiceConnected then
				integration.availability:pinned()
			else
				integration.availability:unavailable()
			end
		end
	end, dependencyArray(isVoiceConnected, integration))

	return nil
end

return PartyMicBinder

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local RoactAppExperiment = require(Packages.RoactAppExperiment)

local useIsLocalUserSoothSayer = require(Packages.RobloxAppHooks).useIsLocalUserSoothSayer
local useUserExperiment = RoactAppExperiment.useUserExperiment

local getFStringProfileQRCodeEnable3DAvatarExperimentKey =
	require(ProfileQRCode.Flags.getFStringProfileQRCodeEnable3DAvatarExperimentKey)
local getFStringProfileQRCodeLayer = require(ProfileQRCode.Flags.getFStringProfileQRCodeLayer)

local isExperimentEnabled = function(layers)
	local profileQRCodeFriendRequestAlertsLayer: any = layers[getFStringProfileQRCodeLayer()] or {}

	return profileQRCodeFriendRequestAlertsLayer[getFStringProfileQRCodeEnable3DAvatarExperimentKey()]
end

-- TODO SACQ-556 add tests
return {
	isExperimentEnabled = isExperimentEnabled,
	useIsExperimentEnabled = function(config: { enableExposureEvent: boolean? }?)
		local isLocalUserSoothSayer = useIsLocalUserSoothSayer()
		local enableExposureEvent = if config then config.enableExposureEvent else nil
		if isLocalUserSoothSayer then
			enableExposureEvent = false
		end

		local isProfile3DAvatarEnabled =
			useUserExperiment({ getFStringProfileQRCodeLayer() }, isExperimentEnabled, enableExposureEvent)

		return isLocalUserSoothSayer or isProfile3DAvatarEnabled
	end,
}

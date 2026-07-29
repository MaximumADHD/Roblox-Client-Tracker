local CorePackages = game:GetService("CorePackages")

local SignalsReact = require(CorePackages.Packages.SignalsReact)

local getPlaytestModeStore = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon.GetPlaytestModeStore)

local function useIsPlaytestMode(): boolean
	local playtestModeStore = getPlaytestModeStore(false)

	return SignalsReact.useSignalState(playtestModeStore.getIsPlaytestMode)
end

return useIsPlaytestMode

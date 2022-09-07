local makeUseExperiment = require(script.Parent.makeUseExperiment)

export type MapLayers<T...> = makeUseExperiment.MapLayers<T...>
type UseExperimentHook = makeUseExperiment.UseExperimentHook

local useBrowserTrackerExperiment: UseExperimentHook = makeUseExperiment(
	"OnBrowserTrackerLayerLoadingStatusChanged",
	"GetBrowserTrackerLayerLoadingStatus",
	"GetBrowserTrackerLayerVariables",
	"LogBrowserTrackerLayerExposure",
	"GetBrowserTrackerStatusForLayer"
)

--[=[
	A hook to access IXP browser-tracker layers.

	It should typically be used by creating a custom hook for the IXP test
	in question. For example:

	```lua
	local function useSignUpIXPTests()
		return useBrowserTrackerExperiment({
			AppBtidLayers.SignupLayer,
		}, function(layerVariables)
			local signupLayerVariables = layerVariables[AppBtidLayers.SignupLayer] or {}
			return {
				useVerifiedSignupPage = signupLayerVariables.contactMethodRequired,
				useRetypePasswordAtSignup = signupLayerVariables.ShowRetypePassword,
				arePasswordFieldsPlaintext = signupLayerVariables.ArePasswordFieldsPlaintext,
			}
		end)
	end
	```

	@within RoactAppExperiment
	@function useBrowserTrackerExperiment
]=]
return function<T...>(layerNames: { string }, mapLayers: MapLayers<T...>, recordExposureOnMount: boolean?): T...
	return useBrowserTrackerExperiment(layerNames, mapLayers, recordExposureOnMount)
end

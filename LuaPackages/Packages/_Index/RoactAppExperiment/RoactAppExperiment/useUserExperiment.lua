local makeUseExperiment = require(script.Parent.makeUseExperiment)

export type MapLayers<T...> = makeUseExperiment.MapLayers<T...>
type UseExperimentHook = makeUseExperiment.UseExperimentHook

local useUserExperiment: UseExperimentHook = makeUseExperiment(
	"OnUserLayerLoadingStatusChanged",
	"GetUserLayerLoadingStatus",
	"GetUserLayerVariables",
	"LogUserLayerExposure",
	"GetUserStatusForLayer"
)

--[=[
	A hook to access IXP user layers.

	It should typically be used by creating a custom hook for the IXP test
	in question. For example:

	```lua
	local function useAddFriendsPageEnabled()
		return useUserExperiment({
			AppUserLayers.SocialFriendsLayer,
		}, function(layerVariables)
			local socialFriendsLayer = layerVariables[AppUserLayers.SocialFriendsLayer] or {}
			return getFFlagAddFriendsExperimentEnabled()
				and socialFriendsLayer.show_lua_add_friends_page == "True"
		end)
	end
	```

	@within RoactAppExperiment
	@function useUserExperiment
]=]
return function<T...>(layerNames: { string }, mapLayers: MapLayers<T...>, recordExposureOnMount: boolean?): T...
	return useUserExperiment(layerNames, mapLayers, recordExposureOnMount)
end

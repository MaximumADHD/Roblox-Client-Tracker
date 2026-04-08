local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local AssetService = game:GetService("AssetService")

local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local CreationFlowMusicInfoRetrieved = require(MomentsCreationFlow.Actions.CreationFlowMusicInfoRetrieved)

local useDispatch = MomentsCommon.Hooks.useDispatch
local useSelector = MomentsCommon.Hooks.useSelector

local Constants = require(MomentsCreationFlow.Constants)

type Music = MomentsCommon.Music

return function(musicAssetId: number?): Music?
	local dispatch = useDispatch()

	local musicInfoFromStore = useSelector(function(state)
		return state[Constants.RoduxKey].Music[musicAssetId]
	end)

	React.useEffect(function()
		if not musicInfoFromStore and musicAssetId then
			task.spawn(function()
				local asyncMusicInfo = AssetService:GetAudioMetadataAsync({ musicAssetId })[1]

				dispatch(CreationFlowMusicInfoRetrieved({ [musicAssetId] = asyncMusicInfo }))
			end)
		end
	end, { musicAssetId, musicInfoFromStore, dispatch })

	return musicInfoFromStore
end

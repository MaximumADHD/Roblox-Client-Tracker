local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)

local enableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).enableAudioImport
local enableVideoImport = require(Plugin.Src.Util.AssetManagerUtilities).enableVideoImport

local GetAssetResponse = require(Plugin.Src.Thunks.GetAssetResponse)

local Screens = require(Plugin.Src.Util.Screens)

local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")

return function(apiImpl, path, page, state)
	local fetchedAssets = {}
	fetchedAssets.assets = {}
	local fetchedIndex = 1
	local fetchedLinkedScripts = false

	local function request(page)
		local isImage = path == Screens.IMAGES.Path
		local isMesh = path == Screens.MESHES.Path
		local isScript = path == Screens.SCRIPTS.Path
		local isAudio = enableAudioImport() and path == Screens.AUDIO.Path
		local isVideo = enableVideoImport() and path == Screens.VIDEO.Path
		local isModel = FFlagAssetManagerEnableModelAssets and path == Screens.MODELS.Path

		local aliases = {
			["Images/"] = isImage,
			["Meshes/"] = isMesh,
			["Scripts/"] = isScript,
			["Audio/"] = isAudio,
			["Video/"] = isVideo,
			["Models/"] = isModel,
		}

		if isImage or isMesh or isScript or isAudio or isModel then
			return apiImpl.API.Universes.getAliases(game.GameId, page):makeRequest()
				:andThen(GetAssetResponse(fetchedAssets, path, state, page, aliases))
				:andThen(function(assets, index, hasLinkedScripts, finalPage)
					-- The pageNumbe is set to nil upon reaching the FinalPage
					fetchedAssets = assets
					fetchedIndex = index
					fetchedLinkedScripts = hasLinkedScripts or fetchedLinkedScripts

					if not finalPage then
						return(request(page + 1))
					else
						return fetchedAssets, fetchedIndex, fetchedLinkedScripts
					end
				end)
		end
	end

	return request(page)
end
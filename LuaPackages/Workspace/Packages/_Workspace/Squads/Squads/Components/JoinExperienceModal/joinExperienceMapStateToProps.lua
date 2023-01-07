local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)

local SocialLibraries = dependencies.SocialLibraries
local Url = dependencies.Url

local getDeepValue = SocialLibraries.Dictionary.getDeepValue

local IMAGE_ASSET_TYPE = 1
local DEFAULT_THUMBNAIL_WIDTH = 640
local DEFAULT_THUMBNAIL_HEIGHT = 360

local mapStateToProps = function(state, props)
	local universeId: string = props.universeId
	local experienceName: string =
		getDeepValue(state, string.format("SocialModalsSquads.Games.byGameId.%s.name", universeId))
	local experienceRootPlaceId: string =
		getDeepValue(state, string.format("SocialModalsSquads.Games.byGameId.%s.rootPlaceId", universeId))
	local experienceServerSize: number =
		getDeepValue(state, string.format("SocialModalsSquads.Games.byGameId.%s.maxPlayers", universeId))
	local experienceMedia = getDeepValue(state, string.format("SocialModalsSquads.Games.mediaByGameId.%s", universeId))

	local experienceImageId = nil
	if experienceMedia ~= nil then
		for _, media in ipairs(experienceMedia) do
			if media.assetTypeId == IMAGE_ASSET_TYPE then
				-- Find the first image.
				experienceImageId = "http://www.roblox.com/asset/?id=" .. tostring(media.imageId)
				break
			end
		end

		if experienceImageId == nil then
			-- Fallback to a default image id.
			experienceImageId = Url:getPlaceDefaultThumbnailUrl(
				experienceRootPlaceId,
				DEFAULT_THUMBNAIL_WIDTH,
				DEFAULT_THUMBNAIL_HEIGHT
			)
		end
	end

	return {
		experienceName = experienceName,
		experienceImageId = experienceImageId,
		experienceServerSize = experienceServerSize,
		screenSize = state.ScreenSize :: Vector2,
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps

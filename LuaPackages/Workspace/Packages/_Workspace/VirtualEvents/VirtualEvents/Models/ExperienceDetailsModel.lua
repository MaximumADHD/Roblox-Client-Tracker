--[[
	Model for the payload returned from:
	https://games.roblox.com/docs#!/Games/get_v1_games
]]

export type Response = {
	id: number,
	rootPlaceId: number,
	name: string,
	description: string,
	sourceName: string,
	sourceDescription: string,
	creator: {
		id: number,
		name: string,
		type: string,
		isRNVAccount: boolean,
		hasVerifiedBadge: boolean,
	},
	price: number,
	allowedGearGenres: { string },
	allowedGearCategories: { string },
	isGenreEnforced: boolean,
	copyingAllowed: boolean,
	playing: number,
	visits: number,
	maxPlayers: number,
	created: string,
	updated: string,
	studioAccessToApisAllowed: boolean,
	createVipServersAllowed: boolean?,
	universeAvatarType: string,
	genre: string,
	isAllGenre: boolean,
	isFavoritedByUser: boolean,
	favoritedCount: number,
}

local CorePackages = game:GetService("CorePackages")
local FFlagUsePSEnabledInUniverseEndpoint =
	require(CorePackages.Workspace.Packages.GameDetailRodux).Flags.FFlagUsePSEnabledInUniverseEndpoint

local ExperienceDetailsModel = {}

function ExperienceDetailsModel.mock(universeId: number?): Response
	return {
		id = if universeId then universeId else -1,
		rootPlaceId = -2,
		name = "Experience name",
		description = "Experience description",
		sourceName = "Source name",
		sourceDescription = "Source description",
		creator = {
			id = -3,
			name = "CreatorName",
			type = "User",
			isRNVAccount = false,
			hasVerifiedBadge = false,
		},
		price = 0,
		allowedGearGenres = {},
		allowedGearCategories = {},
		isGenreEnforced = false,
		copyingAllowed = false,
		playing = 0,
		visits = 0,
		maxPlayers = 10,
		created = DateTime.now():ToIsoDate(),
		updated = DateTime.now():ToIsoDate(),
		studioAccessToApisAllowed = false,
		createVipServersAllowed = if FFlagUsePSEnabledInUniverseEndpoint() then false else nil,
		universeAvatarType = "MorphR6",
		genre = "",
		isAllGenre = false,
		isFavoritedByUser = false,
		favoritedCount = 0,
	}
end

return ExperienceDetailsModel

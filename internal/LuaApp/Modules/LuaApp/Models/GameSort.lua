--[[
	{
		"token": string,
		"name": string,
		"displayName" : string,
		"timeOptionsAvailable": boolean,
		"genreOptionsAvailable": boolean,
		"numberOfRows": number,
		"isDefaultSort" : boolean
	}
]]

-- This is a static client-side mapping of icons that we want our sorts to use:
local ALL_GAME_ICONS = {
	default = "rbxasset://textures/ui/LuaApp/category/ic-default.png",

	BuildersClub = "rbxasset://textures/ui/LuaApp/category/ic-bc.png",
	Featured = "rbxasset://textures/ui/LuaApp/category/ic-featured.png",
	FriendActivity = "rbxasset://textures/ui/LuaApp/category/ic-friend activity.png",
	MyFavorite = "rbxasset://textures/ui/LuaApp/category/ic-my favorite.png",
	MyRecent = "rbxasset://textures/ui/LuaApp/category/ic-my recent.png",
	Popular = "rbxasset://textures/ui/LuaApp/category/ic-popular.png",
	PopularInCountry = "rbxasset://textures/ui/LuaApp/category/ic-popular in country.png",
	PopularInVr = "rbxasset://textures/ui/LuaApp/category/ic-popular in VR.png",
	Purchased = "rbxasset://textures/ui/LuaApp/category/ic-purchased.png",
	TopFavorite = "rbxasset://textures/ui/LuaApp/category/ic-top favorite.png",
	TopGrossing = "rbxasset://textures/ui/LuaApp/category/ic-top earning.png",
	TopPaid = "rbxasset://textures/ui/LuaApp/category/ic-top paid.png",
	TopRated = "rbxasset://textures/ui/LuaApp/category/ic-top rated.png",
	TopRetaining = "rbxasset://textures/ui/LuaApp/category/ic-recommended.png",
}

local GameSort = {}

function GameSort.new()
	local self = {}

	return self
end

function GameSort.mock()
	local self = GameSort.new()
	self.displayIcon = ""
	self.displayName = ""
	self.genreOptionsAvailable = false
	self.isDefaultSort = true
	self.name = ""
	self.numberOfRows = 1
	self.timeOptionsAvailable = false
	self.token = ""

	return self
end

function GameSort.fromJsonData(gameSortJson)
	local self = GameSort.new()
	self.displayName = gameSortJson.displayName
	self.genreOptionsAvailable = gameSortJson.genreOptionsAvailable
	self.isDefaultSort = gameSortJson.isDefaultSort
	self.name = gameSortJson.name
	self.numberOfRows = gameSortJson.numberOfRows
	self.timeOptionsAvailable = gameSortJson.timeOptionsAvailable
	self.token = gameSortJson.token

	-- Assign the icon:
	if self.name ~= nil then
		self.displayIcon = ALL_GAME_ICONS[self.name]
	end
	if self.displayIcon == nil then
		self.displayIcon = ALL_GAME_ICONS["default"]
	end

	return self
end

return GameSort
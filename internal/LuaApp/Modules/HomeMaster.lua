local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local LocalizationService = game:GetService("LocalizationService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local Rodux = require(Modules.Common.Rodux)
local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local Localization = require(Modules.LuaApp.Localization)
local RoactLocalization = require(Modules.LuaApp.RoactLocalization)
local StringsLocale = require(Modules.LuaApp.StringsLocale)
local AppReducer = require(Modules.LuaApp.AppReducer)
local HomePage = require(Modules.LuaApp.Components.Home.HomePage)
local User = require(Modules.LuaApp.Models.User)
local AddUser = require(Modules.LuaApp.Actions.AddUser)
local AddGames = require(Modules.LuaApp.Actions.AddGames)
local AddGamesSorts = require(Modules.LuaApp.Actions.AddGameSorts)
local SetUserPresence = require(Modules.LuaApp.Actions.SetUserPresence)
local SetLocalUser = require(Modules.LuaApp.Actions.SetLocalUser)
local SetGamesInSort = require(Modules.LuaApp.Actions.SetGamesInSort)
local SetGameSortsInGroup = require(Modules.LuaApp.Actions.SetGameSortsInGroup)

local HomeMaster = {}
HomeMaster.__index = HomeMaster

function HomeMaster.new()
	local self = {}
	setmetatable(self, HomeMaster)

	if game.Players.NumPlayers == 0 then
		game.Players.PlayerAdded:Wait()
	end

	-- Reduce render quality to optimize performance
	settings().Rendering.QualityLevel = 1

	self._store = Rodux.Store.new(AppReducer)
	self._started = false

	self._store:Dispatch(AddUser(User.fromData(1, "Alice", true)))
	self._store:Dispatch(AddUser(User.fromData(2, "Bob", true)))
	self._store:Dispatch(AddUser(User.fromData(3, "Carol", false)))
	self._store:Dispatch(AddUser(User.fromData(4, "Dave", true)))
	self._store:Dispatch(AddUser(User.fromData(5, "Eve", true)))
	self._store:Dispatch(AddUser(User.fromData(6, "Frank", false)))
	self._store:Dispatch(AddUser(User.fromData(7, "Grace", true)))
	self._store:Dispatch(AddUser(User.fromData(8, "Heidi", true)))
	self._store:Dispatch(AddUser(User.fromData(9, "Judy", true)))
	self._store:Dispatch(SetUserPresence(1, User.PresenceType.ONLINE, nil))
	self._store:Dispatch(SetUserPresence(2, User.PresenceType.IN_GAME, nil))
	self._store:Dispatch(SetUserPresence(4, User.PresenceType.IN_STUDIO, nil))
	self._store:Dispatch(AddGames({
		["1"] = {
			universeId = 1,
			placeId = 606849621,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "Jailbreak",
			playerCount = 31862,
			totalUpVotes = 90,
			totalDownVotes = 10,
		},
		["2"] = {
			universeId = 2,
			placeId = 292439477,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "Phantom Forces",
			playerCount = 13503,
			totalUpVotes = 93,
			totalDownVotes = 7,
		},
		["3"] = {
			universeId = 3,
			placeId = 370731277,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "MeepCity",
			playerCount = 13048,
			totalUpVotes = 89,
			totalDownVotes = 11,
		},
		["4"] = {
			universeId = 4,
			placeId = 171391948,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "Vehicle Simulator",
			playerCount = 10927,
			totalUpVotes = 91,
			totalDownVotes = 9,
		},
		["5"] = {
			universeId = 5,
			placeId = 339293087,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "Adopt and Raise a Cute Kid",
			playerCount = 9418,
			totalUpVotes = 84,
			totalDownVotes = 16,
		},
		["6"] = {
			universeId = 6,
			placeId = 447452406,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "Robloxian High School",
			playerCount = 7735,
			totalUpVotes = 91,
			totalDownVotes = 9,
		},
		["7"] = {
			universeId = 7,
			placeId = 185655149,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "Welcome to Bloxburg",
			playerCount = 7174,
			totalUpVotes = 97,
			totalDownVotes = 3,
		},
		["8"] = {
			universeId = 8,
			placeId = 306964494,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "Pokemon Brick Bronze",
			playerCount = 7163,
			totalUpVotes = 95,
			totalDownVotes = 5,
		},
		["9"] = {
			universeId = 9,
			placeId = 13822889,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "Lumber Tycoon 2",
			playerCount = 6881,
			totalUpVotes = 87,
			totalDownVotes = 13,
		},
		["10"] = {
			universeId = 10,
			placeId = 142823291,
			imageToken = "asdFGSAGwa23r",
			imageUrl = "",
			name = "Murder Mystery 2",
			playerCount = 6280,
			totalUpVotes = 93,
			totalDownVotes = 7,
		},
	}))
	self._store:Dispatch(AddGamesSorts({
		["00000000:MyFavorites:aaaaaaaaaaaaaaaa"] = {
			token = "00000000:MyFavorites:aaaaaaaaaaaaaaaa",
			name = "MyFavorite",
			displayName = "My Favorites",
			timeOptionsAvailable = true,
			genreOptionsAvailable = true,
			numberOfRows = 1,
			isDefaultSort = true,
		},
		["00000000:RecentlyPlayed:bbbbbbbbbbbbb"] = {
			token = "00000000:RecentlyPlayed:bbbbbbbbbbbbb",
			name = "MyRecent",
			displayName = "Recently Played",
			timeOptionsAvailable = true,
			genreOptionsAvailable = true,
			numberOfRows = 1,
			isDefaultSort = true,
		}
	}))
	self._store:Dispatch(SetGamesInSort("00000000:MyFavorites:aaaaaaaaaaaaaaaa", {"1", "2", "4", "9"}))
	self._store:Dispatch(SetGamesInSort("00000000:RecentlyPlayed:bbbbbbbbbbbbb", {"6", "3", "7"}))
	self._store:Dispatch(SetGameSortsInGroup("HomeGames", {
		"00000000:MyFavorites:aaaaaaaaaaaaaaaa",
		"00000000:RecentlyPlayed:bbbbbbbbbbbbb"
	}))

	local updateLocalPlayer = function()
		self._store:Dispatch(SetLocalUser(Players.LocalPlayer.Name, Players.LocalPlayer.MembershipType))
	end
	updateLocalPlayer()
	Players.LocalPlayer:GetPropertyChangedSignal("Name"):Connect(updateLocalPlayer)
	Players.LocalPlayer:GetPropertyChangedSignal("MembershipType"):Connect(updateLocalPlayer)

	self._localization = Localization.new(StringsLocale, LocalizationService.RobloxLocaleId)
	LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function(newLocale)
		self._localization:SetLocale(newLocale)
	end)

	return self
end

function HomeMaster:Start()
	RunService:setThrottleFramerateEnabled(true)

	if not self._started then
		self._started = true
		local root = Roact.createElement(RoactRodux.StoreProvider, {
			store = self._store,
		}, {
			localization = Roact.createElement(RoactLocalization.LocalizationProvider, {
				localization = self._localization,
			}, {
				App = Roact.createElement("ScreenGui", {
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				}, {
					HomePage = Roact.createElement(HomePage),
				}),
			}),
		})
		Roact.reify(root, CoreGui, "HomePage")
		return
	end
end

function HomeMaster:Stop()
	RunService:setThrottleFramerateEnabled(false)
end

return HomeMaster
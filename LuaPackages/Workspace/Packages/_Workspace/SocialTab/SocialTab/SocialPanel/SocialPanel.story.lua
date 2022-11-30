local SocialTab = script:FindFirstAncestor("SocialTab")
local UserUtils = require(SocialTab.User)
local SocialTabContext = require(SocialTab.SocialTabContext)

local dependencies = require(SocialTab.dependencies)
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType
local Mock = dependencies.Mock
local React = dependencies.React
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local LocalizationProvider = dependencies.LocalizationProvider

local devDependencies = require(SocialTab.devDependencies)
local Signal = devDependencies.AppCommonLib.Signal
local User = devDependencies.UserLib.Models.UserModel
local convertUniverseIdToString = devDependencies.ConvertUniverseIdToString

local SocialPanel = require(script.Parent)

local localization = {
	["CommonUI.Features.Label.Friends"] = "Friends",
	["Feature.Home.HeadingFriends"] = "Friends",
	["Common.Presence.Label.Offline"] = "Offline",
	["Common.Presence.Label.Online"] = "Online",
	["Feature.Friends.Action.FindFriends"] = "Find Friends",
}

return function(props)
	local store = Rodux.Store.new(function()
		return {
			SocialTab = {
				Presence = {
					byUserId = {
						["422502"] = {
							lastLocation = "Demo Game",
							lastOnline = "2022-10-12T20:00:57Z",
							type = "ReceivedUserPresence",
							userId = "422502",
							userPresenceType = PresenceType.InGame,
						},
						["345"] = {
							lastLocation = "Website",
							lastOnline = "2022-10-12T20:00:57Z",
							type = "ReceivedUserPresence",
							userId = "345",
							userPresenceType = PresenceType.Offline,
						},
					},
				},
				PremiumByUserId = {},
				Users = {

					byUserId = {
						["422502"] = UserUtils.makeMockUser({
							username = "This shouldn't show",
							displayName = "Display Name",
							universeId = "1176784616",
							userPresenceType = PresenceType.InGame,
						}),
						["345"] = UserUtils.makeMockUser({
							username = "This shouldn't show",
							displayName = "Stacey",
							userPresenceType = PresenceType.Online,
						}),
					},
				},
				Friends = {
					byUserId = {
						localUserId = {
							"422502",
							"345",
						},
					},
				},
			},
			UniversePlaceInfos = {
				["1176784616"] = {
					placeId = "1234",
					universeRootPlaceId = "32453",
				},
			},
			FriendPresenceCounts = {},
			LocalUserId = "id",
			localUser = {
				username = "username",
				id = "id",
				isPremium = false,
				thumbnail = "",
				displayName = "displayName",
			},
		}
	end, {}, {
		Rodux.thunkMiddleware,
	})
	return React.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {

		LocalizationProvider = React.createElement(LocalizationProvider, {
			localization = {
				Format = function(_, key, _)
					return localization[key]
				end,
				changed = Signal.new(),
			},
		}, {
			SocialContext = React.createElement(SocialTabContext.Provider, {
				value = {
					presenceType = User.PresenceType,
					convertUniverseIdToString = convertUniverseIdToString,
					useRoactService = Mock.MagicMock.new({ name = "useRoactService " }),
					roactAnalytics = Mock.MagicMock.new({ name = "analytics " }),
					roactAnalyticsCommonGameEvents = Mock.MagicMock.new({ name = "gameAnalytics " }),
				},
			}, {
				Story = React.createElement(SocialPanel, {
					topBarHeight = 10,
				}),
			}),
		}),
	})
end

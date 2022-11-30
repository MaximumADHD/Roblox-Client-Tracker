local SocialTab = script:FindFirstAncestor("SocialTab")
local SocialTabContext = require(SocialTab.SocialTabContext)

local dependencies = require(SocialTab.dependencies)
local React = dependencies.React
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local getUserAvatarImage = require(SocialTab.User.getUserAvatarImage)
local Mock = dependencies.Mock
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

local devDependencies = require(SocialTab.devDependencies)
local User = devDependencies.UserLib.Models.UserModel
local convertUniverseIdToString = devDependencies.ConvertUniverseIdToString

local SocialPanelUserProfile = require(script.Parent)

return function(props)
	local store = Rodux.Store.new(function()
		return {
			FriendPresenceCounts = {},
			UniversePlaceInfos = {},
		}
	end, {}, {
		Rodux.thunkMiddleware,
	})

	return React.createElement(RoactRodux.StoreProvider, {
		store = store,
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
			Story = React.createElement(SocialPanelUserProfile, {
				displayName = "TestUser1",
				friendRank = 1,
				id = "422502",
				lastLocation = "Website",
				thumbnail = getUserAvatarImage("422502"),
				userId = "422502",
				userPresenceType = PresenceType.Online,
				hasDivider = false,
				layoutOrder = 1,
			}),
		}),
	})
end

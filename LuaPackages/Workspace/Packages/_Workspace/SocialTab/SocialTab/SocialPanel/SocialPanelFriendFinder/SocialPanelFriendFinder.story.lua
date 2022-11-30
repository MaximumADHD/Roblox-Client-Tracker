local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local LocalizationProvider = dependencies.LocalizationProvider

local React = dependencies.React
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local Mock = dependencies.Mock

local SocialTabContext = require(SocialTab.SocialTabContext)

local devDependencies = require(SocialTab.devDependencies)
local Signal = devDependencies.AppCommonLib.Signal

local SocialPanelFriendFinder = require(script.Parent)

local noop = function() end

local localization = {
	["CommonUI.Features.Label.Friends"] = "Friends",
	["Feature.Friends.Action.FindFriends"] = "Find Friends",
	["Feature.SocialTab.Label.AddFriendHintBody"] = "Friends make Roblox more fun!",
	["Feature.SocialTab.Label.FindFriendsHintBody"] = "Connect with friends you already know or discover new ones",
}

return function(props)
	local store = Rodux.Store.new(function()
		return {}
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
					useRoactService = Mock.MagicMock.new({ name = "useRoactService " }),
					roactAnalytics = Mock.MagicMock.new({ name = "analytics " }),
					roactAnalyticsCommonGameEvents = Mock.MagicMock.new({ name = "gameAnalytics " }),
				},
			}, {
				React.createElement("Frame", {
					Size = UDim2.fromOffset(512, 252),
					BackgroundTransparency = 1,
				}, {
					Story = React.createElement(SocialPanelFriendFinder, {
						layoutOrder = 1,
						onAddFriends = noop,
						onGoToFriendsPage = noop,
					}),
				}),
			}),
		}),
	})
end

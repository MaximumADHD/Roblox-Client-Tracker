local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local React = dependencies.React
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local LocalizationProvider = dependencies.LocalizationProvider
local Mock = dependencies.Mock

local SocialTabContext = require(SocialTab.SocialTabContext)

local devDependencies = require(SocialTab.devDependencies)
local Signal = devDependencies.AppCommonLib.Signal

local SocialPanelHeader = require(script.Parent)

local noop = function() end

local localization = {
	["Feature.SocialTab.Label.Connect"] = "Connect",
}

return function(props)
	local store = Rodux.Store.new(function()
		return {
			SocialTab = {
				Friends = {
					requests = {
						receivedCount = 0,
					},
				},
				UnreadConversationCount = 1,
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
					useRoactService = Mock.MagicMock.new({ name = "useRoactService " }),
					roactAnalytics = Mock.MagicMock.new({ name = "analytics " }),
					roactAnalyticsCommonGameEvents = Mock.MagicMock.new({ name = "gameAnalytics " }),
				},
			}, {
				Story = React.createElement(SocialPanelHeader, {
					onChatActivated = noop,
					onGroupsActivated = noop,
					onAddFriendActivated = noop,
				}),
			}),
		}),
	})
end

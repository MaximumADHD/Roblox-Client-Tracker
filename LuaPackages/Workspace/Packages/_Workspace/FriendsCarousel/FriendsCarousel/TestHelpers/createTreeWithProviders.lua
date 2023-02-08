--!nonstrict

local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local devDependencies = require(FriendsCarousel.devDependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux
local UIBlox = dependencies.UIBlox
local LocalizationProvider = dependencies.LocalizationProvider
local Mock = devDependencies.Mock
local jest = devDependencies.jest

local mockAnalytics = require(script.Parent.mockAnalytics)
local Analytics = require(FriendsCarousel.Analytics)

local mockLocalization = Mock.MagicMock.new({ name = "Localization" })
mockLocalization.Format = function(_, key, _)
	return key
end

local EMPTY_STORE = Rodux.Store.new(function()
	return {}
end, {}, { Rodux.thunkMiddleware })

-- TODO: replace when SOCCONN-1516 is in social libraries
local createTreeWithProviders = function(element, config)
	local initializedMockAnalytics = config.mockAnalytics or mockAnalytics(jest)

	local tree = Roact.createFragment({
		storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
			store = config.store or EMPTY_STORE,
		}, {
			Roact.createElement(Analytics.Context.Provider, { value = initializedMockAnalytics.value }, {
				styleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
					style = {
						themeName = "Dark",
						fontName = "Gotham",
					},
				}, {
					localizationProvider = Roact.createElement(LocalizationProvider, {
						localization = mockLocalization,
					}, {
						myElement = Roact.createElement(element, config.props),
					}),
				}),
			}),
		}),
	})

	return tree, initializedMockAnalytics
end

return createTreeWithProviders

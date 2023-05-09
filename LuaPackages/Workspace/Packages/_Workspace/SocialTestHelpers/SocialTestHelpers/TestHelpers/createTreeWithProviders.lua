--!nonstrict
local SocialTestHelpers = script:FindFirstAncestor("SocialTestHelpers")
local dependencies = require(SocialTestHelpers.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux
local UIBlox = dependencies.UIBlox
local LocalizationProvider = dependencies.LocalizationProvider
local Mock = dependencies.Mock
local UnitTestHelpers = dependencies.UnitTestHelpers
local mockNavigation = UnitTestHelpers.mockNavigation

local ApolloProvider = dependencies.ApolloClient.ApolloProvider
local ApolloClientTestUtils = dependencies.GraphQLServer.ApolloClientTestUtils
local mockApolloClient = ApolloClientTestUtils.mockApolloClient

local mockLocalization = Mock.MagicMock.new({ name = "Localization" })
mockLocalization.Format = function(_, key, _)
	return key
end

local createStore = function(state)
	return Rodux.Store.new(function()
		return state
	end, {}, { Rodux.thunkMiddleware })
end

local EMPTY_STORE = Rodux.Store.new(function()
	return {}
end, {}, { Rodux.thunkMiddleware })

local createTreeWithProviders = function(element, config)
	local tree = Roact.createFragment({
		storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
			store = if config.state then createStore(config.state) else config.store or EMPTY_STORE,
		}, {
			styleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
				style = {
					themeName = "Dark",
					fontName = "Gotham",
				},
			}, {
				localizationProvider = Roact.createElement(LocalizationProvider, {
					localization = mockLocalization,
				}, {
					apolloClient = Roact.createElement(ApolloProvider, {
						client = config.apolloClient or mockApolloClient({}),
					}, {
						myElement = if config.navigation
							then Roact.createElement(element, config.props)
							else mockNavigation(Roact.createElement(element, config.props)),
					}),
				}),
			}),
		}),
	})

	if config.mockProvider then
		tree = config.mockProvider(tree)
	end

	return tree
end

return createTreeWithProviders

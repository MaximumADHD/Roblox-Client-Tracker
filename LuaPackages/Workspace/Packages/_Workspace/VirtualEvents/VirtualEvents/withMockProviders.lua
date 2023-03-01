local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Style = require(VirtualEvents.Parent.Dev.Style)
local ApolloClient = require(VirtualEvents.Parent.ApolloClient)
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local React = require(VirtualEvents.Parent.React)
local Rodux = require(VirtualEvents.Parent.Rodux)
local RoactNavigation = require(VirtualEvents.Parent.RoactNavigation)
local RoactRodux = require(VirtualEvents.Parent.RoactRodux)
local RobloxAppLocales = require(VirtualEvents.Parent.RobloxAppLocales)
local Localization = require(VirtualEvents.Parent.Localization)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local installReducer = require(VirtualEvents.installReducer)
local MockContentProvider = UIBlox.UnitTestHelpers.MockContentProvider

local StyleProvider = UIBlox.Core.Style.Provider
local ContentProviderContext = UIBlox.App.Context.ContentProvider

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

type Options = {
	mockResolvers: { [string]: any }?,
	mockNavigation: { [string]: any }?,
	store: { [string]: any }?,
	initialStoreState: any,
}

local function withMockProviders(children: { [string]: any }, options: Options?)
	local store = if options then options.store else nil
	if not store then
		store = Rodux.Store.new(reducer, if options then options.initialStoreState else nil, {
			Rodux.thunkMiddleware,
		})
	end

	local root: { [string]: any } = {
		StoreProvider = React.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ContentProvider = React.createElement(ContentProviderContext.Provider, {
				value = MockContentProvider.new(),
			}, {
				LocalizationProvider = React.createElement(Localization.LocalizationProvider, {
					localization = RobloxAppLocales.Localization.new("en-us"),
				}, {
					StyleProvider = React.createElement(StyleProvider, {
						style = {
							Theme = Style.Themes.DarkTheme,
							Font = Style.Fonts.Gotham,
						},
					}, {
						Children = React.createElement(React.Fragment, nil, children),
					}),
				}),
			}),
		}),
	}

	if options then
		if options.mockResolvers then
			local server = GraphQLServer.GraphQLServer.new({
				mockResolvers = options.mockResolvers,
			})

			local client = ApolloClient.ApolloClient.new({
				cache = ApolloClient.InMemoryCache.new({}),
				link = ApolloClient.HttpLink.new({
					uri = "/api",
					fetch = function(_uri, requestOptions)
						return server:fetchLocal(requestOptions)
					end,
				}),
			})

			root = {
				ApolloProvider = React.createElement(ApolloClient.ApolloProvider, {
					client = client,
				}, root),
			}
		end

		if options.mockNavigation then
			root = {
				NavigationProvider = React.createElement(RoactNavigation.Provider, {
					value = options.mockNavigation,
				}, root),
			}
		end
	end

	return React.createElement(React.Fragment, nil, root)
end

return withMockProviders

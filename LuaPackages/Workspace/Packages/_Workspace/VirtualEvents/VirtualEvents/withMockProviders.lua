local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Style = require(VirtualEvents.Parent.Dev.Style)
local ApolloClient = require(VirtualEvents.Parent.ApolloClient)
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local React = require(VirtualEvents.Parent.React)
local Rodux = require(VirtualEvents.Parent.Rodux)
local RoactRodux = require(VirtualEvents.Parent.RoactRodux)
local RobloxAppLocales = require(VirtualEvents.Parent.RobloxAppLocales)
local Localization = require(VirtualEvents.Parent.Localization)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local installReducer = require(VirtualEvents.installReducer)

local StyleProvider = UIBlox.Core.Style.Provider
local ContentProviderContext = UIBlox.App.Context.ContentProvider

local MOCK_CONTENT_PROVIDER = {
	PreloadAsync = function(_self, assets, callback)
		if callback then
			for _, value in ipairs(assets) do
				callback(value, Enum.AssetFetchStatus.Success)
			end
		end
	end,
}

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

type Options = {
	mockResolvers: {
		[string]: any,
	}?,
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
				value = MOCK_CONTENT_PROVIDER,
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

	if options and options.mockResolvers then
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

	return React.createElement(React.Fragment, nil, root)
end

return withMockProviders

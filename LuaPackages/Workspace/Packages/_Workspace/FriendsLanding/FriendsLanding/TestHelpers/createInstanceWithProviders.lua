--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jest = JestGlobals.jest
local installReducer = require(FriendsLanding.installReducer)
local t = dependencies.t
local filterStates = require(FriendsLanding.Friends.filterStates)
local foldProviders = require(FriendsLanding.Utils.foldProviders)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local EnumScreens = require(FriendsLanding.EnumScreens)

local llama = dependencies.llama
local UIBlox = dependencies.UIBlox
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local RoactNavigation = dependencies.RoactNavigation

local getFFlagFriendsLandingLuaPageLoadEvent = require(FriendsLanding.Flags.getFFlagFriendsLandingLuaPageLoadEvent)

local ConfigInterface = t.strictInterface({
	context = t.optional(t.table), -- To set FriendLandingContext's initial value
	initialState = t.optional(t.table), -- To set initial state
	props = t.optional(t.table), -- To pass in props to element
	store = t.optional(t.table), -- To fully overwrite store
	policy = t.optional(t.table), -- To pass in other policy options
	analytics = t.optional(t.table), -- To pass in other analytics options
	navigation = t.optional(t.table), -- To pass in other navigation options
})

local fakeNavigation = {
	state = {
		params = {},
		routeName = "",
		key = "",
	},
	dispatch = function() end,
	goBack = function() end,
	addListener = function() end,
	isFocused = function() end,
	setParams = function() end,
	getParam = function() end,
	navigate = function() end,
}

-- TODO: replace when SOCCONN-1516 is in social libraries
return function(mockLocale)
	return function(element, config)
		assert(ConfigInterface(config))

		local folder = Instance.new("ScreenGui")
		folder.Parent = game:GetService("CoreGui")

		local providers = {}

		--* Setup Store
		local defaultState = {
			LocalUserId = "LocalUserId",
			FriendsLanding = {
				NetworkStatus = {
					["https://friends.roblox.com//v1/users/test/friends"] = "Done",
				},
			},
		}
		local defaultStore = Rodux.Store.new(
			Rodux.combineReducers({
				FriendsLanding = installReducer(),
				LocalUserId = function(state)
					return state
				end,
			}),
			llama.Dictionary.join(defaultState, config.initialState),
			{ Rodux.thunkMiddleware }
		)
		providers.storeProvider = { RoactRodux.StoreProvider, {
			store = config.store or defaultStore,
		} }

		--* Setup PolicyProvider
		local defaultPolicies = {
			getShowDisplayName = function()
				return true
			end,
			getFriendFinder = function()
				return true
			end,
			getAccountProviderName = function()
				return ""
			end,
			shouldInviteFromAccountProvider = function()
				return true
			end,
		}

		providers.policyProvider = {
			dependencies.UniversalAppPolicy.Provider,
			{
				policy = {
					function()
						return llama.Dictionary.join(defaultPolicies, config.policy)
					end,
				},
			},
		}

		--* Setup FriendsLandingContextProvider
		local defaultContext = {}
		defaultContext.setFilterKeys = jest.fn()
		defaultContext.refreshPage = jest.fn()
		defaultContext.wideMode = true
		defaultContext.screenSize = Vector2.new(512, 512)
		defaultContext.filter = filterStates.All
		defaultContext.navigateToLuaAppPages = {
			[EnumScreens.FriendFinder] = jest.fn(),
		}

		defaultContext.getScreenTopBar = function()
			return {
				shouldRenderCenter = false,
			}
		end
		defaultContext.friendRequestCount = 0
		defaultContext.setScreenTopBar = jest.fn()

		if config.context then
			llama.Dictionary.map(config.context, function(value, key)
				defaultContext[key] = value
			end)
		end

		providers.friendsLandingContextProvider = {
			FriendsLandingContext.Provider,
			{
				value = defaultContext,
			},
		}

		--* Setup StyleProvider
		providers.styleProvider = {
			UIBlox.App.Style.AppStyleProvider,
			{
				style = {
					themeName = "Dark",
					fontName = "Gotham",
				},
			},
		}

		--* Setup FriendsLandingAnalyticsProvider
		providers.analyticsProvider = {
			FriendsLandingAnalytics.Context.Provider,
			{
				value = config.analytics or {
					buttonClick = jest.fn(),
					pageLoaded = jest.fn(),
					navigate = jest.fn(),
					pageLoadingTimeReport = jest.fn(),
					pageLoadedWithArgs = if getFFlagFriendsLandingLuaPageLoadEvent() then jest.fn() else nil,
					pageMountingTimeReport = jest.fn(),
					impressionEvent = jest.fn(),
				},
			},
		}

		--* Setup StyleProvider
		providers.styleProvider = {
			UIBlox.App.Style.AppStyleProvider,
			{
				style = {
					themeName = "Dark",
					fontName = "Gotham",
				},
			},
		}

		--* Setup RoactNavigationProvider
		providers.navigationProvider = {
			RoactNavigation.Provider,
			{
				value = llama.Dictionary.join(fakeNavigation, config.navigation),
			},
		}

		local elementWithProps = Roact.createElement(element, llama.Dictionary.join(config.props))
		local tree = foldProviders(elementWithProps, providers)

		local handle = Roact.mount(mockLocale(tree), folder)

		local cleanup = function()
			Roact.unmount(handle)
			folder:Destroy()
		end
		return folder, cleanup
	end
end

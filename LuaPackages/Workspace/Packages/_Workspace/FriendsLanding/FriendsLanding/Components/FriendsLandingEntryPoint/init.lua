local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Logger = dependencies.Logger
local RoactRodux = dependencies.RoactRodux
local RoactAppExperiment = dependencies.RoactAppExperiment
local llama = dependencies.llama
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local FriendsLandingNavigator = require(FriendsLanding.Navigator)
local EnumScreens = require(FriendsLanding.EnumScreens)
local filterStates = require(FriendsLanding.Friends.filterStates)
local memoize = dependencies.memoize
local SocialLibraries = dependencies.SocialLibraries
local compose = SocialLibraries.RoduxTools.compose
local mapStateToProps = require(script.mapStateToProps)
local mapDispatchToProps = require(script.mapDispatchToProps)
local withLocalization = dependencies.withLocalization
local FriendsLandingEventListener = require(FriendsLanding.Components.FriendsLandingEventListener)
local FriendsLandingEntryPoint = Roact.PureComponent:extend("FriendsLandingEntryPoint")
local noOpt = function() end

local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled
local getFStringSocialAddFriendsPageLayer = dependencies.getFStringSocialAddFriendsPageLayer

local RECORD_EXPOSURE_ON_MOUNT = if getFFlagAddFriendsSearchbarIXPEnabled() then false else nil

FriendsLandingEntryPoint.defaultProps = {
	renderAndroidBackButtonNavigationHandler = nil,
	luaAppPages = {},
	isLuobu = false,
	logger = nil,

	debug_willUnmount = nil, -- used in a unit test
}

-- place to init all providers we are going to use in FriendsLanding (and AddFriends, depends how much we need to share)
function FriendsLandingEntryPoint:init()
	if self.props.logger then
		Logger:setParent(self.props.logger)
	end

	self.state = {
		filter = filterStates.All,
		topBar = {
			[EnumScreens.FriendsLanding] = {
				shouldRenderCenter = false,
			},
		},
	}

	self.localization = {
		pageError = "CommonUI.Messages.Response.PageError",
	}

	self.setFilterKeys = function(key)
		assert(type(key) == "string", "Expected value to be a string")
		self:setState({ filter = key })
	end

	self.getScreenTopBar = function(screen)
		return self.state.topBar[screen] or {}
	end

	self.setScreenTopBar = function(screen, screenSettings)
		self:setState(function(oldState)
			local newScreenSettings = llama.Dictionary.join(oldState.topBar[screen] or {}, screenSettings)

			return {
				topBar = llama.Dictionary.join(self.state.topBar, {
					[screen] = newScreenSettings,
				}),
			}
		end)
	end

	self.showErrorToast = function(errorMessage: string)
		self.props.navigation.navigate(EnumScreens.GenericToast, {
			toastProps = {
				toastContent = {
					toastTitle = errorMessage,
				},
			},
		})
	end

	self.refreshPage = function(config)
		return self.props.refreshPageData({
			localUserId = self.props.localUserId,
			onError = function()
				self.showErrorToast(config.errorMessage)
				Logger:info("Refreshing FriendsLanding data failed")
			end,
			onResolve = config.onResolve or noOpt,
		})
	end

	self.getAnalytics = memoize(function(localUserId)
		return FriendsLandingAnalytics.Class.new({
			Diag = self.props.diagService,
			EventStream = self.props.eventIngestService,
		}, localUserId, self.props.getLoadingTimeInfo)
	end)
end

function FriendsLandingEntryPoint:render()
	local androidBackButtonNavigationHandler = self.props.renderAndroidBackButtonNavigationHandler
			and self.props.renderAndroidBackButtonNavigationHandler(self.props.navigation)
		or nil
	return withLocalization(self.localization)(function(localizedStrings)
		return Roact.createElement(FriendsLandingAnalytics.Context.Provider, {
			value = self.getAnalytics(self.props.localUserId),
		}, {
			Roact.createElement(FriendsLandingContext.Provider, {
				value = {
					exitFriendsLanding = self.props.exitFriendsLanding or nil,
					navigateToLuaAppPages = self.props.navigateToLuaAppPages,
					filter = self.state.filter,
					setFilterKeys = self.setFilterKeys,
					screenSize = self.props.screenSize,
					friendRequestCount = self.props.friendRequestCount,
					totalFriendCount = self.props.totalFriendCount,
					wideMode = self.props.wideMode,
					playerSearchPage = self.props.luaAppPages.playerSearchPage,
					diagService = self.props.diagService,
					eventIngestService = self.props.eventIngestService,
					-- depends how Luobu opens this page:
					-- can be passed with navigation props or just props (UniversalAppWrapperCase)
					isLuobu = self.props.isLuobu,
					entryPage = self.props.entryPage,
					luaAddFriendsPageEnabled = self.props.luaAddFriendsPageEnabled,
					getScreenTopBar = self.getScreenTopBar,
					setScreenTopBar = self.setScreenTopBar,
					refreshPage = self.refreshPage,
					friendsRequestEventListener = self.props.friendsRequestEventListener,
					contactImporterAndPYMKEnabled = self.props.contactImporterAndPYMKEnabled,
					contactImporterExperimentVariant = self.props.contactImporterExperimentVariant,
					addFriendsPageSearchbarEnabled = if getFFlagAddFriendsSearchbarIXPEnabled()
						then self.props.addFriendsPageSearchbarEnabled
						else nil,
					openProfilePeekView = self.props.openProfilePeekView,
				},
			}, {
				navigation = Roact.createElement(FriendsLandingNavigator, {
					navigation = self.props.navigation,
				}),
				friendsLandingEventListener = Roact.createElement(FriendsLandingEventListener, {
					pageError = localizedStrings.pageError,
					navigation = self.props.navigation,
					getFriendRequestsCount = self.props.getFriendRequestsCount,
				}),
				androidBackButtonNavigationHandler = androidBackButtonNavigationHandler,
			}),
		})
	end)
end

function FriendsLandingEntryPoint:didMount()
	Logger:info("FriendsLandingEntryPoint mounted")
end

function FriendsLandingEntryPoint:willUnmount()
	Logger:info("FriendsLandingEntryPoint unmounted")
	if self.props.debug_willUnmount then
		self.props.debug_willUnmount()
	end
end

if getFFlagAddFriendsSearchbarIXPEnabled() then
	FriendsLandingEntryPoint = compose(
		RoactRodux.connect(mapStateToProps, mapDispatchToProps),
		RoactAppExperiment.connectUserLayer({
			getFStringSocialAddFriendsPageLayer(),
		}, function(layerVariables, props)
			local socialAddFriendsPageLayer: any = layerVariables[getFStringSocialAddFriendsPageLayer()] or {}
			return {
				addFriendsPageSearchbarEnabled = socialAddFriendsPageLayer.show_add_friends_page_search_bar,
			}
		end, RECORD_EXPOSURE_ON_MOUNT)
	)(FriendsLandingEntryPoint)
else
	FriendsLandingEntryPoint =
		compose(RoactRodux.connect(mapStateToProps, mapDispatchToProps))(FriendsLandingEntryPoint)
end

FriendsLandingEntryPoint.router = FriendsLandingNavigator.router

return FriendsLandingEntryPoint

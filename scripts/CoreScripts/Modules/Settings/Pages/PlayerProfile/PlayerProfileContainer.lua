local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local Foundation = require(CorePackages.Packages.Foundation)
local View = Foundation.View

local Responsive = require(CorePackages.Workspace.Packages.Responsive)

local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider

local RoactAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy).RoactAppPolicy
local AppFeaturePolicies = require(CorePackages.Workspace.Packages.UniversalAppPolicy).AppFeaturePolicies
local ChatPolicies = require(CorePackages.Workspace.Packages.SocialPolicies).ChatPolicies
local AvatarPolicies = require(CorePackages.Workspace.Packages.AvatarPolicies).AvatarPolicies
local SharePolicies = require(CorePackages.Workspace.Packages.SocialPolicies).SharePolicies
local ShareTargetGamePolicies = require(CorePackages.Workspace.Packages.SocialPolicies).ShareTargetGamePolicies

local ProfilePlatform = require(CorePackages.Workspace.Packages.ProfilePlatform)
local ProfileTypes = ProfilePlatform.ProfileTypes
local ProfileWrapperContext = ProfilePlatform.ProfileWrapperContext

local PlayerProfile = require(script.Parent.PlayerProfile)

local function createStore(state: any)
	local rootReducer = Rodux.combineReducers({
		[ProfilePlatform.RoduxKey] = ProfilePlatform.installReducer(),
	})
	return Rodux.Store.new(rootReducer, state or {}, { Rodux.thunkMiddleware })
end

export type PlayerProfileProps = {
	userId: number,
	inspectAvatar: () -> (),
	closePage: () -> (),
}

local function PlayerProfileContainer(props: PlayerProfileProps)
	local containerRef = React.useRef(nil)

	return React.createElement(RoactAppPolicy.Provider, {
		policy = {
			AppFeaturePolicies,
			ChatPolicies,
			AvatarPolicies,
			SharePolicies,
			ShareTargetGamePolicies,
		},
	}, {
		ProfileWrapperProvider = React.createElement(ProfileWrapperContext.Provider, {
			value = {
				profileId = tostring(props.userId),
				profileType = ProfileTypes.User,
				sourceInfo = {
					source = ProfilePlatform.Sources.InExperienceProfile,
					contextualInfoType = "",
				},
				navigateTo = {
					qRCodePage = function() end,
					previousView = function(isSwipeDown: boolean) end,
					itemDetails = function(string) end,
					itemOrBundleDetails = function(string, string2) end,
					catalogSearch = function(string) end,
					tryOnItem = function(
						assetId: string,
						itemType: string,
						itemName: string?,
						itemAssetType: string?
					)
					end,
					inspectAvatar = props.inspectAvatar,
					editUsername = function() end,
					openLeaveRobloxAlertUIBlox = function(continueFunc: () -> ()) end,
					closeLeaveRobloxAlert = function() end,
				},
				externalAnalytics = {
					catalogAnalytics = {},
				},
			},
		}, {
			CoreScriptsRootProvider = React.createElement(CoreScriptsRootProvider, {}, {
				RoduxStore = React.createElement(RoactRodux.StoreProvider, {
					store = createStore(),
				}, {
					ResponsiveProvider = React.createElement(Responsive.ContainerRef.Provider, {
						value = containerRef,
					}, {
						PlayerProfileContainer = React.createElement(View, {
							tag = "size-full",
							ref = containerRef,
						}, {
							PlayerProfile = React.createElement(PlayerProfile, {
								userId = props.userId,
								closePage = props.closePage,
							}),
						}),
					}),
				}),
			}),
		}),
	})
end

return PlayerProfileContainer

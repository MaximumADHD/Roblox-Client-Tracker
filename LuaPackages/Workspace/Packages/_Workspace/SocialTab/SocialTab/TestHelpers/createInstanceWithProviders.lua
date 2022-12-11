local SocialTab = script:FindFirstAncestor("SocialTab")

local Analytics = require(SocialTab.Analytics)
local SocialTabContext = require(SocialTab.SocialTabContext)
local getFFlagSocialTabUseUIBloxCarouselForFriends =
	require(SocialTab.Flags.getFFlagSocialTabUseUIBloxCarouselForFriends)

local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local UIBlox = dependencies.UIBlox
local Mock = dependencies.Mock

local devDependencies = require(SocialTab.devDependencies)
local UnitTestHelpers = devDependencies.UnitTestHelpers

local EMPTY_STORE = Rodux.Store.new(function()
	return {}
end, {}, { Rodux.thunkMiddleware })

type Config = {
	store: any,
	policy: any,
	props: any,
}

return function(element, config: Config)
	local folder = Instance.new("ScreenGui")
	folder.Parent = game:GetService("CoreGui")

	local socialTabContext = Mock.MagicMock.new()
	socialTabContext.wideMode = true
	-- Note, slightly hacky, but we want the tests to run with this value as true and false.
	-- This flag is a long term one that will exist for a while, and we can't pass in the ProfileIXP flag into this project.
	socialTabContext.isLuaProfilePageEnabled = getFFlagSocialTabUseUIBloxCarouselForFriends()

	local tree = Roact.createFragment({
		storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
			store = config.store or EMPTY_STORE,
		}, {
			styleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
				style = {
					themeName = "Dark",
					fontName = "Gotham",
				},
			}, {
				policyProvider = Roact.createElement(dependencies.UniversalAppPolicy.Provider, {
					policy = config.policy or {
						function()
							return {
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
								getShouldShowGroupsTile = function()
									return true
								end,
								getChatHeaderNotifications = function()
									return true
								end,
								getProfileShareEnabled = function()
									return true
								end,
								getContactImporterEnabled = function()
									return true
								end,
							}
						end,
					},
				}, {
					analyticsProvider = Roact.createElement(Analytics.Context.Provider, {
						value = Mock.MagicMock.new(),
					}, {
						socialTabContext = Roact.createElement(SocialTabContext.Provider, {
							value = socialTabContext,
						}, {
							myElement = Roact.createElement(element, config.props),
						}),
					}),
				}),
			}),
		}),
	})

	local handle = Roact.mount(UnitTestHelpers.mockLocale(tree), folder)
	local cleanup = function()
		Roact.unmount(handle)
		folder:Destroy()
	end
	return folder, cleanup
end

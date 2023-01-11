--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)

local ExternalContentSharingProtocol
	= require(CorePackages.Workspace.Packages.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UrlBuilderPackage = require(CorePackages.Packages.UrlBuilder)
local UrlBuilder = UrlBuilderPackage.UrlBuilder
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local GameContextualMenu = UIBlox.App.Menu.GameContextualMenu

local InGameMenu = script.Parent.Parent

local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Pages = require(script.Parent.Pages)
local Divider = require(script.Parent.Divider)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local CommonConstants = require(RobloxGui.Modules.Common.Constants)

local ApiFetchGameIsFavorite = require(InGameMenu.Thunks.ApiFetchGameIsFavorite)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)
local GamePostFavorite = require(InGameMenu.Thunks.GamePostFavorite)

local SetGameFollow = require(InGameMenu.Actions.SetGameFollow)
local SendGameFollow = require(InGameMenu.Thunks.SendGameFollow)
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Network = InGameMenu.Network
local httpRequest = require(Network.httpRequest)
local networkImpl = httpRequest(HttpRbxApiService)
local SocialDependencies = require(InGameMenu.SocialDependencies)
local IsExperienceOlderThanOneWeek = require(InGameMenu.Utility.IsExperienceOlderThanOneWeek)
local RoduxShareLinks = SocialDependencies.RoduxShareLinks
local RoduxNetworking = SocialDependencies.RoduxNetworking
local NetworkStatus = RoduxNetworking.Enum.NetworkStatus
local NetworkingShareLinks = SocialDependencies.NetworkingShareLinks
local GetFFlagShareInviteLinkContextMenuV3Enabled =
	require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)

local GetFFlagLuaAppNewShareSheet =
	require(CorePackages.Workspace.Packages.ExternalContentSharingProtocol).Flags.GetFFlagLuaAppNewShareSheet

local NAV_BUTTON_HEIGHT = 56

local function shouldShowShareInviteLink(gameInfo, serverType)
	if
		GetFFlagShareInviteLinkContextMenuV3Enabled()
		and serverType == CommonConstants.STANDARD_SERVER
		and IsExperienceOlderThanOneWeek(gameInfo)
	then
		return true
	end

	return false
end

function renderMenu(props, actions)
	local labelStrings = {}
	for index, page in ipairs(Pages.pagesByIndex) do
		labelStrings[index] = (page.actionKey and actions[page.actionKey] and actions[page.actionKey].selected and page.titleOn) or page.title
	end

	return withLocalization(labelStrings)(function(localized)
		local buttonProps = {}
		for index, page in ipairs(Pages.pagesByIndex) do
			if page.parentPage == Constants.MainPagePageKey then
				if
					GetFFlagShareInviteLinkContextMenuV3Enabled()
					and page.key == "ShareServerLink"
					and not shouldShowShareInviteLink(props.gameInfo, props.serverType)
				then
					continue
				end

				buttonProps[#buttonProps + 1]  = {
					layoutOrder = index,
					text = localized[index],
					icon = (page.actionKey and actions[page.actionKey].selected and page.iconOn) or page.icon,
					leftPaddingOffset = 7,
					disabled = if page.actionKey
							and actions[page.actionKey]
						then
							actions[page.actionKey].disabled
						else
							nil,
					onActivated = function()
						if page.actionKey and actions[page.actionKey] then
							actions[page.actionKey].onActivated()
						else
							props.setCurrentPage(page.key)
						end
					end,
				}
			end
		end

		return Roact.createElement(GameContextualMenu, {
			buttonProps = buttonProps,
			width = UDim.new(1, 0),
			topElementRounded = false,
			bottomElementRounded = false,
		})
	end)
end

local PageNavigation

if GetFFlagShareInviteLinkContextMenuV3Enabled() then
	PageNavigation = Roact.Component:extend("PageNavigation")

	function openShareSheet(linkId: string)
		local linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue()
		local url = UrlBuilder.sharelinks.appsflyer(linkId, linkType)
		if GetFFlagLuaAppNewShareSheet() then
			ExternalContentSharingProtocol:shareUrl({
				url = url,
				context = Constants.ShareLinksAnalyticsExternalContentSharingGameDetailsContextName
			})
		else
			ExternalContentSharingProtocol:shareText({
				text = url,
				context = Constants.ShareLinksAnalyticsExternalContentSharingGameDetailsContextName
			})
		end
	end

	function PageNavigation:didUpdate(prevProps)
		if self.state.isCurrentPage and (prevProps.shareInviteLink == nil and self.props.shareInviteLink ~= nil) then
			local linkId = self.props.shareInviteLink.linkId
			SendAnalytics(Constants.ShareLinksAnalyticsName, Constants.ShareLinksAnalyticsLinkGeneratedName, {
				page = "inGameMenuV3",
				subpage = Constants.MainPagePageKey,
				linkId = linkId,
				linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue(),
			})
			openShareSheet(linkId)

			if self.props.enableCopiedFeedback then
				self:setState({ showCopiedText = true })

				delay(1, function()
					self:setState({ showCopiedText = false })
				end)
			end
		end
	end

	function PageNavigation:render()
		local props = self.props
		local frameChildren = {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}),
			Watcher = Roact.createElement(PageNavigationWatcher, {
				desiredPage = Constants.MainPagePageKey,
				onNavigateTo = function()
					if not self.state.isCurrentPage then
						self:setState({
							isCurrentPage = true,
						})
					end
				end,
				onNavigateAway = function()
					if self.state.isCurrentPage then
						self:setState({
							isCurrentPage = false,
						})
					end
				end,
			}),
		}

		local favoriteSelected = props.isFavorited ~= nil and props.isFavorited or false
		local followSelected = props.isFollowed ~= nil and props.isFollowed or false

		local actions = {
			shareServerLink = GetFFlagShareInviteLinkContextMenuV3Enabled()
					and {
						disabled = self.props.fetchShareInviteLinkNetworkStatus == NetworkStatus.Fetching or self.state.showCopiedText,
						selected = if self.props.enableCopiedFeedback
							then self.state.showCopiedText
							else false,
						onActivated = function()
							SendAnalytics(Constants.ShareLinksAnalyticsName, Constants.ShareLinksAnalyticsButtonClickName, {
								btn = "shareServerInviteLink",
								page = "inGameMenuV3",
								subpage = Constants.MainPagePageKey,
							})

							if props.shareInviteLink == nil then
								props.fetchShareInviteLink()
							else
								openShareSheet(self.props.shareInviteLink.linkId)
								if self.props.enableCopiedFeedback then
									self:setState({ showCopiedText = true })

									delay(1, function()
										self:setState({ showCopiedText = false })
									end)
								end
							end
						end,
					}
				or nil,
			favorite = {
				selected = favoriteSelected,
				onActivated = function()
					props.setFavorite(not favoriteSelected)
					props.postFavorite(networkImpl, not favoriteSelected)

					SendAnalytics(
						Constants.AnalyticsMenuActionName,
						favoriteSelected and Constants.AnalyticsUnfavoritingExperience
							or Constants.AnalyticsFavoritingExperience,
						{ source = Constants.AnalyticsExperiencePageSource }
					)

					if IsMenuCsatEnabled() then
						ExperienceMenuABTestManager.default:setCSATQualification()
					end
				end,
			},
			follow = {
				selected = followSelected,
				onActivated = function()
					props.setFollowing(not followSelected)
					props.postFollowing(networkImpl, not followSelected)

					SendAnalytics(
						Constants.AnalyticsMenuActionName,
						followSelected and Constants.AnalyticsUnfollowExperience or Constants.AnalyticsFollowExperience,
						{}
					)

					if IsMenuCsatEnabled() then
						ExperienceMenuABTestManager.default:setCSATQualification()
					end
				end,
			},
			reportExperience = {
				onActivated = function()
					TrustAndSafety.openReportDialogForPlace(Constants.AnalyticsInGameMenuName)

					SendAnalytics(
						Constants.AnalyticsMenuActionName,
						Constants.AnalyticsReportAbuse,
						{ source = Constants.AnalyticsExperiencePageSource }
					)
				end,
			},
		}

		local pageCount = #Pages.pagesByIndex
		local layoutOrder = 1

		frameChildren["Menu"] = renderMenu(props, actions)
		layoutOrder = layoutOrder + 1

		frameChildren["MenuEndDivider"] = Roact.createElement(Divider, {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, 1),
		})

		if props.autosize then
			return Roact.createElement("Frame", {
				LayoutOrder = props.LayoutOrder or 0,
				BackgroundTransparency = 1,
				Position = props.Position,
				-- pageCount nav buttons, plus pageCount - 1 dividers (which are 1px tall)
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, frameChildren)
		else
			return Roact.createElement("Frame", {
				LayoutOrder = props.LayoutOrder or 0,
				BackgroundTransparency = 1,
				Position = props.Position,
				-- pageCount nav buttons, plus pageCount - 1 dividers (which are 1px tall)
				Size = UDim2.new(1, -Constants.Zone.ContentOffset, 0, pageCount * NAV_BUTTON_HEIGHT + (pageCount - 1)),
			}, frameChildren)
		end
	end
else
	PageNavigation = function(props)
		local frameChildren = {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}),
		}

		local favoriteSelected = props.isFavorited ~= nil and props.isFavorited or false
		local followSelected = props.isFollowed ~= nil and props.isFollowed or false

		local actions = {
			shareServerLink = GetFFlagShareInviteLinkContextMenuV3Enabled()
				and {
					onActivated = function()
						-- TODO(COEXP-318): Pull up sharesheet if shareInviteLink is not nil.
						SendAnalytics(Constants.ShareLinksAnalyticsName, Constants.ShareLinksAnalyticsButtonClickName, {
							btn = "shareServerInviteLink",
							page = "inGameMenuV3",
							subpage = Constants.MainPagePageKey,
						})

						if props.shareInviteLink == nil then
						props.fetchShareInviteLink()
					end
					end,
				}
				or nil,
			favorite = {
				selected = favoriteSelected,
				onActivated = function()
					props.setFavorite(not favoriteSelected)
					props.postFavorite(networkImpl, not favoriteSelected)

					SendAnalytics(
						Constants.AnalyticsMenuActionName,
						favoriteSelected and Constants.AnalyticsUnfavoritingExperience
							or Constants.AnalyticsFavoritingExperience,
						{ source = Constants.AnalyticsExperiencePageSource }
					)

					if IsMenuCsatEnabled() then
						ExperienceMenuABTestManager.default:setCSATQualification()
					end
				end,
			},
			follow = {
				selected = followSelected,
				onActivated = function()
					props.setFollowing(not followSelected)
					props.postFollowing(networkImpl, not followSelected)

					SendAnalytics(
						Constants.AnalyticsMenuActionName,
						followSelected and Constants.AnalyticsUnfollowExperience or Constants.AnalyticsFollowExperience,
						{}
					)

					if IsMenuCsatEnabled() then
						ExperienceMenuABTestManager.default:setCSATQualification()
					end
				end,
			},
			reportExperience = {
				onActivated = function()
					TrustAndSafety.openReportDialogForPlace(Constants.AnalyticsInGameMenuName)

					SendAnalytics(
						Constants.AnalyticsMenuActionName,
						Constants.AnalyticsReportAbuse,
						{ source = Constants.AnalyticsExperiencePageSource }
					)
				end,
			},
		}

		local pageCount = #Pages.pagesByIndex
		local layoutOrder = 1

		frameChildren["Menu"] = renderMenu(props, actions)
		layoutOrder = layoutOrder + 1

		frameChildren["MenuEndDivider"] = Roact.createElement(Divider, {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, 1),
		})

		if props.autosize then
			return Roact.createElement("Frame", {
				LayoutOrder = props.LayoutOrder or 0,
				BackgroundTransparency = 1,
				Position = props.Position,
				-- pageCount nav buttons, plus pageCount - 1 dividers (which are 1px tall)
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, frameChildren)
		else
			return Roact.createElement("Frame", {
				LayoutOrder = props.LayoutOrder or 0,
				BackgroundTransparency = 1,
				Position = props.Position,
				-- pageCount nav buttons, plus pageCount - 1 dividers (which are 1px tall)
				Size = UDim2.new(1, -Constants.Zone.ContentOffset, 0, pageCount * NAV_BUTTON_HEIGHT + (pageCount - 1)),
			}, frameChildren)
		end
	end
end

PageNavigation = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		enableCopiedFeedback = appPolicy.enableCopiedFeedback(),
	}
end)(PageNavigation)

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isFavorited = state.gameInfo.isFavorited,
		isFollowed = state.gameInfo.isFollowed,
		shareInviteLink = if GetFFlagShareInviteLinkContextMenuV3Enabled()
			then state.shareLinks.Invites.ShareInviteLink
			else nil,
		fetchShareInviteLinkNetworkStatus = if GetFFlagShareInviteLinkContextMenuV3Enabled() then NetworkingShareLinks.GenerateLink.getStatus(state, RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue()) else nil,
		serverType = if GetFFlagShareInviteLinkContextMenuV3Enabled() then state.serverType else nil,
		gameInfo = if GetFFlagShareInviteLinkContextMenuV3Enabled() then state.gameInfo else nil,
	}
end, function(dispatch)
	local universeId = game.GameId

	return {
		fetchGameIsFavorite = function(networking)
			return universeId > 0 and dispatch(ApiFetchGameIsFavorite(networking, tostring(universeId)))
		end,
		postFavorite = function(networking, isFavorite)
			return dispatch(GamePostFavorite(networking, tostring(universeId), isFavorite))
		end,
		setFavorite = function(isFavorite)
			return dispatch(SetGameFavorite(tostring(universeId), isFavorite))
		end,
		postFollowing = function(networking, isFollowed)
			return dispatch(SendGameFollow(networking, tostring(universeId), isFollowed))
		end,
		setFollowing = function(isFollowed)
			return dispatch(SetGameFollow(tostring(universeId), isFollowed))
		end,
		setCurrentPage = function(pageKey)
			dispatch(SetCurrentPage(pageKey))
		end,
		fetchShareInviteLink = if GetFFlagShareInviteLinkContextMenuV3Enabled()
			then
			function()
				dispatch(NetworkingShareLinks.GenerateLink.API({ linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue() }))
			end
			else nil,
	}
end)(PageNavigation)

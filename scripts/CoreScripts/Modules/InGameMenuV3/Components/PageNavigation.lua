local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TrustAndSafety = require(RobloxGui.Modules.TrustAndSafety)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UrlBuilderPackage = require(CorePackages.Packages.UrlBuilder)
local UrlBuilder = UrlBuilderPackage.UrlBuilder
local Otter = InGameMenuDependencies.Otter
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local GameContextualMenu = UIBlox.App.Menu.GameContextualMenu
local withStyle = UIBlox.Core.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local getIconSize = UIBlox.App.ImageSet.getIconSize

local InGameMenu = script.Parent.Parent

local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Pages = require(script.Parent.Pages)
local ThemedTextLabel = require(script.Parent.ThemedTextLabel)
local Divider = require(script.Parent.Divider)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local CommonConstants = require(RobloxGui.Modules.Common.Constants)

local ApiFetchGameIsFavorite = require(InGameMenu.Thunks.ApiFetchGameIsFavorite)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)
local GamePostFavorite = require(InGameMenu.Thunks.GamePostFavorite)

local SetGameFollow = require(InGameMenu.Actions.SetGameFollow)
local SendGameFollow = require(InGameMenu.Thunks.SendGameFollow)

local ExperienceMenuABTestManager = require(InGameMenu.ExperienceMenuABTestManager)
local IsMenuCsatEnabled = require(InGameMenu.Flags.IsMenuCsatEnabled)

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Network = InGameMenu.Network
local httpRequest = require(Network.httpRequest)
local networkImpl = httpRequest(HttpRbxApiService)
local SocialDependencies = require(InGameMenu.SocialDependencies)
local IsExperienceOlderThanOneWeek = require(InGameMenu.Utility.IsExperienceOlderThanOneWeek)
local RoduxShareLinks = SocialDependencies.RoduxShareLinks
local NetworkingShareLinks = SocialDependencies.NetworkingShareLinks
local GetFFlagShareInviteLinkContextMenuV3Enabled =
	require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)
local FFlagEnableServerInGameMenu = require(RobloxGui.Modules.Common.Flags.GetFFlagEnableServerInGameMenu)
local FFlagRemoveLegacyMenuHighlighting = require(InGameMenu.Flags.GetFFlagRemoveLegacyMenuHighlighting)

local NAV_BUTTON_HEIGHT = 56
-- The left indent on divider lines
local DIVIDER_INDENT = 0
-- The size of a navigation button icon
local NAV_ICON_SIZE = getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Medium)

-- The left padding of a navigation button icon
local NAV_ICON_LEFT_PADDING = 20
-- The padding between navigation button icon and text
local NAV_ICON_TEXT_PADDING = 16
-- The right padding of navigation button text
local NAV_TEXT_RIGHT_PADDING = 24
local TEXT_SIZE_INSET = NAV_ICON_LEFT_PADDING + NAV_ICON_SIZE + NAV_ICON_TEXT_PADDING + NAV_TEXT_RIGHT_PADDING

local NavigationButton = Roact.PureComponent:extend("NavigationButton")

function NavigationButton:init(props)

	if not FFlagRemoveLegacyMenuHighlighting() then

		local startingFillProgress = props.selected and 1 or 0
		local fillProgress, setFillProgress = Roact.createBinding(startingFillProgress)

		self.fillSize = fillProgress:map(function(value)
			return UDim2.new(value, 0, 1, 0)
		end)

		local startingHoverTransparency = 0
		self.hoverTransparency, self.setHoverTransparency = Roact.createBinding(startingHoverTransparency)

		self.motor = Otter.createGroupMotor({
			fillProgress = startingFillProgress,
			hoverTransparency = startingHoverTransparency,
		})

		self.motor:onStep(function(values)
			setFillProgress(values.fillProgress)
			self.setHoverTransparency(values.hoverTransparency)
		end)
	end

	self:setState({
		hovering = false,
		pressing = false,
	})
end

function NavigationButton:renderWithSelectionCursor(getSelectionCursor)
	local props = self.props

	return withLocalization({
		text = props.text,
	})(function(localized)
		return withStyle(function(style)
			local showPressEffect = self.state.pressing and not props.selected
			local buttonFill = {
				Transparency = 1,
				Color = Color3.new(1, 1, 1),
			}

			if self.state.pressing then
				buttonFill = style.Theme.BackgroundOnPress
			elseif self.state.hovering then
				buttonFill = style.Theme.BackgroundOnHover
			end

			return Roact.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundTransparency = buttonFill.Transparency,
				BackgroundColor3 = buttonFill.Color,
				BorderSizePixel = 0,
				LayoutOrder = props.LayoutOrder,
				Size = UDim2.new(1, 0, 0, NAV_BUTTON_HEIGHT),
				Text = "",
				SelectionImageObject = getSelectionCursor(CursorKind.Square),
				[Roact.Event.Activated] = props.onActivated,
				[Roact.Ref] = props.LayoutOrder == 1 and props.mainPageFirstButtonRef or nil,
				[Roact.Event.MouseEnter] = function()
					self:setState({
						hovering = true,
					})
				end,
				[Roact.Event.MouseLeave] = function()
					self:setState({
						hovering = false,
						pressing = false,
					})
				end,
				[Roact.Event.InputBegan] = function(_, input)
					if
						input.UserInputType == Enum.UserInputType.MouseButton1
						or input.UserInputType == Enum.UserInputType.Touch
					then
						self:setState({
							pressing = true,
						})
					end
				end,
				[Roact.Event.InputEnded] = function(_, input)
					if
						input.UserInputType == Enum.UserInputType.MouseButton1
						or input.UserInputType == Enum.UserInputType.Touch
					then
						self:setState({
							pressing = false,
						})
					end
				end,
			}, {
				ContentContainer = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					ZIndex = 3,
					BackgroundTransparency = 1,
				}, {
					Icon = Roact.createElement(ImageSetLabel, {
						AnchorPoint = Vector2.new(0, 0.5),
						BackgroundTransparency = 1,
						Image = props.image,
						ImageColor3 = style.Theme.IconEmphasis.Color,
						ImageTransparency = divideTransparency(
							style.Theme.IconEmphasis.Transparency,
							showPressEffect and 2 or 1
						),
						Position = UDim2.new(0, NAV_ICON_LEFT_PADDING, 0.5, 0),
						Size = UDim2.new(0, NAV_ICON_SIZE, 0, NAV_ICON_SIZE),
						ZIndex = 3,
					}),
					Text = Roact.createElement(ThemedTextLabel, {
						fontKey = "Header2",
						themeKey = "TextEmphasis",

						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0, NAV_ICON_LEFT_PADDING + NAV_ICON_SIZE + NAV_ICON_TEXT_PADDING, 0.5, 0),
						Size = UDim2.new(1, -TEXT_SIZE_INSET, 1, 0),
						Text = localized.text,
						TextTransparency = divideTransparency(
							style.Theme.TextEmphasis.Transparency,
							showPressEffect and 2 or 1
						),
						TextXAlignment = Enum.TextXAlignment.Left,
						ZIndex = 3,
					}),
				}),
				SelectedFill = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					Size = self.fillSize,
					BackgroundColor3 = style.Theme.BackgroundMuted.Color,
					ZIndex = 2,
				}),
			})
		end)
	end)
end

function NavigationButton:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

function NavigationButton:didUpdate()
	if not FFlagRemoveLegacyMenuHighlighting() then
		self.motor:setGoal({
			fillProgress = Otter.spring(self.props.selected and 1 or 0, {
				frequency = 2.5,
			}),
			hoverTransparency = Otter.spring(self.state.hovering and 1 or 0, {
				frequency = 5,
			}),
		})
	end
end

local function shouldShowShareInviteLink(gameInfo, serverType)
	if
		GetFFlagShareInviteLinkContextMenuV3Enabled()
		and FFlagEnableServerInGameMenu()
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

	function PageNavigation:didUpdate(prevProps)
		if self.props.currentPage == "MainPage" and (prevProps.shareInviteLink == nil and self.props.shareInviteLink ~= nil) then
			-- TODO(COEXP-318): Pull up sharesheet.
			local linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue()
			local linkId = self.props.shareInviteLink.linkId
			local _url = UrlBuilder.sharelinks.appsflyer(linkId, linkType)
		end
	end

	function PageNavigation:render()
		local props = self.props
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
							SendAnalytics(Constants.ShareLinksAnalyticsName, Constants.ShareLinksAnalyticsButtonClickName, {
								page = "inGameMenu",
								subpage = props.currentPage,
							})
	
							if props.shareInviteLink == nil then
								props.fetchShareInviteLink()
							else
								-- TODO(COEXP-318): Pull up sharesheet if shareInviteLink is not nil.
								local linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue()
								local linkId = self.props.shareInviteLink.linkId
								local _url = UrlBuilder.sharelinks.appsflyer(linkId, linkType)
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
					TrustAndSafety.openReportDialogForPlace()
	
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
	
		if FFlagRemoveLegacyMenuHighlighting() then
			frameChildren["Menu"] = renderMenu(props, actions)
			layoutOrder = layoutOrder + 1
	
			frameChildren["MenuEndDivider"] = Roact.createElement(Divider, {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1),
			})
		else
			-- delete NavigationButton when deleting this code path
			for index, page in ipairs(Pages.pagesByIndex) do
				if page.parentPage == Constants.MainPagePageKey then
					if
						GetFFlagShareInviteLinkContextMenuV3Enabled()
						and page.key == "ShareServerLink"
						and not shouldShowShareInviteLink(props.gameInfo, props.serverType)
					then
						continue
					end
	
					frameChildren["Page" .. page.key] = Roact.createElement(NavigationButton, {
						image = (page.actionKey and actions[page.actionKey].selected and page.iconOn) or page.icon,
						LayoutOrder = layoutOrder,
						selected = props.currentPage == page.key,
						text = (page.actionKey and actions[page.actionKey].selected and page.titleOn) or page.title,
						onActivated = function()
							if page.actionKey and actions[page.actionKey] then
								actions[page.actionKey].onActivated()
							else
								props.setCurrentPage(page.key)
							end
						end,
						mainPageFirstButtonRef = layoutOrder == 1 and props.mainPageFirstButtonRef or nil,
					})
	
					layoutOrder = layoutOrder + 1
	
					if index < pageCount then
						frameChildren["Divider" .. layoutOrder] = Roact.createElement(Divider, {
							LayoutOrder = layoutOrder,
							Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1),
						})
	
						layoutOrder = layoutOrder + 1
					end
				end
			end
		end
	
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
								page = "inGameMenu",
								subpage = props.currentPage,
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
					TrustAndSafety.openReportDialogForPlace()
	
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
	
		if FFlagRemoveLegacyMenuHighlighting() then
			frameChildren["Menu"] = renderMenu(props, actions)
			layoutOrder = layoutOrder + 1
	
			frameChildren["MenuEndDivider"] = Roact.createElement(Divider, {
				LayoutOrder = layoutOrder,
				Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1),
			})
		else
			-- delete NavigationButton when deleting this code path
			for index, page in ipairs(Pages.pagesByIndex) do
				if page.parentPage == Constants.MainPagePageKey then
					if
						GetFFlagShareInviteLinkContextMenuV3Enabled()
						and page.key == "ShareServerLink"
						and not shouldShowShareInviteLink(props.gameInfo, props.serverType)
					then
						continue
					end
	
					frameChildren["Page" .. page.key] = Roact.createElement(NavigationButton, {
						image = (page.actionKey and actions[page.actionKey].selected and page.iconOn) or page.icon,
						LayoutOrder = layoutOrder,
						selected = props.currentPage == page.key,
						text = (page.actionKey and actions[page.actionKey].selected and page.titleOn) or page.title,
						onActivated = function()
							if page.actionKey and actions[page.actionKey] then
								actions[page.actionKey].onActivated()
							else
								props.setCurrentPage(page.key)
							end
						end,
						mainPageFirstButtonRef = layoutOrder == 1 and props.mainPageFirstButtonRef or nil,
					})
	
					layoutOrder = layoutOrder + 1
	
					if index < pageCount then
						frameChildren["Divider" .. layoutOrder] = Roact.createElement(Divider, {
							LayoutOrder = layoutOrder,
							Size = UDim2.new(1, -DIVIDER_INDENT, 0, 1),
						})
	
						layoutOrder = layoutOrder + 1
					end
				end
			end
		end
	
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

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isFavorited = state.gameInfo.isFavorited,
		isFollowed = state.gameInfo.isFollowed,
		currentPage = state.menuPage,
		shareInviteLink = if GetFFlagShareInviteLinkContextMenuV3Enabled()
			then state.shareLinks.Invites.ShareInviteLink
			else nil,
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
			SendAnalytics("open_" .. pageKey .. "_tab", Constants.AnalyticsMenuActionName, {})
		end,
		fetchShareInviteLink = if GetFFlagShareInviteLinkContextMenuV3Enabled()
			then
				function()
					dispatch(NetworkingShareLinks.GenerateLink.API({ linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue() }))
				end
			else nil,
	}
end)(PageNavigation)

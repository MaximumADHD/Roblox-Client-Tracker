--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")

local ExternalContentSharingProtocol
	= require(CorePackages.Workspace.Packages.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local RoactRodux = InGameMenuDependencies.RoactRodux
local Cryo = InGameMenuDependencies.Cryo
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)
local withLocalization = require(InGameMenu.Localization.withLocalization)
local CommonConstants = require(RobloxGui.Modules.Common.Constants)

local Page = require(InGameMenu.Components.Page)
local PageWithSearch = require(InGameMenu.Components.PageWithSearch)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)
local RootedConnection = require(InGameMenu.Components.Connection.RootedConnection)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local IsExperienceOlderThanOneWeek = require(InGameMenu.Utility.IsExperienceOlderThanOneWeek)
local GetFriends = require(InGameMenu.Thunks.GetFriends)
local SocialDependencies = require(InGameMenu.SocialDependencies)
local RoduxShareLinks = SocialDependencies.RoduxShareLinks
local UrlBuilder = SocialDependencies.UrlBuilder

local InviteFriendsList = require(script.InviteFriendsList)
local AddFriendsNow = require(script.AddFriendsNow)
local LoadingFriendsError = require(script.LoadingFriendsError)
local ShareInviteLinkButton = require(script.ShareInviteLinkButton)
local mapDispatchToProps = require(script.InviteFriendsPageMapDispatchToProps)

local IconButton = UIBlox.App.Button.IconButton
local getIconSize = UIBlox.App.ImageSet.getIconSize
local ICON_SIZE = getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Medium)
local Images = UIBlox.App.ImageSet.Images

local SearchBar = require(script.Parent.SearchBar)

local Flags = InGameMenu.Flags
local GetFFlagUsePageSearchAnimation = require(Flags.GetFFlagUsePageSearchAnimation)
local GetFFlagShareInviteLinkContextMenuV3Enabled = require(Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)
local GetFFlagLuaAppNewShareSheet = require(CorePackages.Workspace.Packages.ExternalContentSharingProtocol).Flags.GetFFlagLuaAppNewShareSheet
local GetFFlagShareInviteLinkContextMenuV3ConsoleFix =
	require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3ConsoleFix)

local ACTIONS_ICON_PADDING = 10


local isTenFootInterface = if GetFFlagShareInviteLinkContextMenuV3ConsoleFix()
	then GuiService:IsTenFootInterface()
	else nil

local InviteFriendsPage = Roact.PureComponent:extend("InviteFriendsPage")

InviteFriendsPage.validateProps = t.strictInterface({
	pageTitle = t.string,
	canCaptureFocus = t.optional(t.boolean),
	PlayersService = t.union(t.Instance, t.table),
	shouldForgetPreviousSelection = t.optional(t.boolean),
})

InviteFriendsPage.defaultProps = {
	PlayersService = Players,
}

function InviteFriendsPage:init()
	self.state = {
		loadingFriends = true,
		loadingFriendsError = false,
		friends = {},
		isFilteringMode = false,
		searchText = "",
		serverType = nil,
	}

	self.scrollingFrameRef = Roact.createRef()

	self.pageHeaderActivated = function()
		local scrollingFrame = self.scrollingFrameRef:getValue()
		if scrollingFrame then
			scrollingFrame:scrollToTop()
		end
	end

	self.onSearchTextChanged = function(searchText)
		if searchText ~= self.state.searchText and self.state.isFilteringMode then
			self:setState({
				searchText = searchText,
			})
		end
	end

	self.onSearchModeEntered = function()
		if not self.state.isFilteringMode then
			self:setState({
				isFilteringMode = true,
			})
		end
	end

	self.onSearchBarDismissed = function()
		if self.state.isFilteringMode then
			self:setState({
				isFilteringMode = false,
				searchText = "",
			})
		end
	end

	self.onMenuOpenChanged = function(menuOpen, wasOpen)
		if not GetFFlagUsePageSearchAnimation() then
			if not menuOpen and wasOpen then
				self.onSearchBarDismissed()
			end
		end

		if not menuOpen and wasOpen then
			local scrollingFrame = self.scrollingFrameRef:getValue()
			if scrollingFrame and scrollingFrame.CanvasPosition.Y > 0 then
				scrollingFrame.CanvasPosition = Vector2.new(0, 0)
			end
		end
	end

	if GetFFlagShareInviteLinkContextMenuV3Enabled() then
		self.shareInviteLinkButtonOnActivated = function()
			SendAnalytics(Constants.ShareLinksAnalyticsName, Constants.ShareLinksAnalyticsButtonClickName, {
				btn = "shareServerInviteLink",
				page = "inGameMenu",
				subpage = "inviteFriendsPage",
			})

			if self.props.shareInviteLink == nil then
				self.props.fetchShareInviteLink()
			else
				self.showSharesheet(self.props.shareInviteLink.linkId)
			end
		end

		self.showSharesheet = function(linkId)
			local url = UrlBuilder.sharelinks.appsflyer(linkId, RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue())
			if GetFFlagLuaAppNewShareSheet() then
				ExternalContentSharingProtocol:shareUrl({
					url = url,
					context = Constants.ShareLinksAnalyticsExternalContentSharingInviteFriendsContextName
				})
			else
				ExternalContentSharingProtocol:shareText({
					text = url,
					context = Constants.ShareLinksAnalyticsExternalContentSharingInviteFriendsContextName
				})
			end
		end
	end
end

function InviteFriendsPage:shouldShowShareInviteLink(gameInfo)
	if GetFFlagShareInviteLinkContextMenuV3ConsoleFix() then
		if GetFFlagShareInviteLinkContextMenuV3Enabled()
			and self.props.serverType == CommonConstants.STANDARD_SERVER
			and IsExperienceOlderThanOneWeek(gameInfo)
			and not isTenFootInterface
		then
			return true
		end
	else
		if GetFFlagShareInviteLinkContextMenuV3Enabled()
			and self.props.serverType == CommonConstants.STANDARD_SERVER
			and IsExperienceOlderThanOneWeek(gameInfo)
		then
			return true
		end
	end

	return false
end

function InviteFriendsPage:renderLoadingPage()
	return withLocalization({
		loading = "CoreScripts.InGameMenu.InviteFriends.Loading",
	})(function(localized)
		return Roact.createElement(ThemedTextLabel, {
			Size = UDim2.new(1, 0, 1, 0),
			Text = localized.loading,

			fontKey = "Header1",
			themeKey = "TextEmphasis",
		})
	end)
end

function InviteFriendsPage:renderError()
	return Roact.createElement(LoadingFriendsError, {
		onRetry = function()
			self:setState({
				loadingFriends = true,
				loadingFriendsError = false,
			})
			self:loadFriends()
		end,
		canCaptureFocus = self.props.canCaptureFocus,
	})
end

function InviteFriendsPage:renderNoFriends()
	return Roact.createElement(AddFriendsNow, {
		canCaptureFocus = self.props.canCaptureFocus,
	})
end

local function sortFriends(f1, f2)
	if f1.IsOnline == f2.IsOnline then
		return f1.Username:lower() < f2.Username:lower()
	else
		return f1.IsOnline and not f2.IsOnline
	end
end

function InviteFriendsPage:renderFriends()
	return Roact.createElement(InviteFriendsList, {
		friends = self.state.friends,
		canCaptureFocus = self.props.canCaptureFocus,
		isFilteringMode = self.state.isFilteringMode,
		searchText = self.state.searchText,
		scrollingFrameRef = self.scrollingFrameRef,
	})
end

function InviteFriendsPage:render()
	local state = self.state
	local children = {
		Watcher = Roact.createElement(PageNavigationWatcher, {
			desiredPage = Constants.InviteFriendsPageKey,
			onNavigateTo = function()
				self:loadFriends()
			end,
			onNavigate = self.onMenuOpenChanged,
		}),
	}

	if state.loadingFriends then
		children.Loading = self:renderLoadingPage()
	elseif state.loadingFriendsError then
		children.ErrorLoading = self:renderError()
	elseif #state.friends == 0 then
		children.NoFriends = self:renderNoFriends()
	else
		children.FriendsList = self:renderFriends()
	end

	return Roact.createElement(RootedConnection, {
		render = function(isRooted)
			return Roact.createElement(FocusHandler, {
				shouldForgetPreviousSelection = self.props.shouldForgetPreviousSelection,
				isFocused = self.props.canCaptureFocus and state.loadingFriends and isRooted,
			}, {
				Page = if GetFFlagUsePageSearchAnimation() then Roact.createElement(PageWithSearch, {
					pageTitle = self.props.pageTitle,
					titleChildren = self:getActions(),
					hasSearchBar = true,
					searchText = self.state.searchText,
					isFilteringMode = self.state.isFilteringMode,
					onSearchTextChanged = self.onSearchTextChanged,
					onSearchModeEntered = self.onSearchModeEntered,
					onSearchBarDismissed = self.onSearchBarDismissed,
					onHeaderActivated = self.pageHeaderActivated,
				}, children)
				else Roact.createElement(Page, {
						pageTitle = self.props.pageTitle,
						titleChildren = self:getActions(),
						isFilteringMode = self.state.isFilteringMode,
						searchBar = Roact.createElement(SearchBar, {
							size = UDim2.new(1, 0, 0, 36),
							text = self.state.searchText,
							autoCaptureFocus = true,
							onTextChanged = self.onSearchTextChanged,
							onCancelled = self.onSearchBarDismissed,
						}),
						onHeaderActivated = self.pageHeaderActivated,
					}, children),
			})
		end,
	})
end

function InviteFriendsPage:getActions()
	if GetFFlagUsePageSearchAnimation() then
		return {
			ShareIcon = if self:shouldShowShareInviteLink(self.props.gameInfo) then Roact.createElement(ShareInviteLinkButton, {
				layoutOrder = 1,
				fetchShareInviteLinkAndOpenShareSheet = self.shareInviteLinkButtonOnActivated,
			}) else nil,
			SearchIcon = Roact.createElement(IconButton, {
				layoutOrder = GetFFlagShareInviteLinkContextMenuV3Enabled() and 2 or 1,
				size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				icon = Images["icons/common/search"],
				onActivated = self.onSearchModeEntered,
			}),
		}
	end

	local width = (
		GetFFlagShareInviteLinkContextMenuV3Enabled() and (2 * ICON_SIZE) + ACTIONS_ICON_PADDING or ICON_SIZE
	)
	local padding = GetFFlagShareInviteLinkContextMenuV3Enabled() and ACTIONS_ICON_PADDING or 0
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, width, 1, 0),
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, padding),
		}),
		ShareIcon = if self:shouldShowShareInviteLink(self.props.gameInfo) then Roact.createElement(ShareInviteLinkButton, {
			layoutOrder = 1,
			fetchShareInviteLinkAndOpenShareSheet = self.shareInviteLinkButtonOnActivated,
		}) else nil,
		SearchIcon = Roact.createElement(IconButton, {
			layoutOrder = GetFFlagShareInviteLinkContextMenuV3Enabled() and 2 or 1,
			size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
			icon = Images["icons/common/search"],
			onActivated = function()
				self:setState({
					isFilteringMode = true,
				})
			end,
		}),
	})
end

function InviteFriendsPage:didMount()
	self.mounted = true
	self:loadFriends()

	if GetFFlagShareInviteLinkContextMenuV3Enabled() then
		if self.state.serverType == nil then
			self.props.fetchServerType()
		end
	end
end

function InviteFriendsPage:didUpdate(prevProps, prevState)
	if prevProps.shareInviteLink == nil and self.props.shareInviteLink ~= nil then
		local linkId = self.props.shareInviteLink.linkId
		SendAnalytics(Constants.ShareLinksAnalyticsName, Constants.ShareLinksAnalyticsLinkGeneratedName, {
			page = "inGameMenuV3",
			subpage = "inviteFriendsPage",
			linkId = linkId,
			linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue(),
		})
		self.showSharesheet(linkId)
	end
end

function InviteFriendsPage:loadFriends()
	self.props.getFriends(self.props.PlayersService)
		:andThen(function(friends)
			friends = Cryo.List.sort(friends, sortFriends)
			if self.mounted then
				self:setState({
					loadingFriends = false,
					friends = friends,
				})
			end
		end)
		:catch(function()
			if self.mounted then
				self:setState({
					loadingFriends = false,
					loadingFriendsError = true,
				})
			end
		end)
end

function InviteFriendsPage:willUnmount()
	self.mounted = false
end

if GetFFlagShareInviteLinkContextMenuV3Enabled() then
	return RoactRodux.connect(function(state, props)
		local canCaptureFocus = state.menuPage == Constants.InviteFriendsPageKey
			and state.isMenuOpen
			and state.displayOptions.inputType == Constants.InputType.Gamepad
			and not state.respawn.dialogOpen
			and state.currentZone == 1

		return {
			canCaptureFocus = canCaptureFocus,
			shouldForgetPreviousSelection = state.menuPage ~= Constants.InviteFriendsPageKey,
			shareInviteLink = state.shareLinks.Invites.ShareInviteLink,
			gameInfo = state.gameInfo,
			serverType = state.serverType,
		}
	end, mapDispatchToProps)(InviteFriendsPage)
else
	return RoactRodux.connect(function(state, props)
		local canCaptureFocus = state.menuPage == Constants.InviteFriendsPageKey
			and state.isMenuOpen
			and state.displayOptions.inputType == Constants.InputType.Gamepad
			and not state.respawn.dialogOpen
			and state.currentZone == 1

		return {
			canCaptureFocus = canCaptureFocus,
			shouldForgetPreviousSelection = state.menuPage ~= Constants.InviteFriendsPageKey,
		}
	end, function(dispatch)
		return {
			getFriends = function(playersService)
				return dispatch(GetFriends(playersService))
			end,
		}
	end)(InviteFriendsPage)
end

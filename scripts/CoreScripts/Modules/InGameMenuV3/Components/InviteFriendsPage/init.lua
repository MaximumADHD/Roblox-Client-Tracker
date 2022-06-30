local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local RoactRodux = InGameMenuDependencies.RoactRodux
local Cryo = InGameMenuDependencies.Cryo
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)
local Promise = require(InGameMenu.Utility.Promise)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local Page = require(InGameMenu.Components.Page)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local FocusHandler = require(InGameMenu.Components.Connection.FocusHandler)
local RootedConnection = require(InGameMenu.Components.Connection.RootedConnection)

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
local GetFFlagShareInviteLinkContextMenuV3Enabled = require(Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)

local ACTIONS_ICON_PADDING = 10

local InviteFriendsPage = Roact.PureComponent:extend("InviteFriendsPage")

InviteFriendsPage.validateProps = t.strictInterface({
	pageTitle = t.string,
	canCaptureFocus = t.optional(t.boolean),
	PlayersService = t.union(t.Instance, t.table),
	menuPage = t.string,
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
	}

	self.onSearchTextChanged = function(searchText)
		if searchText ~= self.state.searchText and self.state.isFilteringMode then
			self:setState({
				searchText = searchText,
			})
		end
	end

	self.onSearchBarDismissed = function()
		self:setState({
			isFilteringMode = false,
			searchText = "",
		})
	end

	if GetFFlagShareInviteLinkContextMenuV3Enabled() then
		self.shareInviteLinkButtonOnActivated = function()
			if self.props.shareInviteLink == nil then
				self.props.fetchShareInviteLink()
			else
				-- TODO COEXP-319: Show sharesheet if self.props.shareInviteLink is present
			end
		end
	end
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
	})
end

function InviteFriendsPage:render()
	local state = self.state
	local children = {
		Watcher = Roact.createElement(PageNavigationWatcher, {
			desiredPage = "InviteFriends",
			onNavigateTo = function()
				self:loadFriends()
			end,
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
				shouldForgetPreviousSelection = self.props.menuPage ~= "InviteFriends",
				isFocused = self.props.canCaptureFocus and state.loadingFriends and isRooted,
			}, {
				Page = Roact.createElement(Page, {
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
				}, children),
			})
		end,
	})
end

function InviteFriendsPage:getActions()
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
		ShareIcon = GetFFlagShareInviteLinkContextMenuV3Enabled() and Roact.createElement(ShareInviteLinkButton, {
			layoutOrder = 1,
			onActivated = self.shareInviteLinkButtonOnActivated,
		}) or nil,
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
end

function InviteFriendsPage:didUpdate(prevProps, prevState)
	if not self.props.isMenuOpen and prevProps.isMenuOpen then
		self.onSearchBarDismissed()
	end

	-- TODO COEXP-319: Show sharesheet if shareInviteLink is present
end

function InviteFriendsPage:loadFriends()
	Promise.new(function(resolve, reject)
		coroutine.wrap(function()
			local localPlayer = self.props.PlayersService.LocalPlayer
			local success, friendsPages = pcall(function()
				return self.props.PlayersService:GetFriendsAsync(localPlayer.UserId)
			end)

			if not success then
				reject("Error loading friends")
				return
			end

			local friends = {}

			while true do
				for _, item in ipairs(friendsPages:GetCurrentPage()) do
					friends[#friends + 1] = {
						IsOnline = item.IsOnline,
						Id = item.Id,
						Username = item.Username,
						DisplayName = item.DisplayName,
						itemRef = nil,
					}
				end

				if not friendsPages.IsFinished then
					success = pcall(function()
						friendsPages:AdvanceToNextPageAsync()
					end)
					if not success then
						reject("Error loading friends")
						return
					end
				else
					break
				end
			end

			friends = Cryo.List.sort(friends, sortFriends)
			resolve(friends)
		end)()
	end)
		:andThen(function(friends)
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
		local canCaptureFocus = state.menuPage == "InviteFriends"
			and state.isMenuOpen
			and state.displayOptions.inputType == Constants.InputType.Gamepad
			and not state.respawn.dialogOpen
			and state.currentZone == 1
	
		return {
			canCaptureFocus = canCaptureFocus,
			menuPage = state.menuPage,
			isMenuOpen = state.isMenuOpen,
			shareInviteLink = state.shareLinks.Invites.ShareInviteLink
		}
	end, mapDispatchToProps)(InviteFriendsPage)
else
	return RoactRodux.connect(function(state, props)
		local canCaptureFocus = state.menuPage == "InviteFriends"
			and state.isMenuOpen
			and state.displayOptions.inputType == Constants.InputType.Gamepad
			and not state.respawn.dialogOpen
			and state.currentZone == 1
	
		return {
			canCaptureFocus = canCaptureFocus,
			menuPage = state.menuPage,
			isMenuOpen = state.isMenuOpen,
		}
	end)(InviteFriendsPage)
end

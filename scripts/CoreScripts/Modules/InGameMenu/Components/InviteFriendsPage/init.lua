--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local RoactRodux = InGameMenuDependencies.RoactRodux
local Cryo = InGameMenuDependencies.Cryo

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

local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

local InviteFriendsPage = Roact.PureComponent:extend("InviteFriendsPage")

InviteFriendsPage.validateProps = t.strictInterface({
	pageTitle = t.string,
	canCaptureFocus = t.optional(t.boolean),
	PlayersService = t.union(t.Instance, t.table),
	menuPage = GetFFlagIGMGamepadSelectionHistory() and t.string or nil
})

InviteFriendsPage.defaultProps = {
	PlayersService = Players,
}

function InviteFriendsPage:init()
	self.backButtonRef = Roact.createRef()
	self.searchBoxRef = Roact.createRef()

	self.state = {
		loadingFriends = true,
		loadingFriendsError = false,
		friends = {},
	}
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
		searchBoxRef = self.searchBoxRef,
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
		})
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
				shouldForgetPreviousSelection = GetFFlagIGMGamepadSelectionHistory()
					and self.props.menuPage ~= "InviteFriends"
					or nil,
				isFocused = self.props.canCaptureFocus
					and state.loadingFriends
					and isRooted,

				didFocus = function()
					GuiService.SelectedCoreObject = self.backButtonRef:getValue()
				end,
			}, {
				Page = Roact.createElement(Page, {
					pageTitle = self.props.pageTitle,
					buttonRef = self.backButtonRef,
					NextSelectionDown = self.searchBoxRef,
				}, children),
			})
		end,
	})
end

function InviteFriendsPage:didMount()
	self.mounted = true
	self:loadFriends()
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
					friends[#friends+1] = {
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
	end):andThen(function(friends)
		if self.mounted then
			self:setState({
				loadingFriends = false,
				friends = friends,
			})
		end
	end):catch(function()
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

return RoactRodux.connect(
	function(state, props)
		local canCaptureFocus = state.menuPage == "InviteFriends"
			and state.isMenuOpen
			and state.displayOptions.inputType == Constants.InputType.Gamepad
			and not state.respawn.dialogOpen
			and state.currentZone == 1

		return {
			canCaptureFocus = canCaptureFocus,
			menuPage = GetFFlagIGMGamepadSelectionHistory() and state.menuPage or nil
		}
	end
)(InviteFriendsPage)

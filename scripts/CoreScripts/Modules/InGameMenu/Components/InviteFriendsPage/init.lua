local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local Promise = require(InGameMenu.Utility.Promise)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local Page = require(InGameMenu.Components.Page)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
local InviteFriendsList = require(script.InviteFriendsList)
local AddFriendsNow = require(script.AddFriendsNow)
local LoadingFriendsError = require(script.LoadingFriendsError)

local InviteFriendsPage = Roact.PureComponent:extend("InviteFriendsPage")
InviteFriendsPage.validateProps = t.strictInterface({
	pageTitle = t.string,
})

function InviteFriendsPage:init()
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
		end
	})
end

function InviteFriendsPage:renderNoFriends()
	return Roact.createElement(AddFriendsNow)
end

function InviteFriendsPage:renderFriends()
	return Roact.createElement(InviteFriendsList, {
		players = self.state.friends,
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

	return Roact.createElement(Page, {
		pageTitle = self.props.pageTitle,
	}, children)
end

function InviteFriendsPage:didMount()
	self.mounted = true
	self:loadFriends()
end

function InviteFriendsPage:loadFriends()
	Promise.new(function(resolve, reject)
		coroutine.wrap(function()
			local localPlayer = Players.LocalPlayer
			local success, friendsPages = pcall(function()
				return Players:GetFriendsAsync(localPlayer.UserId)
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

			resolve(friends)
		end)()
	end):andThen(function(friends)
		if self.mounted then
			self:setState({
				loadingFriends = false,
				friends = friends
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

return InviteFriendsPage
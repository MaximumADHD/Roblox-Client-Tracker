--[[
	The RoduxProfile package API.

	It must be configured before use with required options:

		{
			roduxNetworking - The RoduxNetworking instance to use. The reducer it provides for network
				status will be installed under the "NetworkStatus" key within the Profile reducer
		}
]]
local Packages = script.Parent :: any
local Dash = require(Packages.Dash)
local NetworkingCurrentlyWearing = require(Packages.NetworkingCurrentlyWearing)
local RoduxNetworking = require(Packages.RoduxNetworking)
local Profile = require(script.Reducers.Profile)
local UsersReducer = require(Packages.RoduxUsers)
local PresenceReducer = require(Packages.RoduxPresence)
local FriendsReducer = require(Packages.RoduxFriends)
local GamesReducer = require(Packages.RoduxGames)
local AliasesReducer = require(Packages.RoduxAliases)
local ContactsReducer = require(Packages.RoduxContacts)
local NetworkingUsers = require(Packages.NetworkingUsers)
local NetworkingUserInfo = require(Packages.NetworkingUserInfo)
local NetworkingFriends = require(Packages.NetworkingFriends)
local NetworkingPresence = require(Packages.NetworkingPresence)
local NetworkingBlocking = require(Packages.NetworkingBlocking)
local NetworkingGames = require(Packages.NetworkingGames)
local NetworkingAliases = require(Packages.NetworkingAliases)

return {
	config = function(options)
		options = Dash.join(options, {
			networkingCurrentlyWearing = NetworkingCurrentlyWearing.config({
				-- Networking instance is used only to match action names
				roduxNetworking = RoduxNetworking.mock(),
			}),
			networkingBlocking = NetworkingBlocking.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
			roduxUsers = UsersReducer.config({
				keyPath = "Profile.Users",
			}),
			roduxFriends = FriendsReducer.config({
				keyPath = "Profile.Friends",
			}),
			roduxPresence = PresenceReducer.config({
				keyPath = "Profile.Presence",
			}),
			roduxGames = GamesReducer.config({
				keyPath = "Profile.Games",
			}),
			roduxAliases = AliasesReducer.config({
				keyPath = "Profile.Aliases",
			}),
			roduxContacts = ContactsReducer.config({
				keyPath = "Profile.Contacts",
			}),
			networkingUsers = NetworkingUsers.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
			networkingUserInfo = NetworkingUserInfo.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
			networkingFriends = NetworkingFriends.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
			networkingPresence = NetworkingPresence.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
			networkingAliases = NetworkingAliases.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
			networkingGames = NetworkingGames.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Profile(options)
			end,
			Actions = {
				SetNextDataExpirationTime = require(script.Actions.SetNextDataExpirationTime),
				SetProfilePageDataStatus = require(script.Actions.SetProfilePageDataStatus),
				SetProfilePeekViewState = require(script.Actions.SetProfilePeekViewState),
			},
			Models = {
				AssetInfo = require(script.Models.AssetInfo),
			},
		}
	end,
}

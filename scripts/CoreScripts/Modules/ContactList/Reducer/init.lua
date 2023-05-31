local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall
local RoduxFriends = dependencies.RoduxFriends
local RoduxPresence = dependencies.RoduxPresence
local RoduxUsers = dependencies.RoduxUsers
local RoduxNetworking = dependencies.RoduxNetworking

local Navigation = require(script.Navigation)

local Reducer = Rodux.combineReducers({
	Navigation = Navigation,
	Call = RoduxCall.installReducer(),
	Friends = RoduxFriends.installReducer(),
	Presence = RoduxPresence.installReducer(),
	Users = RoduxUsers.installReducer(),
	NetworkStatus = RoduxNetworking.installReducer(),
})

return Reducer

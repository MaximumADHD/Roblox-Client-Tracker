local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall
local RoduxFriends = dependencies.RoduxFriends

local Navigation = require(script.Navigation)

local Reducer = Rodux.combineReducers({
	Navigation = Navigation,
	Call = RoduxCall.installReducer(),
	Friends = RoduxFriends.installReducer(),
})

return Reducer

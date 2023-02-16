local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local RoduxFriends = dependencies.RoduxFriends

local Callers = require(script.Callers)
local Navigation = require(script.Navigation)

local Reducer = Rodux.combineReducers({
	Callers = Callers,
	Navigation = Navigation,
	Friends = RoduxFriends.installReducer(),
})

return Reducer

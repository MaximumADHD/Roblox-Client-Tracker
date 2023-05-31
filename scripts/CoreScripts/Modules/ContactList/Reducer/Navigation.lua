local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local Pages = require(script.Parent.Parent.Enums.Pages)

local CloseContactList = require(script.Parent.Parent.Actions.CloseContactList)
local OpenContactList = require(script.Parent.Parent.Actions.OpenContactList)
local CloseCallDetails = require(script.Parent.Parent.Actions.CloseCallDetails)
local OpenCallDetails = require(script.Parent.Parent.Actions.OpenCallDetails)

return Rodux.createReducer({
	currentPage = nil,
	currentTag = "",
	callDetailParticipants = nil,
}, {
	[OpenCallDetails.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = Pages.CallDetails,
			callDetailParticipants = action.participants,
		})
	end,
	[CloseCallDetails.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = Pages.CallHistory,
			callDetailParticipants = Cryo.None,
		})
	end,
	[OpenContactList.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = Pages.FriendList,
			currentTag = action.tag,
		})
	end,
	[CloseContactList.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = Cryo.None,
			currentTag = "",
		})
	end,
} :: {
	[string]: (
		string,
		any
	) -> {
		currentPage: Pages.PagesType | nil,
		currentTag: string,
		callDetailParticipants: {} | nil,
	},
})

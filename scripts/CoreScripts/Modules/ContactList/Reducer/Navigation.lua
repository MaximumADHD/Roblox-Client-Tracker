local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local Pages = require(script.Parent.Parent.Enums.Pages)

local CloseContactList = require(script.Parent.Parent.Actions.CloseContactList)
local OpenContactList = require(script.Parent.Parent.Actions.OpenContactList)
local SetCurrentPage = require(script.Parent.Parent.Actions.SetCurrentPage)

return Rodux.createReducer({
	currentPage = nil,
	currentTag = "",
}, {
	[OpenContactList.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = Pages.CallHistory,
			currentTag = action.tag,
		})
	end,
	[SetCurrentPage.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = action.page,
		})
	end,
	[CloseContactList.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = Cryo.None,
			currentTag = "",
		})
	end,
} :: {
	[string]: (string, any) -> {
		currentPage: Pages.PagesType | nil,
		currentTag: string,
	},
})

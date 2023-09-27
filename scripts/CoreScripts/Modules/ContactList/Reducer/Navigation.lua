local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local Pages = require(script.Parent.Parent.Enums.Pages)

local SetCurrentPage = require(script.Parent.Parent.Actions.SetCurrentPage)
local SetCurrentTag = require(script.Parent.Parent.Actions.SetCurrentTag)

return Rodux.createReducer({
	currentPage = nil,
	currentTag = "",
}, {
	[SetCurrentPage.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentPage = if action.page == nil then Cryo.None else action.page,
		})
	end,
	[SetCurrentTag.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentTag = action.tag,
		})
	end,
} :: {
	[string]: (string, any) -> {
		currentPage: Pages.PagesType | nil,
		currentTag: string,
	},
})

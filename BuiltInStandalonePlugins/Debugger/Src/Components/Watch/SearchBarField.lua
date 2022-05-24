local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local StudioUI = Framework.StudioUI
local SearchBar = StudioUI.SearchBar

local FilterWatchDataThunk = require(Plugin.Src.Thunks.Watch.FilterWatchDataThunk)

local SearchBarField = Roact.PureComponent:extend("SearchBarField")

-- SearchBarField
function SearchBarField:render()
	local props = self.props

	return Roact.createElement(SearchBar, {
		ShowSearchIcon = true,
		ShowSearchButton = false,
		OnTextChanged = props.onFilterTextChanged,
		OnSearchRequested = props.onSearchRequested,
		LayoutOrder = props.LayoutOrder,
		Size = props.Size,
		SearchTerm = props.SearchTerm,
	})
end

-- RoactRodux Connection
SearchBarField = RoactRodux.connect(function(state, props)
	local watch = state.Watch
	return {
		SearchTerm = watch.filterText,
	}
end, function(dispatch)
	return {
		onFilterTextChanged = function(filterString)
			return dispatch(FilterWatchDataThunk(filterString))
		end,
		onSearchRequested = function(filterString)
			return dispatch(FilterWatchDataThunk(filterString))
		end,
	}
end)(SearchBarField)

return SearchBarField

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local StudioUI = Framework.StudioUI
local SearchBar = StudioUI.SearchBar

local FilterWatchDataThunk = require(Plugin.Src.Thunks.FilterWatchDataThunk)

local SearchBarField = Roact.PureComponent:extend("SearchBarField")

-- SearchBarField
function SearchBarField:render()
	local props = self.props
	
	return Roact.createElement(SearchBar, {
		ShowSearchIcon = true,
		ShowSearchButton = false,
		OnTextChanged = props.onFilterTextChanged,
		LayoutOrder = props.LayoutOrder,
	})
end

-- RoactRodux Connection
SearchBarField = RoactRodux.connect(
	nil, 
	function(dispatch)
		return {
			onFilterTextChanged = function(filterString)
				return dispatch(FilterWatchDataThunk(filterString))
			end,
		}
	end
)(SearchBarField)

return SearchBarField

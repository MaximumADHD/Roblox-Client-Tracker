local Main = script.Parent.Parent.Parent
local React = require(Main.Packages.React)
local RoactRodux = require(Main.Packages.RoactRodux)

local Foundation = require(Main.Packages.Foundation)
local View = Foundation.View
local TextInput = Foundation.TextInput
local InputSize = Foundation.Enums.InputSize

local Actions = Main.Src.Actions
local SetSearch = require(Actions.SetSearch)

function FilterTree(props: { LayoutOrder: number, setSearch: (value: string) -> (), searchFilter: string })
	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "size-full-0 auto-y",
	}, {
		Search = React.createElement(TextInput, {
			iconLeading = "magnifying-glass",
			label = "",
			size = InputSize.Small,
			width = UDim.new(1, 0),
			placeholder = "Search...",
			onChanged = props.setSearch,
			text = props.searchFilter,
			iconTrailing = {
				name = "circle-x",
				onActivated = function()
					props.setSearch("")
				end,
			},
		}),
	})
end

return RoactRodux.connect(function(state)
	return {
		searchFilter = state.Stories.searchFilter,
	}
end, function(dispatch)
	return {
		setSearch = function(text: string)
			dispatch(SetSearch(text))
		end,
	}
end)(FilterTree)

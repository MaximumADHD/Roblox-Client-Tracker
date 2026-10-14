local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local StyleModifier = require(Framework.Util.StyleModifier)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local IconButton = require(Framework.UI.Components.IconButton)
local Pane = require(Framework.UI.Components.Pane)
local Separator = require(Framework.UI.Components.Separator)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

type Props = {
	Disabled: boolean?,
	ShowClearButton: boolean?,
	ShowFilterButton: boolean?,
	ShowSearchButton: boolean?,
	SearchIsFiltered: boolean?,
	ButtonsWidth: number?,
	ButtonSize: UDim2?,
	LayoutOrder: number?,
	OnClear: () -> (),
	OnSearch: () -> (),
	OnSearchOptionsToggled: () -> (),
	Style: any?,
	Size: UDim2?,
}

local function SearchButtons(props: Props)
	return Roact.createElement(
		Pane,
		if supportsStyleSheets
			then {
				LayoutOrder = props.LayoutOrder,
				Size = props.Size,
				[React.Tag] = "Buttons X-Row X-FitY",
			}
			else {
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.fromScale(1, 0),
				Size = props.Size,
				LayoutOrder = props.LayoutOrder,
				Layout = Enum.FillDirection.Horizontal,
			},
		{
			ClearButton = if props.ShowClearButton
				then Roact.createElement(
					if supportsStyleSheets then IconButton else Button,
					if supportsStyleSheets
						then {
							LeftIcon = {
								[React.Tag] = "Primary Icon16",
							},
							OnClick = props.OnClear,
							[React.Tag] = joinTags(
								"ClearButton Compact IconOnly",
								if props.Disabled then "Disabled" else nil
							),
						}
						else {
							Size = props.ButtonSize,
							LayoutOrder = 1,
							OnClick = props.OnClear,
							Style = props.Style.Clear,
							StyleModifier = if props.Disabled then StyleModifier.Disabled else nil,
						}
				)
				else nil,

			-- Thin dividing line between the text box and the search button
			Separator = props.ShowSearchButton and Roact.createElement(Separator, {
				DominantAxis = Enum.DominantAxis.Height,
				LayoutOrder = 2,
			}),

			SearchButton = props.ShowSearchButton and Roact.createElement(
				if supportsStyleSheets then IconButton else Button,
				if supportsStyleSheets
					then {
						LayoutOrder = 3,
						LeftIcon = {
							[React.Tag] = "Primary Icon16",
						},
						OnClick = props.OnSearch,
						[React.Tag] = joinTags(
							"SearchButton Compact IconOnly",
							if props.Disabled then "Disabled" else nil
						),
					}
					else {
						Size = props.ButtonSize,
						LayoutOrder = 3,
						OnClick = props.OnSearch,
						Style = props.Style.Search,
						StyleModifier = if props.Disabled then StyleModifier.Disabled else nil,
					}
			),

			FilterButton = if props.ShowFilterButton
				then Roact.createElement(
					if supportsStyleSheets then IconButton else Button,
					if supportsStyleSheets
						then {
							LayoutOrder = 4,
							LeftIcon = {
								[React.Tag] = "Primary Icon16",
							},
							OnClick = props.OnSearchOptionsToggled,
							-- TODO @hderenne FFlagEnableSearchBarFilterButton: Migrate Filter button styles from style.lua to styles.lua once they are defined
							[React.Tag] = joinTags(
								"FilterButton Compact IconOnly",
								if props.Disabled then "Disabled" else nil,
								if props.SearchIsFiltered then "Filtered" else nil
							),
						}
						else {
							Size = props.ButtonSize,
							LayoutOrder = 4,
							OnClick = props.OnSearchOptionsToggled,
							Style = if props.SearchIsFiltered
								then props.Style.FilterHighlighted
								else props.Style.Filter,
							StyleModifier = if props.Disabled then StyleModifier.Disabled else nil,
						}
				)
				else nil,
		}
	)
end

return SearchButtons

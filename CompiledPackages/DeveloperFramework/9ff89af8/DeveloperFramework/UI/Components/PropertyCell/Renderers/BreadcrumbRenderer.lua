local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local Components = Framework.UI.Components
local Breadcrumb = require(Components.Breadcrumb)

local Types = require(script.Parent.Parent.Types)
type Props = Types.PropertyCellProps

local function BreadcrumbRenderer(props: Props)
	local schema = props.Schema :: Types.BreadcrumbSchema
	local hasError = props.ErrorMessage and props.ErrorMessage ~= ""
	return Roact.createElement(
		Breadcrumb,
		join(
			{
				Delimiters = schema.Delimiters,
				Editing = schema.Editing,
				GetAutocompleteItems = props.GetAutocompleteItems,
				GetImageProps = schema.GetImageProps,
				OnPressed = props.OnPressed,
				OnDoubleClick = props.OnDoubleClick,
				OnEdited = props.OnChanged,
				Size = if props.AutomaticSize
					then UDim2.new(1, 0, 0, props.MinimumHeight or 24)
					else UDim2.fromScale(1, 1),
				Style = if not supportsStyleSheets and hasError then schema.ErrorStyle else nil,
				Text = props.Value,
			},
			if supportsStyleSheets
				then {
					[React.Tag] = if hasError then schema.ErrorStyle else nil,
				}
				else nil
		)
	)
end

return BreadcrumbRenderer

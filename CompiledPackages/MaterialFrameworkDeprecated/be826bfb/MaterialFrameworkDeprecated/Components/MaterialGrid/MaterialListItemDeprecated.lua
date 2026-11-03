--[[
	Deprecated. Used when the MaterialGridTerrainEditorItemUx fast flag is off.

	Item component used in MaterialGrid when ViewType equals List.

	Required Props:
		callback OnClick: Called when the grid item is clicked.
		callback OnRightClick: Called when the item is right clicked.
		UDim2 Position: The position of the component. Set by MaterialGrid.
		UDim2 Size: The size of the component. Set by MaterialGrid.
		table Style: The style table with which to render the component.

	Optional Props:
		callback CustomPreview: The CustomPreview to show for this list item.
		number LayoutOrder: The layout order of the item.
		boolean Loading: Whether to show the loading effect.
		any Material: The Material to display in the grid item.
		boolean Selected: Whether the item is currently selected.
		boolean ShowGridLabels: Whether grid items should display a text label.
		string Text: The text to display in the item label.
]]

local main = script.Parent.Parent.Parent
local Types = require(main.Types)
local Packages = main.Parent

local Framework = require(Packages.Framework)
local React = require(Packages.React)

local forwardRef = React.forwardRef

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local Shimmer = UI.Shimmer
local TextLabel = UI.TextLabel

local MaterialPreview = require(main.Components.MaterialPreview)
-- TODO: Use flag from DevFramework once Studio's copy is updated

export type Props = {
	Applied: boolean?,
	CustomPreview: React.ComponentType<Types.CustomPreviewProps>?,
	InitialDistance: number?,
	LayoutOrder: number?,
	Loading: boolean?,
	Material: Types.Material?,
	OnClick: () -> (),
	OnMouseEnter: () -> ()?,
	OnMouseLeave: () -> ()?,
	OnRightClick: (() -> ())?,
	Position: UDim2,
	Selected: boolean?,
	Size: UDim2,
	Style: _Style,
	Text: string?,
}

type _Style = {
	ListItemBackgroundColor: Color3,
	ListItemSpacing: number,
	TextSize: number,
}

local MaterialListItem = forwardRef(function(props: Props, ref)
	local style: _Style = props.Style

	local height = props.Size.Y.Offset
	local spacing = style.ListItemSpacing
	local labelSize = UDim2.new(1, -(height + spacing), 1, 0)

	local buttonStyle
	if props.Selected and props.Applied then
		buttonStyle = "RoundActiveApplied"
	elseif props.Selected then
		buttonStyle = "RoundActive"
	elseif props.Applied then
		buttonStyle = "RoundApplied"
	else
		buttonStyle = "Round"
	end

	if props.Loading then
		return React.createElement(Pane, {
			ClipsDescendants = true,
			LayoutOrder = props.LayoutOrder,
			Position = props.Position,
			Size = UDim2.new(1, -10, 0, height),
			Style = "CornerBox",
		}, {
			Shimmer = React.createElement(Shimmer),
		})
	else
		return React.createElement(Button, {
			LayoutOrder = props.LayoutOrder,
			OnClick = props.OnClick,
			OnRightClick = props.OnRightClick,
			OnMouseEnter = props.OnMouseEnter,
			OnMouseLeave = props.OnMouseLeave,
			Position = props.Position,
			Size = UDim2.new(1, -10, 0, height),
			Style = buttonStyle,
		}, {
			Content = React.createElement(Pane, {
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Horizontal,
				Spacing = spacing,
			}, {
				MaterialPreview = if props.CustomPreview
					then React.createElement(props.CustomPreview, {
						Size = UDim2.fromOffset(height, height),
					})
					else React.createElement(MaterialPreview, {
						InitialDistance = props.InitialDistance,
						LayoutOrder = 1,
						Material = props.Material,
						MeshPartBackgroundColor = style.ListItemBackgroundColor,
						Size = UDim2.fromOffset(height, height),
						Static = true,
						Transparent = true,
						ref = ref,
					}),

				Label = React.createElement(TextLabel, {
					LayoutOrder = 2,
					Size = labelSize,
					Text = props.Text,
					TextSize = style.TextSize,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					TextWrapped = false,
				}),
			}),
		})
	end
end)

return MaterialListItem

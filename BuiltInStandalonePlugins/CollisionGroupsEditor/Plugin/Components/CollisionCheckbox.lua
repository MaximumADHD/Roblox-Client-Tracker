local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Checkbox = UI.Checkbox
local Pane = UI.Pane

local Constants = require(script.Parent.Parent.Constants)

function CollisonCheckbox(props)
	local style = props.Style
	local backgroundColor =  if props.RowIndex % 2 == 1 then style.BackgroundOdd else style.BackgroundEven
	local cellProps = props.Row[props.ColumnIndex]
	local group = cellProps.Group
	local otherGroup = cellProps.OtherGroup
	local checked = group.GetCollidesWith(otherGroup)

	local checkChildren
	if cellProps.ShouldShowCheckbox then
		checkChildren = {
			Padding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 8),
				PaddingTop = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
			}),

			Button = Roact.createElement("ImageButton", {
				Image = if checked then cellProps.style.CheckboxCheckedImage else cellProps.style.CheckboxUncheckedImage,
				Size = UDim2.new(1, 0, 1, 0),
				SizeConstraint = Enum.SizeConstraint.RelativeYY,

				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),

				BackgroundTransparency = 1,

				ImageColor3 = if checked then style.MainButton else Color3.new(1, 1, 1),

				[Roact.Event.Activated] = function(gui)
					group.ToggleCollidesWith(otherGroup)
				end,
			}),
		}
	else
		checkChildren = {
			Dash = Roact.createElement("Frame", {
				Size = UDim2.new(0.25, 0, 0, 2),
				BorderSizePixel = 0,
				BackgroundColor3 = cellProps.style.NoCheckboxPanelColor,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}),
		}
	end

	-- TODO STUDIOPLAT-28529 Extend DF Table to include Row Headers & Horizontal Scrolling
	-- Using string name componenets here for performance reasons.
	return Roact.createElement("Frame", {
		LayoutOrder = props.ColumnIndex,
		Size = Constants.GridCellSize,
		BorderSizePixel = 1,
		BorderColor3 = style.Border,
		BackgroundColor3 = if group.Selected then cellProps.style.TableEntrySelected else backgroundColor,

		[Roact.Event.MouseEnter] = function(gui, input)
			cellProps.OnColHovered(gui, otherGroup.Name, true)
		end,

		[Roact.Event.MouseLeave] = function(gui, input)
			cellProps.OnColHovered(gui, otherGroup.Name, false)
		end,
	}, checkChildren)
end

return CollisonCheckbox

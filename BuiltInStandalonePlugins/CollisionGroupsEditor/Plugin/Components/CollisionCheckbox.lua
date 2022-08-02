local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)

function CollisonCheckbox(props)
	local style = props.Style
	local cellStyle = props.Style.CollisionCheckbox
	local group = props.Group
	local otherGroup = props.OtherGroup
	local checked = group.GetCollidesWith(otherGroup)

	local backgroundColor =  if props.RowIndex % 2 == 1 then cellStyle.BackgroundOdd else cellStyle.BackgroundEven
	if group.Selected then
		backgroundColor = style.TableEntrySelected
	elseif props.RowHovered == group.Name then
		backgroundColor = style.TableEntryHover
	end

	local checkChildren
	if props.ShouldShowCheckbox then
		checkChildren = {
			Padding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 8),
				PaddingTop = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
			}),

			Button = Roact.createElement("ImageButton", {
				Image = if checked then cellStyle.CheckboxCheckedImage else cellStyle.CheckboxUncheckedImage,
				Size = UDim2.new(1, 0, 1, 0),
				SizeConstraint = Enum.SizeConstraint.RelativeYY,

				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),

				BackgroundTransparency = 1,

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
				BackgroundColor3 = cellStyle.NoCheckboxPanelColor,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}),
		}
	end

	-- TODO STUDIOPLAT-28529 Extend DF Table to include Row Headers & Horizontal Scrolling
	-- Using string name components here for performance reasons.
	return Roact.createElement("Frame", {
		LayoutOrder = props.LayoutOrder,
		Size = Constants.GridCellSize,
		BorderSizePixel = 1,
		BorderColor3 = cellStyle.Border,
		BackgroundColor3 = backgroundColor,

		[Roact.Event.MouseEnter] = function(gui, input)
			props.OnColHovered(gui, otherGroup.Name, true)
			props.OnRowHovered(gui, group.Name, true)
		end,

		[Roact.Event.MouseLeave] = function(gui, input)
			props.OnColHovered(gui, otherGroup.Name, false)
			props.OnRowHovered(gui, group.Name, false)
		end,
	}, checkChildren)
end

return CollisonCheckbox

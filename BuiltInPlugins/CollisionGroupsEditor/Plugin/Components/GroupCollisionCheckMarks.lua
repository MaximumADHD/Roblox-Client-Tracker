local Roact = require(script.Parent.Parent.Parent.Roact)

local choose = require(script.Parent.Parent.choose)

local Constants = require(script.Parent.Parent.Constants)

local Padding = require(script.Parent.Padding)

local CheckBoxUnchecked = "rbxasset://textures/CollisionGroupsEditor/unchecked.png"
local CheckBoxChecked = "rbxasset://textures/CollisionGroupsEditor/checked-bluebg.png"

return function(props)
	local children = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 1),
		}),
	}

	for index, group in pairs(props.Groups) do
		-- different things will be in the box depending on whether we're supposed
		-- to show this group's check mark or not
		local checkChildren
		if index <= props.GroupsShown then
			checkChildren = {
				Padding = Roact.createElement(Padding, {Padding = UDim.new(0, 8)}),

				Button = Roact.createElement("ImageButton", {
					Image = choose(CheckBoxChecked, CheckBoxUnchecked, props.Group.GetCollidesWith(group)),
					Size = UDim2.new(1, 0, 1, 0),
					SizeConstraint = Enum.SizeConstraint.RelativeYY,

					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),

					BackgroundTransparency = 1,

					ImageColor3 = choose(
						Color3.new(1, 1, 1),
						settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Tooltip),
						props.Group.GetCollidesWith(group)
					),

					[Roact.Event.Activated] = function(gui)
						props.Group.ToggleCollidesWith(group)
					end,
				}),
			}
		else
			checkChildren = {
				Dash = Roact.createElement("Frame", {
					Size = UDim2.new(0.25, 0, 0, 2),
					BorderSizePixel = 0,
					BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Dark),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
				}),
			}
		end

		children["CheckBox"..group.Name] = Roact.createElement("Frame", {
			Size = Constants.GroupLabelSize,
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			LayoutOrder = index,

			BackgroundColor3 = choose(
				settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainButton),
				choose(
					settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Titlebar),
					settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),
					props.Hovered
				),
				props.Group.Selected
			),

			BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),

			[Roact.Event.InputBegan] = function(gui, input)
				props.OnColHovered(gui, group.Name, true)
			end,

			[Roact.Event.InputEnded] = function(gui, input)
				props.OnColHovered(gui, group.Name, false)
			end,
		}, checkChildren)
	end


	return Roact.createElement("Frame", {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(Constants.GroupLabelSize.X.Scale * #props.Groups, 0, 0, Constants.GroupRowHeight),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,

		BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Dark),
		BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Dark),
		BorderSizePixel = 1,

		BackgroundTransparency = 1,

		[Roact.Event.InputBegan] = function(gui, input)
			props.OnRowHovered(gui, props.Group.Name, true)
		end,

		[Roact.Event.InputEnded] = function(gui, input)
			props.OnRowHovered(gui, props.Group.Name, false)
		end,
	}, children)
end
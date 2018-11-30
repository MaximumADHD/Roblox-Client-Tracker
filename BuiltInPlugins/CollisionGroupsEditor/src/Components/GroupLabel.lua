local Roact = require(script.Parent.Parent.Parent.modules.roact)

local choose = require(script.Parent.Parent.choose)

local Constants = require(script.Parent.Parent.Constants)

local GroupLabelPadding = require(script.Parent.GroupLabelPadding)
local GroupRenameTextBox = require(script.Parent.GroupRenameTextBox)

return function(props)
	local label

	if props.Group.Renaming then
		label = Roact.createElement(GroupRenameTextBox, props)
	else
		label = Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Text = props.Group.Name,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Right,
			TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),

			-- hardcoded group "Default" cannot be highlighted
			[Roact.Event.Activated] = choose(props.Group.OnSelected, nil, props.Group.Name ~= "Default"),
		})
	end

	return Roact.createElement("Frame", {
		Size = Constants.GroupLabelSize,
		SizeConstraint = Enum.SizeConstraint.RelativeYY,

		BackgroundColor3 = choose(
			settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Dark),
			choose(
				settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainButton),
				settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Titlebar),
				props.Group.Selected
			),
			props.Hovered
		),

		BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),

		LayoutOrder = 4,
	}, {
		Padding = Roact.createElement(GroupLabelPadding),
		
		Label = label
	})
end
local Roact = require(script.Parent.Parent.Parent.Packages.Roact)
local UILibrary = require(script.Parent.Parent.Parent.Packages.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local Constants = require(script.Parent.Parent.DEPRECATED_Constants)

local GroupLabelPadding = require(script.Parent.DEPRECATED_GroupLabelPadding)

local function render(props, localized)
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, Constants.GroupRowHeight),
		Position = UDim2.new(0, 0, 1, 0),
		AnchorPoint = Vector2.new(0, 1),
		LayoutOrder = props.LayoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}),

		Spacer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(3, 3, 1, 0),
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			LayoutOrder = 1,
		}),

		AddGroup = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = Constants.GroupLabelSize,
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			LayoutOrder = 2,
		}, {
			Padding = Roact.createElement(GroupLabelPadding),

			TextBox = Roact.createElement("TextBox", {
				BackgroundTransparency = 1,
				Text = "",
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Right,

				PlaceholderText = "+ "..localized:getText("Actions", "AddGroup"),
				PlaceholderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.SubText),

				TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),

				Size = UDim2.new(1, 0, 1, 0),

				[Roact.Event.FocusLost] = function(gui, submitted)
					if submitted then
						props.OnGroupAdded(gui.Text)
					end
					gui.Text = ""
				end,
			}),
		})
	})
end

return function(props)
	return withLocalization(function(localized)
		return render(props, localized)
	end)
end
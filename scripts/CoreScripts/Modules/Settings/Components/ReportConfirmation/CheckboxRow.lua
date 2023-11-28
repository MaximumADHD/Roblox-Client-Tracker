--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images
local Checkbox = UIBlox.App.InputButton.Checkbox

local CheckboxRow = Roact.PureComponent:extend("CheckboxRow")

local HORIZONTAL_PADDING = 12
CheckboxRow.defaultProps = {
	height = 28,
	image = "icons/controls/microphone",
	descriptionText = "Description Text",
	checkboxSelected = false,
	actionDisabled = false,
	onCheckboxActivated = function() end,
	LayoutOrder = 1,
}

CheckboxRow.validateProps = t.interface({
	height = t.number,
	image = t.string,
	descriptionText = t.string,
	checkboxSelected = t.boolean,
	actionDisabled = t.boolean,
	onCheckboxActivated = t.callback,
	LayoutOrder = t.optional(t.number),
})

function CheckboxRow:render()
	return withStyle(function(style)
		local baseSize = style.Font.BaseSize

		local textTheme
		local imageTheme

		if self.props.actionDisabled then
			textTheme = style.Theme.TextMuted
			imageTheme = style.Theme.IconDefault
		else
			textTheme = style.Theme.TextEmphasis
			imageTheme = style.Theme.IconEmphasis
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, self.props.height),
			BackgroundTransparency = 1,
			LayoutOrder = self.props.LayoutOrder,
		}, {
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, HORIZONTAL_PADDING),
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			image = Roact.createElement(ImageSetLabel, {
				Size = UDim2.fromOffset(self.props.height, self.props.height),
				Image = Images[self.props.image],
				ImageColor3 = imageTheme.Color,
				ImageTransparency = imageTheme.Transparency,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}),

			text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -(self.props.height+HORIZONTAL_PADDING)*4, 1, 0),
				Text = self.props.descriptionText,
				TextColor3 = textTheme.Color,
				TextTransparency = textTheme.Transparency,
				TextSize = style.Font.Header2.RelativeSize*baseSize,
				Font = style.Font.Header2.Font,
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 2,
			}),

			checkbox = Roact.createElement(Checkbox, {
				size = UDim2.fromOffset(self.props.height, self.props.height),
				isDisabled = self.props.actionDisabled,
				isSelected = self.props.checkboxSelected,
				onActivated = self.props.onCheckboxActivated,
				text = "",
				layoutOrder = 3,
			}),
		})
	end)
end

return CheckboxRow

--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)

local Checkbox = Foundation.Checkbox

local withFoundationOrUIBloxStyle = require(CorePackages.Workspace.Packages.CoreGuiCommon).withFoundationOrUIBloxStyle

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagCoreUiMigrateUIBloxToFoundation = SharedFlags.FFlagCoreUiMigrateUIBloxToFoundation

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images

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
	return withFoundationOrUIBloxStyle(function(tokens)
		return {
			Theme = {
				IconDefault = {
					Color = tokens.Color.Content.Default.Color3,
					Transparency = tokens.Color.Content.Default.Transparency,
				},
				IconEmphasis = {
					Color = tokens.Color.Content.Emphasis.Color3,
					Transparency = tokens.Color.Content.Emphasis.Transparency,
				},
				TextEmphasis = {
					Color = tokens.Color.Content.Emphasis.Color3,
					Transparency = tokens.Color.Content.Emphasis.Transparency,
				},
				TextMuted = {
					Color = tokens.Color.Content.Muted.Color3,
					Transparency = tokens.Color.Content.Muted.Transparency,
				},
			},
			Font = {
				BaseSize = 1,
				Header2 = {
					Font = tokens.Typography.TitleLarge.Font,
					RelativeSize = tokens.Typography.TitleLarge.FontSize,
				},
			},
		}
	end, function(style)
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

		local imageElement
		if FFlagCoreUiMigrateUIBloxToFoundation then
			imageElement = Roact.createElement(Foundation.Icon, {
				name = self.props.image,
				size = Foundation.Enums.IconSize.Medium,
				style = {
					Color3 = imageTheme.Color,
					Transparency = imageTheme.Transparency,
				},
				LayoutOrder = 1,
			})
		else
			imageElement = Roact.createElement(ImageSetLabel, {
				Size = UDim2.fromOffset(self.props.height, self.props.height),
				Image = Images[self.props.image],
				ImageColor3 = imageTheme.Color,
				ImageTransparency = imageTheme.Transparency,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			})
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

			image = imageElement,

			text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -(self.props.height + HORIZONTAL_PADDING) * 4, 1, 0),
				Text = self.props.descriptionText,
				TextColor3 = textTheme.Color,
				TextTransparency = textTheme.Transparency,
				TextSize = style.Font.Header2.RelativeSize * baseSize,
				Font = style.Font.Header2.Font,
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 2,
			}),

			checkbox = Roact.createElement(Checkbox, {
				isDisabled = self.props.actionDisabled,
				isChecked = self.props.checkboxSelected,
				onActivated = self.props.onCheckboxActivated,
				label = "",
				LayoutOrder = 3,
			}),
		})
	end)
end

return CheckboxRow

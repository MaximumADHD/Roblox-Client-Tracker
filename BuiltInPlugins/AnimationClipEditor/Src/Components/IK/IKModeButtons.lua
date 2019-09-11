--[[
	Radio Button group for changing the IK Mode

	Props:
		string IKMode = represents IK manipulation mode, either Full Body or Body Part,

		function SetIKMode(string) = sets current IK manipulation mode
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Roact)

local UILibrary = Plugin.UILibrary
local RadioButtons = require(UILibrary.Components.RadioButtons)

local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local Constants = require(Plugin.Src.Util.Constants)

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local IKModeButtons = Roact.PureComponent:extend("IKModeButtons")

local LABEL_WIDTH = 64
local GROUP_WIDTH = 186

function IKModeButtons:render()
	return withTheme(function(theme)
		return withLocalization(function(localization)
			local props = self.props

			local ikMode = props.IKMode
			local height = props.Height
			local layoutOrder = props.LayoutOrder
			local setIKMode = props.SetIKMode

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, height),
				BackgroundColor3 = theme.ikTheme.headerColor,
				BorderSizePixel = 1,
				BorderColor3 = theme.ikTheme.headerBorder,
				LayoutOrder = layoutOrder,
			}, {
				IKModeLabel = Roact.createElement("TextLabel", {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(0, LABEL_WIDTH, 0, Constants.TRACK_HEIGHT),
					BackgroundTransparency = 1,
					TextSize = theme.ikTheme.textSize,
					Font = theme.font,
					TextColor3 = theme.ikTheme.textColor,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					Text = localization:getText("IKMenu", "IKMode"),
					LayoutOrder = 0,
				}),

				RadioButtonsFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, 0, 0.5, 0),
					Size = UDim2.new(0, GROUP_WIDTH, 0.5, 0),
					LayoutOrder = 1,
				}, {
					RadioButtons = Roact.createElement(RadioButtons, {
						Buttons = {
							{Key = Constants.IK_MODE.BodyPart, Text = localization:getText("IKMenu", "BodyPart")},
							{Key = Constants.IK_MODE.FullBody, Text = localization:getText("IKMenu", "FullBody")},
						},
						Selected = ikMode,
						FillDirection = Enum.FillDirection.Horizontal,
						LayoutOrder = 1,
						onButtonClicked = function(key, index)
							setIKMode(key)
						end,
					})
				})
			})
		end)
	end)
end

return IKModeButtons



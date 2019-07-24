--[[
	Footer shown at the bottom of the Game Settings widget.
	Contains the Save and Cancel buttons.

	Props:
		bool SaveActive = Whether or not saving is currently allowed.
			This will enable the Save button if true.
]]

local FOOTER_GRADIENT_SIZE = 3
local FOOTER_GRADIENT_TRANSPARENCY = 0.9

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Theming = require(Plugin.Src.ContextServices.Theming)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localizing = UILibrary.Localizing
local Constants = require(Plugin.Src.Resources.Constants)

local ButtonBar = require(Plugin.Src.Components.ButtonBar)

local Footer = Roact.PureComponent:extend("Footer")

function Footer:render()
	return Localizing.withLocalization(function(localized)
		return Theming.withTheme(function(theme)
			local saveActive = self.props.SaveActive
			local cancelActive = self.props.CancelActive
			local onClose = self.props.OnClose

			local updateText = localized:getText("General", "ButtonUpdateExistingGame")

			return Roact.createElement("Frame", {
				BackgroundColor3 = theme.backgroundColor,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, Constants.FOOTER_HEIGHT),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				ZIndex = 2,
			}, {
				Gradient = Roact.createElement("ImageLabel", {
					Size = UDim2.new(1, 0, 0, FOOTER_GRADIENT_SIZE),
					AnchorPoint = Vector2.new(0, 1),
					Image = Constants.GRADIENT_IMAGE,
					ImageRectSize = Constants.GRADIENT_RECT_SIZE,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					ImageColor3 = theme.footer.gradient,
					ImageTransparency = FOOTER_GRADIENT_TRANSPARENCY,
					ZIndex = 1,
				}),

				SaveSettings = Roact.createElement(ButtonBar, {
					ZIndex = 2,
					Buttons = {
						{Name = "Cancel", Active = cancelActive, Value = false},
						{Name = "Save", Default = true, Active = saveActive, Value = true},
					},
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					buttonClicked = onClose,
				}),

				OverwriteExisting = Roact.createElement("TextButton", {
					Size = UDim2.new(0.15,0,0.5,0),
					Position = UDim2.new(0.13, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BorderSizePixel = 3,
					TextColor3 = theme.defaultButton.ButtonColor,
					BackgroundTransparency = 1,
					TextSize = 15,
					Font = theme.footer.textbutton.font,
					Text = updateText,

					[Roact.Event.Activated] = function()
						-- TODO (kstephan) 2019/07/09 dispatch "select new screen" action
					end,
				}),
			})
		end)
	end)
end

Footer = RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			-- TODO (kstephan) 2019/07/09 set CancelActive / SaveActive based on state
		}
	end,
	function(dispatch)
		return {
			-- TODO (kstephan) 2019/07/09 provide functions to dispatch
		}
	end
)(Footer)

return Footer

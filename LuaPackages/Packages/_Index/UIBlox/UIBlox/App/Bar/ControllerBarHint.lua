--!nonstrict
--[[
		Creates a component with a button image and hint text
]]
local Bar = script.Parent
local App = Bar.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBlox.Core.Style.withStyle)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local KeyLabel = require(App.Menu.KeyLabel)

local PADDING = require(script.Parent.BarConstants).ControllerBarHintInternalPadding

local ControllerBarHint = Roact.PureComponent:extend("ControllerBarHint")

ControllerBarHint.validateProps = t.strictInterface({
	-- Layout order for multiple sibling hints
	layoutOrder = t.optional(t.integer),
	-- Image to be used within the hint
	keyCode = t.enum(Enum.KeyCode),
	-- Text to be used in the hint
	text = t.string,
	-- Maximum size of the text hint
	maxWidth = t.optional(t.number),
	-- Text size for hints
	hintTextSize = t.optional(t.number),
})

function ControllerBarHint:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.X,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, PADDING),
			}),

			ControllerBarHintIcon = Roact.createElement(KeyLabel, {
				keyCode = self.props.keyCode,
				LayoutOrder = 1,
				iconThemeKey = "IconEmphasis",
			}),

			ControllerBarHintText = Roact.createElement(GenericTextLabel, {
				TextSize = self.props.hintTextSize,
				maxSize = self.props.maxWidth and Vector2.new(self.props.maxWidth) or nil,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				fontStyle = font.Header2,
				colorStyle = theme.TextEmphasis,

				-- use automatic sizing when no width is specified
				AutomaticSize = not self.props.maxWidth and Enum.AutomaticSize.X or nil,

				TextTransparency = theme.TextEmphasis.TextTransparency,
				fluidSizing = self.props.maxWidth and true or false,
				Text = self.props.text,

				-- only truncate if we've specified a maximum size for hint
				TextTruncate = self.props.maxWidth and Enum.TextTruncate.AtEnd or nil,

				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		})
	end)
end

return ControllerBarHint

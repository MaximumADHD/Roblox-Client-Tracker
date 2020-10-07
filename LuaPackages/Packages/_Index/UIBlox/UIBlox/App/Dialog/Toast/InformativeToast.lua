local ToastRoot = script.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ToastFrame = require(ToastRoot.ToastFrame)
local validateToastIcon = require(ToastRoot.Validator.validateToastIcon)
local validateToastText = require(ToastRoot.Validator.validateToastText)

local InformativeToast = Roact.PureComponent:extend("InformativeToast")

local validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	iconProps = t.optional(validateToastIcon),
	iconChildren = t.optional(t.table),
	layoutOrder = t.optional(t.integer),
	padding = t.optional(t.numberMin(0)),
	position = t.optional(t.UDim2),
	size = t.UDim2,
	subtitleTextProps = t.optional(validateToastText),
	textFrameSize = t.optional(t.UDim2),
	titleTextProps = validateToastText,
})

InformativeToast.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5),
	layoutOrder = 1,
	position = UDim2.new(0.5, 0, 0.5, 0),
	size = UDim2.new(1, 0, 1, 0),
}

function InformativeToast:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement("Frame", {
			AnchorPoint = self.props.anchorPoint,
			BackgroundColor3 = theme.BackgroundUIContrast.Color,
			BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			LayoutOrder = self.props.layoutOrder,
			Position = self.props.position,
			Size = self.props.size,
		}, {
			ToastFrame = Roact.createElement(ToastFrame, {
				iconProps = self.props.iconProps,
				iconChildren = self.props.iconChildren,
				padding = self.props.padding,
				subtitleTextProps = self.props.subtitleTextProps,
				textFrameSize = self.props.textFrameSize,
				titleTextProps = self.props.titleTextProps,
			}),
		})
	end)
end

return InformativeToast

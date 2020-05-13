local ToastRoot = script.Parent
local DialogRoot = ToastRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local ToastIcon = require(ToastRoot.ToastIcon)
local ToastText = require(ToastRoot.ToastText)
local validateToastIcon = require(ToastRoot.Validator.validateToastIcon)
local validateToastText = require(ToastRoot.Validator.validateToastText)

local ToastFrame = Roact.PureComponent:extend("ToastFrame")

local validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	iconProps = t.optional(validateToastIcon),
	layoutOrder = t.optional(t.integer),
	padding = t.numberMin(0),
	position = t.optional(t.UDim2),
	size = t.UDim2,
	subtitleTextProps = t.optional(validateToastText),
	textFrameSize = t.UDim2,
	titleTextProps = validateToastText,
})

ToastFrame.defaultProps = {
	padding = 0,
	size = UDim2.new(1, 0, 1, 0),
	textFrameSize = UDim2.new(1, 0, 1, 0),
}

function ToastFrame:render()
	assert(validateProps(self.props))

	local iconProps = self.props.iconProps
	local padding = self.props.padding
	local subtitleTextProps = self.props.subtitleTextProps

	return Roact.createElement("Frame", {
		AnchorPoint = self.props.anchorPoint,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		LayoutOrder = self.props.layoutOrder,
		Position = self.props.position,
		Size = self.props.size,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, padding),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		UIPadding = (padding > 0) and Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, padding),
			PaddingLeft = UDim.new(0, padding),
			PaddingRight = UDim.new(0, padding),
			PaddingTop = UDim.new(0, padding),
		}),
		ToastIcon = iconProps and Roact.createElement(ToastIcon, Cryo.Dictionary.join(iconProps, {
			LayoutOrder = 1,
		})),
		ToastTextFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = self.props.textFrameSize,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			ToastTitle = Roact.createElement(ToastText, Cryo.Dictionary.join(self.props.titleTextProps, {
				LayoutOrder = 1,
			})),
			ToastSubtitle = subtitleTextProps and Roact.createElement(ToastText, Cryo.Dictionary.join(subtitleTextProps, {
				LayoutOrder = 2,
			})),
		}),
	})
end

return ToastFrame

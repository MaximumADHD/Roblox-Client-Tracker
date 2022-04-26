local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local Divider = require(Dependencies.Divider)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local CheckBox = UIBlox.App.InputButton.Checkbox

local Assets = require(TnsModule.Resources.Assets)

local BlockPlayerItem = Roact.PureComponent:extend("BlockPlayerItem")

BlockPlayerItem.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number),
	size = t.UDim2,
	text = t.string,
	isCheckBoxSelected = t.boolean,
	onCheckBoxActivated = t.callback,
})

function BlockPlayerItem:render()
	local props = self.props

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
		Size = props.size,
	}, {
		BlockIcon = Roact.createElement(ImageSetLabel, {
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
			Image = Assets.Images.BlockIcon.Image,
			Position = UDim2.new(0, 16, 0.5, 0),
			Size = Assets.Images.BlockIcon.Size,
		}),
		CheckBoxFrame = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(1, -20, 0.5, 0),
			Size = UDim2.fromOffset(24, 24),
		}, {
			CheckBox = Roact.createElement(CheckBox, {
				size = UDim2.new(1, 0, 1, 0),
				text = "",
				onActivated = props.onCheckBoxActivated,
				isSelected = props.isCheckBoxSelected,
			}),
		}),
		Text = Roact.createElement(ThemedTextLabel, {
			AnchorPoint = Vector2.new(0, 0.5),
			AutomaticSize = Enum.AutomaticSize.XY,
			themeKey = "TextEmphasis",
			Position = UDim2.new(0, 60, 0.5, 0),
			Text = props.text,
		}),
		Divider = Roact.createElement(Divider, {
			Position = UDim2.new(0, 0, 1, 0),
		}),
	})
end

return BlockPlayerItem

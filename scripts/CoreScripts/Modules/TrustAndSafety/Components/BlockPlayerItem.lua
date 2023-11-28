--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local Divider = require(Dependencies.Divider)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local withStyle = UIBlox.Style.withStyle

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local CheckBox = UIBlox.App.InputButton.Checkbox

local BlockPlayerItem = Roact.PureComponent:extend("BlockPlayerItem")

BlockPlayerItem.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number),
	size = t.UDim2,
	text = t.string,
	description = t.string,
	icon = t.union(t.string, t.table),
	iconSize = t.UDim2,
	isDisabled = t.optional(t.boolean),
	isCheckBoxSelected = t.boolean,
	onCheckBoxActivated = t.callback,
})

BlockPlayerItem.defaultProps = {
	isDisabled = false,
	isCheckBoxSelected = false,
}

function BlockPlayerItem:init()
	self.onClicked = function()
		if self.props.onCheckBoxActivated and not self.props.isDisabled then
			self.props.onCheckBoxActivated(not self.props.isCheckBoxSelected)
		end
	end
end

function BlockPlayerItem:render()
	local props = self.props

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		return Roact.createElement("TextButton", {
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
			Size = props.size,
			AutoButtonColor = false,
			BorderSizePixel = 0,
			Text = "",
			[Roact.Event.Activated] = self.onClicked,
		}, {
			BlockIcon = Roact.createElement(ImageSetLabel, {
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Image = props.icon,
				ImageTransparency = if props.isDisabled then 0.5 else nil,
				Position = UDim2.new(0, 16, 0.5, 0),
				Size = props.iconSize,
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
					isDisabled = props.isDisabled,
					onActivated = props.onCheckBoxActivated,
					isSelected = props.isCheckBoxSelected,
				}),
			}),
			TextFrame = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 60, 0.5, 0),
				Size = UDim2.new(1, -(60 + 64), 1, 0),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 4),
				}),
				Text = Roact.createElement(ThemedTextLabel, {
					LayoutOrder = 1,
					TextTransparency = if props.isDisabled then 0.5 else nil,
					AutomaticSize = Enum.AutomaticSize.XY,
					fontKey = "SubHeader1",
					themeKey = "TextEmphasis",
					Text = props.text,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Description = Roact.createElement(ThemedTextLabel, {
					LayoutOrder = 2,
					TextTransparency = if props.isDisabled then 0.5 else nil,
					AutomaticSize = Enum.AutomaticSize.XY,
					fontKey = "Footer",
					TextWrapped = true,
					themeKey = "TextDefault",
					Text = props.description,
					TextXAlignment = Enum.TextXAlignment.Left,
					LineHeight = 1.25,
				}),
			}),
			Divider = Roact.createElement(Divider, {
				Position = UDim2.new(0, 0, 1, 0),
			}),
		})
	end)
end

return BlockPlayerItem

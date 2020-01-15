local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local FRAME_BORDER_COLOR1 = Color3.fromRGB(227, 227, 227)

local SelectableImageButton = Roact.PureComponent:extend("SelectableImageButton")

function SelectableImageButton:init()
	self.selectItem = function()
		self.props.SelectItem(self.props.Item)
	end
end

function SelectableImageButton:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local image = props.Image
	local isSelected = props.IsSelected

	local size = props.Size or UDim2.new(0, 32, 0, 32)
	local backgroundColor3 = props.BackgroundColor3
	local selectedTransparency = props.SelectedTransparency or 0.5

	return Roact.createElement("ImageButton", {
		LayoutOrder = layoutOrder,
		Size = size,
		BackgroundColor3 = backgroundColor3,
		BackgroundTransparency = isSelected and selectedTransparency or 1,
		BorderColor3 = FRAME_BORDER_COLOR1,
		Image = image,
		[Roact.Event.Activated] = self.selectItem,
	})
end

return SelectableImageButton

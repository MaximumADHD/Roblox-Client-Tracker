local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Theme = require(Modules.Settings.Theme)

local RectangleButton = Roact.PureComponent:extend("RectangleButton")
RectangleButton.defaultProps = {
	visible = true,
}

function RectangleButton:init()
	self.state = {
		isHovering = false,
	}
end

function RectangleButton:render()
	local size = self.props.size
	local position = self.props.position
	local anchorPoint = self.props.anchorPoint
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex
	local onClick = self.props.onClick
	local visible = self.props.visible
	local children = self.props[Roact.Children] or {}
	local borderColor = "DefaultButtonStroke"

	children["Border"] = Roact.createElement("UIStroke", {
		Color = Theme.color(borderColor),
		Transparency = Theme.transparency(borderColor),
		Thickness = Theme.DefaultStokeThickness,
	})
	children["UICorner"] = Roact.createElement("UICorner", {
		CornerRadius = Theme.DefaultCornerRadius,
	})

	local isSelectable = false

	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		Image = "",
		Selectable = isSelectable,
		Size = size,
		Position = position,
		AnchorPoint = anchorPoint,
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
		Visible = visible,

		[Roact.Event.InputBegan] = function()
			self:setState({ isHovering = true })
		end,
		[Roact.Event.InputEnded] = function()
			self:setState({ isHovering = false })
		end,

		[Roact.Event.Activated] = function()
			if onClick then
				self:setState({ isHovering = false })
				onClick()
			end
		end,
	}, {
		ButtonBackgroundUIBlox = Roact.createElement("ImageLabel", {
			BackgroundColor3 = Theme.color(if self.state.isHovering then "DefaultButtonHover" else "DefaultButton"),
			BackgroundTransparency = Theme.transparency(
				if self.state.isHovering then "DefaultButtonHover" else "DefaultButton"
			),
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = zIndex,
		}, children),
	})
end

return RectangleButton

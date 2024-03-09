local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local BUTTON_IMAGE = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
local BUTTON_IMAGE_ACTIVE = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
local BUTTON_SLICE = Rect.new(8, 6, 46, 44)

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Theme = require(Modules.Settings.Theme)

local GetFFlagInviteFriendsDesignUpdates = require(Modules.Settings.Flags.GetFFlagInviteFriendsDesignUpdates)

local DROPSHADOW_SIZE = {
	Left = 4,
	Right = 4,
	Top = 2,
	Bottom = 6,
}

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

	local buttonImage = self.state.isHovering and BUTTON_IMAGE_ACTIVE or BUTTON_IMAGE

	if not GetFFlagInviteFriendsDesignUpdates() or not Theme.UIBloxThemeEnabled then
		-- This is just needed if the button contains a drop shadow.
		-- Insert padding so that child elements of this component are positioned
		-- inside the button as expected. This is to offset the dropshadow
		-- extending outside the button bounds.
		children["UIPadding"] = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, DROPSHADOW_SIZE.Left),
			PaddingRight = UDim.new(0, DROPSHADOW_SIZE.Right),
			PaddingTop = UDim.new(0, DROPSHADOW_SIZE.Top),
			PaddingBottom = UDim.new(0, DROPSHADOW_SIZE.Bottom),
		})
	end

	if Theme.UIBloxThemeEnabled then
		local borderColor = "DefaultButtonStroke"

		children["Border"] = Roact.createElement("UIStroke", {
			Color = Theme.color(borderColor),
			Transparency = Theme.transparency(borderColor),
			Thickness = Theme.DefaultStokeThickness,
		})
		children["UICorner"] = Roact.createElement("UICorner", {
			CornerRadius = Theme.DefaultCornerRadius,
		})
	end

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
		ButtonBackground = not Theme.UIBloxThemeEnabled and Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, -DROPSHADOW_SIZE.Left, 0, -DROPSHADOW_SIZE.Top),
			Size = UDim2.new(
				1,
				DROPSHADOW_SIZE.Left + DROPSHADOW_SIZE.Right,
				1,
				DROPSHADOW_SIZE.Top + DROPSHADOW_SIZE.Bottom
			),
			Image = buttonImage,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = BUTTON_SLICE,
			ZIndex = zIndex,
		}, children),
		ButtonBackgroundUIBlox = Theme.UIBloxThemeEnabled and Roact.createElement("ImageLabel", {
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

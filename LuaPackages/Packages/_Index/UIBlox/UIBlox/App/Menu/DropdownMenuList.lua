--!nonstrict
local GuiService = game:GetService("GuiService")

local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBlox.Core.Style.withStyle)
local BaseMenu = require(script.Parent.BaseMenu)
local validateButtonProps = require(script.Parent.validateButtonProps)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local dropdownMenuListComponent = Roact.PureComponent:extend("DropdownMenuList")

dropdownMenuListComponent.validateProps = t.strictInterface({
	buttonProps = validateButtonProps,

	zIndex = t.optional(t.integer),
	open = t.boolean,
	showDropShadow = t.boolean,
	fixedListHeight = t.optional(t.number),
	openPositionY = t.UDim,

	closeBackgroundVisible = t.optional(t.boolean),
	screenSize = t.Vector2,

	onDismiss = t.optional(t.callback),
	buttonSize = t.UDim2,
	menuListBackground = t.optional(validateColorInfo),
	-- Indicate whether design override is enabled
	enableTokenOverride = t.optional(t.boolean),
	selectionOrder = t.optional(t.number),
	menuPositionFixed = t.optional(t.boolean),
})

dropdownMenuListComponent.defaultProps = {
	zIndex = 2,
	closeBackgroundVisible = false,
	showDropShadow = false,
	fixedListHeight = nil,
	menuListBackground = nil,
	enableTokenOverride = false,
	menuPositionFixed = false,
}

function dropdownMenuListComponent:init()
	self:setState({
		absolutePosition = Vector2.new(0, 0),
		visible = false,
	})

	self.setAbsolutePosition = function(rbx)
		self:setState({
			absolutePosition = rbx.AbsolutePosition,
		})
	end

	self.dismissMenu = function()
		if self.state.visible then
			self:setState({
				visible = false,
			})
			self.props.onDismiss()
		end
	end
end

function dropdownMenuListComponent:render()
	return withStyle(function(stylePalette)
		local topCornerInset, bottomCornerInset = GuiService:GetGuiInset()
		local absolutePosition = self.state.absolutePosition + topCornerInset

		local anchorPointY = 0
		local menuYScale = 1
		local menuYOffset = self.props.buttonSize.Y
		local menuWidth = self.props.buttonSize.X

		if self.state.absolutePosition.Y > self.props.screenSize.Y / 2 then
			anchorPointY = 1
			menuYScale = -1
			menuYOffset = UDim.new(0, 0)
		end

		local menuPositionY
		if menuYScale == 1 then
			menuPositionY = menuYOffset + self.props.openPositionY
		else
			menuPositionY = menuYOffset - self.props.openPositionY
		end
		local menuPosition = UDim2.new(0, 0, menuPositionY.Scale, menuPositionY.Offset)

		if self.props.screenSize.X < 640 and not self.props.menuPositionFixed then
			anchorPointY = 1
			menuPosition = UDim2.new(
				-self.props.buttonSize.X.Scale / 2,
				-absolutePosition.X + self.props.screenSize.X / 2 - self.props.buttonSize.X.Offset / 2,
				0,
				self.props.screenSize.Y - absolutePosition.Y - bottomCornerInset.Y - 24
			)
		end

		local backgroundTransparency = stylePalette.Theme.Overlay.Transparency
		if not self.props.closeBackgroundVisible then
			backgroundTransparency = 1
		end

		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Visible = self.state.visible,
			ZIndex = self.props.zIndex,

			[Roact.Change.AbsolutePosition] = self.setAbsolutePosition,
		}, {
			Background = Roact.createElement("TextButton", {
				ZIndex = 1,
				Text = "",
				BorderSizePixel = 0,
				BackgroundColor3 = stylePalette.Theme.Overlay.Color,
				BackgroundTransparency = backgroundTransparency,
				AutoButtonColor = false,
				Selectable = if UIBloxConfig.enableNewMenuLayout then false else nil,

				Position = UDim2.fromOffset(-absolutePosition.X, -absolutePosition.Y),
				Size = UDim2.fromOffset(self.props.screenSize.X, self.props.screenSize.Y),

				[Roact.Event.Activated] = self.dismissMenu,
			}),
			PositionFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Position = menuPosition,
				ZIndex = 2,
			}, {
				BaseMenu = Roact.createElement(BaseMenu, {
					buttonProps = self.props.buttonProps,
					showDropShadow = self.props.showDropShadow,
					fixedListHeight = self.props.fixedListHeight,
					width = menuWidth,
					position = UDim2.fromScale(0, 0),
					anchorPoint = Vector2.new(0, anchorPointY),
					background = self.props.menuListBackground,
					enableTokenOverride = self.props.enableTokenOverride,
					selectionOrder = self.props.selectionOrder,
				}),
			}),
		})
	end)
end

function dropdownMenuListComponent:didMount()
	if self.props.open then
		self:setState({
			visible = true,
		})
	end
end

function dropdownMenuListComponent:didUpdate(previousProps, previousState)
	if self.props.open ~= previousProps.open then
		if self.props.open then
			self:setState({
				visible = true,
			})
		else
			self:setState({
				visible = false,
			})
		end
	end
end

return dropdownMenuListComponent

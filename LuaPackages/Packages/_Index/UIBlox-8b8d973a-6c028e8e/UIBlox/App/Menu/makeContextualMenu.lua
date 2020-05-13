-- https://share.goabstract.com/b4b09f34-438a-4d5e-ba7f-8f1f0657f4dd

local GuiService = game:GetService("GuiService")

local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Otter = require(Packages.Otter)

local withStyle = require(UIBlox.Core.Style.withStyle)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)

local MenuDirection = require(script.Parent.MenuDirection)
local validateButtonProps = require(script.Parent.validateButtonProps)

local MOTOR_OPTIONS_OPEN = {
	frequency = 4,
	dampingRatio = 1,
}

local MOTOR_OPTIONS_CLOSE = {
	frequency = 5.4,
	dampingRatio = 1,
}

local CONTEXT_MENU_PADDING = 12
local LARGE_WIDTH_SIZE = 300
local LARGE_WIDTH_THRESHOLD = 640

local function makeContextualMenu(baseMenuComponent, backgroundThemeKey)
	local contextualMenuComponent = Roact.PureComponent:extend("ContextualMenuFor" .. backgroundThemeKey)

	contextualMenuComponent.validateProps = t.strictInterface({
		buttonProps = validateButtonProps,

		zIndex = t.optional(t.integer),
		open = t.boolean,
		menuDirection = enumerateValidator(MenuDirection),
		openPositionY = t.UDim,

		closeBackgroundVisible = t.optional(t.boolean),
		screenSize = t.Vector2,

		onDismiss = t.optional(t.callback),
	})

	contextualMenuComponent.defaultProps = {
		zIndex = 2,
		closeBackgroundVisible = true,
	}

	function contextualMenuComponent:init()
		self.wasDismissed = false

		self.positionPercentBinding, self.positionPercentBindingUpdate = Roact.createBinding(0)

		self.motor = Otter.createSingleMotor(0)
		self.motor:onStep(self.positionPercentBindingUpdate)
		self.motor:onComplete(function()
			if self.wasDismissed then
				self.wasDismissed = false
				if self.props.onDismiss then
					self.props.onDismiss()
				end
			end
		end)

		self.state = {
			absoluteSize = Vector2.new(0, 0),
			absolutePosition = Vector2.new(0, 0),
		}

		self.positionBinding = self.positionPercentBinding:map(function(positionPercent)
			if self.props.menuDirection == MenuDirection.Down then
				return UDim2.fromScale(0.5, positionPercent - 1)
			else
				return UDim2.fromScale(0.5, 1 - positionPercent)
			end
		end)

		self.visibleBinding = self.positionPercentBinding:map(function(positionPercent)
			return positionPercent ~= 0
		end)
	end

	function contextualMenuComponent:render()
		return withStyle(function(stylePalette)
			local contextMenuWidth = UDim.new(1, -CONTEXT_MENU_PADDING * 2)
			if self.state.absoluteSize.X > LARGE_WIDTH_THRESHOLD then
				contextMenuWidth = UDim.new(0, LARGE_WIDTH_SIZE)
			end

			local anchorPointY = 0
			if self.props.menuDirection == MenuDirection.Up then
				anchorPointY = 1
			end

			local backgroundTransparency = stylePalette.Theme.Overlay.Transparency
			if not self.props.closeBackgroundVisible then
				backgroundTransparency = 1
			end

			local topCornerInset, _ = GuiService:GetGuiInset()
			local absolutePosition = self.state.absolutePosition + topCornerInset

			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Visible = self.visibleBinding,
				ZIndex = self.props.zIndex,

				[Roact.Change.AbsoluteSize] = function(rbx)
					self:setState({
						absoluteSize = rbx.AbsoluteSize,
					})
				end,

				[Roact.Change.AbsolutePosition] = function(rbx)
					self:setState({
						absolutePosition = rbx.AbsolutePosition,
					})
				end,
			}, {
				Background = Roact.createElement("TextButton", {
					ZIndex = 1,
					Text = "",
					BorderSizePixel = 0,
					BackgroundColor3 = stylePalette.Theme.Overlay.Color,
					BackgroundTransparency = backgroundTransparency,
					AutoButtonColor = false,

					Position = UDim2.fromOffset(-absolutePosition.X, -absolutePosition.Y),
					Size = UDim2.fromOffset(self.props.screenSize.X, self.props.screenSize.Y),

					[Roact.Event.Activated] = function()
						if not self.wasDismissed then
							self.wasDismissed = true
							self.motor:setGoal(Otter.spring(0, MOTOR_OPTIONS_CLOSE))
						end
					end,
				}),

				PositionFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					Position = UDim2.new(0, 0, self.props.openPositionY.Scale, self.props.openPositionY.Offset),
					ZIndex = 2,
				}, {
					BaseMenu = Roact.createElement(baseMenuComponent, {
						buttonProps = self.props.buttonProps,

						width = contextMenuWidth,
						position = self.positionBinding,
						anchorPoint = Vector2.new(0.5, anchorPointY),
					}),
				}),
			})
		end)
	end

	function contextualMenuComponent:didMount()
		if self.props.open then
			self.wasDismissed = false
			self.motor:setGoal(Otter.spring(1, MOTOR_OPTIONS_OPEN))
		end
	end

	function contextualMenuComponent:didUpdate(previousProps, previousState)
		if self.props.open ~= previousProps.open then
			if self.props.open then
				self.wasDismissed = false
				self.motor:setGoal(Otter.spring(1, MOTOR_OPTIONS_OPEN))
			else
				self.motor:setGoal(Otter.spring(0, MOTOR_OPTIONS_CLOSE))
			end
		end
	end

	function contextualMenuComponent:wilUnmount()
		self.motor:destroy()
	end

	return contextualMenuComponent
end

return makeContextualMenu
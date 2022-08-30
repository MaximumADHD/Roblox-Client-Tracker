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
local validateMotorOptionProps = require(script.Parent.validateMotorOptionProps)

local MOTOR_OPTIONS_OPEN = {
	frequency = 4,
	dampingRatio = 1,
}

local MOTOR_OPTIONS_CLOSE = {
	frequency = 2.6,
	dampingRatio = 1,
}

local DEFAULT_MOTOR_OPTIONS = {
	open = {
		targetValue = 1,
		springParams = MOTOR_OPTIONS_OPEN,
	},
	close = {
		targetValue = 0,
		springParams = MOTOR_OPTIONS_CLOSE,
	},
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
		menuDirection = t.optional(enumerateValidator(MenuDirection)),
		openPositionY = t.UDim,

		closeBackgroundVisible = t.optional(t.boolean),
		screenSize = t.Vector2,
		stayOnActivated = t.optional(t.boolean),

		onDismiss = t.optional(t.callback),
		setFrameRef = t.optional(t.union(t.callback, t.table)),
		setFirstItemRef = t.optional(t.union(t.callback, t.table)),
		motorOverrideOptions = t.optional(t.strictInterface({
			motorCallback = t.callback,
			open = validateMotorOptionProps,
			close = validateMotorOptionProps,
		})),
		horizontalAlignment = t.optional(t.enum(Enum.HorizontalAlignment)),
		openPositionX = t.optional(t.UDim),

		contextMenuWidthOverride = t.optional(t.UDim),
		anchorPointOverride = t.optional(t.Vector2),
	})

	contextualMenuComponent.defaultProps = {
		menuDirection = MenuDirection.Up,
		zIndex = 2,
		closeBackgroundVisible = true,
		horizontalAlignment = Enum.HorizontalAlignment.Center,
		openPositionX = UDim.new(0, 0),
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
		self.motorType = Otter.spring
		self.motorOptions = DEFAULT_MOTOR_OPTIONS
		if self.props.motorOverrideOptions then
			self.motorType = self.props.motorOverrideOptions.motorCallback
			self.motorOptions = self.props.motorOverrideOptions
		end

		self.state = {
			absoluteSize = Vector2.new(0, 0),
			absolutePosition = Vector2.new(0, 0),
		}

		self.visibleBinding = self.positionPercentBinding:map(function(positionPercent)
			return positionPercent ~= 0
		end)
	end

	function contextualMenuComponent:render()
		return withStyle(function(stylePalette)
			-- For small screens, the menu is stretched across the entire screen.
			-- This makes offset and horizontal alignment not useful so we do not take it into account.
			local anchorPointX = 0.5
			local contextMenuWidth = UDim.new(1, -CONTEXT_MENU_PADDING * 2)
			local openPositionX = UDim.new(0, 0)
			local isLargeWidth = self.state.absoluteSize.X > LARGE_WIDTH_THRESHOLD
			if isLargeWidth then
				contextMenuWidth = UDim.new(0, LARGE_WIDTH_SIZE)
				openPositionX = self.props.openPositionX

				if self.props.horizontalAlignment == Enum.HorizontalAlignment.Left then
					anchorPointX = 0
				elseif self.props.horizontalAlignment == Enum.HorizontalAlignment.Right then
					anchorPointX = 1
				end
			end

			local anchorPointY = 0
			if self.props.menuDirection == MenuDirection.Up then
				anchorPointY = 1
			end

			local backgroundTransparency = stylePalette.Theme.Overlay.Transparency
			if not self.props.closeBackgroundVisible then
				backgroundTransparency = 1
			end

			--Apply overrides
			contextMenuWidth = self.props.contextMenuWidthOverride or contextMenuWidth
			local anchorPoint = self.props.anchorPointOverride or Vector2.new(anchorPointX, anchorPointY)

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
							self.motor:setGoal(
								self.motorType(
									self.motorOptions.close.targetValue,
									self.motorOptions.close.springParams
								)
							)
						end
					end,
				}),

				PositionFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					Position = UDim2.new(
						openPositionX.Scale,
						openPositionX.Offset,
						self.props.openPositionY.Scale,
						self.props.openPositionY.Offset
					),
					ZIndex = 2,
				}, {
					BaseMenu = Roact.createElement(baseMenuComponent, {
						buttonProps = self.props.buttonProps,
						setFirstItemRef = self.props.setFirstItemRef,
						setFrameRef = self.props.setFrameRef,

						width = contextMenuWidth,
						position = self.positionPercentBinding:map(function(positionPercent)
							local xScale = 0.5
							if isLargeWidth or self.props.anchorPointOverride then
								if self.props.horizontalAlignment == Enum.HorizontalAlignment.Left then
									xScale = 0
								elseif self.props.horizontalAlignment == Enum.HorizontalAlignment.Right then
									xScale = 1
								end
							end

							if self.props.menuDirection == MenuDirection.Down then
								return UDim2.fromScale(xScale, positionPercent - 1)
							else
								return UDim2.fromScale(xScale, 1 - positionPercent)
							end
						end),
						anchorPoint = anchorPoint,
					}),
				}),
			})
		end)
	end

	function contextualMenuComponent:didMount()
		if self.props.open then
			self.wasDismissed = false
			self.motor:setGoal(self.motorType(self.motorOptions.open.targetValue, self.motorOptions.open.springParams))
		end
	end

	function contextualMenuComponent:didUpdate(previousProps, previousState)
		if self.props.open ~= previousProps.open then
			if self.props.open then
				self.wasDismissed = false
				self.motor:setGoal(
					self.motorType(self.motorOptions.open.targetValue, self.motorOptions.open.springParams)
				)
			else
				self.motor:setGoal(
					self.motorType(self.motorOptions.close.targetValue, self.motorOptions.close.springParams)
				)
			end
		end
	end

	function contextualMenuComponent:wilUnmount()
		self.motor:destroy()
	end

	return contextualMenuComponent
end

return makeContextualMenu

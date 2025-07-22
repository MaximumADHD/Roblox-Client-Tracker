--!nonstrict
local GuiService = game:GetService("GuiService")

local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Otter = require(Packages.Otter)

local withStyle = require(UIBlox.Core.Style.withStyle)
local validateColorInfo = require(UIBlox.Core.Style.Validator.validateColorInfo)

local BaseMenu = require(script.Parent.BaseMenu)
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

local ContextualMenu = Roact.PureComponent:extend("ContextualMenu")

ContextualMenu.validateProps = t.strictInterface({
	-- The properties for each cell. It is an array that contains multiple tables of button props.
	buttonProps = validateButtonProps,

	zIndex = t.optional(t.integer),
	-- Whether the menu is open or not
	open = t.boolean,
	-- The direction the menu should slide in from, either MenuDirection.Up or MenuDirection.Down
	menuDirection = t.optional(MenuDirection.isEnumValue),
	-- The Y position of the menu when open
	openPositionY = t.UDim,

	closeBackgroundVisible = t.optional(t.boolean),
	-- The total size of the screen, used for the dismiss background
	screenSize = t.Vector2,
	stayOnActivated = t.optional(t.boolean),
	-- A function to be called when the menu is dismissed
	onDismiss = t.optional(t.callback),
	setFrameRef = t.optional(t.union(t.callback, t.table)),
	setFirstItemRef = t.optional(t.union(t.callback, t.table)),
	-- A method of overriding motor options for animation
	motorOverrideOptions = t.optional(t.strictInterface({
		motorCallback = t.callback,
		-- whether the menu is open or not
		open = validateMotorOptionProps,
		close = validateMotorOptionProps,
	})),
	-- The horizontal alignment of the menu in its parent
	horizontalAlignment = t.optional(t.enum(Enum.HorizontalAlignment)),
	-- The X position of the menu when open
	openPositionX = t.optional(t.UDim),

	contextMenuWidthOverride = t.optional(t.UDim),
	anchorPointOverride = t.optional(t.Vector2),

	-- If the top element should have top corners rounded
	topElementRounded = t.optional(t.boolean),
	-- If the bottom element should have bottom corners rounded
	bottomElementRounded = t.optional(t.boolean),
	-- If the background asset behind the element is visible or not
	isElementBackgroundVisible = t.optional(t.boolean),

	-- If the divider is visible between all elements in the menu
	isElementDividerVisible = t.optional(t.boolean),
	-- Height of each element
	elementHeight = t.optional(t.number),
	-- Size of border rounded corner
	borderCornerRadius = t.optional(t.integer),
	-- Background of the menu
	background = t.optional(validateColorInfo),
	-- Indicate whether design override is enabled
	enableTokenOverride = t.optional(t.boolean),
	-- Render callback to get the header element for menu
	renderHeader = t.optional(t.callback),
	-- Height of header
	headerHeight = t.optional(t.number),
	-- If the shadow effect is visible
	showDropShadow = t.optional(t.boolean),
	-- Whether to enable RoactGamepad functionality
	isRoactGamepadEnabled = t.optional(t.boolean),
})

ContextualMenu.defaultProps = {
	menuDirection = MenuDirection.Up,
	zIndex = 2,
	closeBackgroundVisible = true,
	horizontalAlignment = Enum.HorizontalAlignment.Center,
	openPositionX = UDim.new(0, 0),
}

function ContextualMenu:init()
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

function ContextualMenu:render()
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
				Selectable = false,

				Position = UDim2.fromOffset(-absolutePosition.X, -absolutePosition.Y),
				Size = UDim2.fromOffset(self.props.screenSize.X, self.props.screenSize.Y),

				[Roact.Event.Activated] = function()
					if not self.wasDismissed then
						self.wasDismissed = true
						self.motor:setGoal(
							self.motorType(self.motorOptions.close.targetValue, self.motorOptions.close.springParams)
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
				BaseMenu = Roact.createElement(BaseMenu, {
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
					topElementRounded = self.props.topElementRounded,
					bottomElementRounded = self.props.bottomElementRounded,
					isElementBackgroundVisible = self.props.isElementBackgroundVisible,
					isElementDividerVisible = self.props.isElementDividerVisible,
					elementHeight = self.props.elementHeight,
					borderCornerRadius = self.props.borderCornerRadius,
					background = self.props.background,
					enableTokenOverride = self.props.enableTokenOverride,
					renderHeader = self.props.renderHeader,
					headerHeight = self.props.headerHeight,
					showDropShadow = self.props.showDropShadow,
					isRoactGamepadEnabled = self.props.isRoactGamepadEnabled,
				}),
			}),
		})
	end)
end

function ContextualMenu:didMount()
	if self.props.open then
		self.wasDismissed = false
		self.motor:setGoal(self.motorType(self.motorOptions.open.targetValue, self.motorOptions.open.springParams))
	end
end

function ContextualMenu:didUpdate(previousProps, previousState)
	if self.props.open ~= previousProps.open then
		if self.props.open then
			self.wasDismissed = false
			self.motor:setGoal(self.motorType(self.motorOptions.open.targetValue, self.motorOptions.open.springParams))
		else
			self.motor:setGoal(
				self.motorType(self.motorOptions.close.targetValue, self.motorOptions.close.springParams)
			)
		end
	end
end

function ContextualMenu:wilUnmount()
	self.motor:destroy()
end

return ContextualMenu

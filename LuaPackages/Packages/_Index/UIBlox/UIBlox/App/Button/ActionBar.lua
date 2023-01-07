local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local RoactGamepad = require(Packages.RoactGamepad)
local t = require(Packages.t)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local PrimaryContextualButton = require(Button.PrimaryContextualButton)
local PrimarySystemButton = require(Button.PrimarySystemButton)
local SecondaryButton = require(Button.SecondaryButton)
local IconButton = require(Button.IconButton)
local withStyle = require(UIBlox.Core.Style.withStyle)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getPageMargin = require(App.Container.getPageMargin)
local validateButtonProps = require(Button.validateButtonProps)
local validateIconButtonProps = IconButton.validateProps
local StyleConstants = require(UIBlox.App.Style.Constants)
local ButtonType = require(UIBlox.App.Button.Enum.ButtonType)

local ActionBar = Roact.PureComponent:extend("ActionBar")
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local BUTTON_PADDING = 12
local BUTTON_HEIGHT = 48
local ICON_SIZE = 36
local BUTTON_TYPE_ENUMS = {
	[ButtonType.Secondary] = SecondaryButton,
	[ButtonType.PrimaryContextual] = PrimaryContextualButton,
	[ButtonType.PrimarySystem] = PrimarySystemButton,
}

function ActionBar:init()
	self.buttonRefs = RoactGamepad.createRefCache()

	self.state = {
		frameWidth = 0,
	}

	self.frameRef = self.props.frameRef or Roact.createRef()

	self.updateFrameSize = function(rbx)
		local frameWidth = rbx.AbsoluteSize.X
		if frameWidth ~= self.state.frameWidth then
			self:setState({
				frameWidth = frameWidth,
			})
		end

		if self.props.onAbsoluteSizeChanged then
			self.props.onAbsoluteSizeChanged(rbx.AbsoluteSize)
		end
	end

	self.getGamepadNextSelectionLeft = function(buttonRefIndex, buttonRefCount)
		return buttonRefIndex > 1 and self.buttonRefs[buttonRefIndex - 1] or nil
	end

	self.getGamepadNextSelectionRight = function(buttonRefIndex, buttonRefCount)
		return buttonRefIndex < buttonRefCount and self.buttonRefs[buttonRefIndex + 1] or nil
	end
end

ActionBar.validateProps = t.strictInterface({
	-- buttons: A table of button tables that contain props that PrimaryContextualButton allow.
	button = t.optional(t.strictInterface({
		props = validateButtonProps,
	})),

	-- Indicate whether the button should be rendered at start of the action bar. By default, the button is
	-- rendered at the end of the component.
	enableButtonAtStart = t.optional(t.boolean),

	-- icons: A table of button tables that contain props that IconButton allow.
	icons = t.optional(t.array(t.strictInterface({
		props = validateIconButtonProps,
	}))),

	-- Override the internal margins
	marginOverride = t.optional(t.strictInterface({
		left = t.number,
		right = t.number,
		top = t.number,
		bottom = t.number,
	})),

	-- override horizontal alignment
	horizontalAlignment = t.optional(t.enum(Enum.HorizontalAlignment)),

	onAbsoluteSizeChanged = t.optional(t.callback),

	-- Children
	[Roact.Children] = t.optional(t.table),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	frameRef = t.optional(t.table),
})

ActionBar.defaultProps = {
	horizontalAlignment = Enum.HorizontalAlignment.Center,
}

function ActionBar:render()
	if UIBloxConfig.enableActionBarLayoutFix then
		return self:renderWithLayoutFix()
	else
		return self:renderLegacy()
	end
end

function ActionBar:renderWithLayoutFix()
	return withStyle(function(stylePalette)
		local margin = getPageMargin(self.state.frameWidth)
		local contentWidth = self.state.frameWidth - margin * 2
		local iconSize = IconSize.Medium
		local innerMargin
		if self.props.marginOverride then
			innerMargin = self.props.marginOverride
		else
			innerMargin = {
				left = margin,
				right = margin,
				top = 0,
				bottom = StyleConstants.Layout.ActionBar.PositionOffset,
			}
		end

		local iconNumber = 0
		if self.props.icons and #self.props.icons then
			iconNumber = #self.props.icons
		end

		local buttonNumber = self.props.button ~= nil and 1 or 0
		local isButtonAtStart = self.props.enableButtonAtStart == true and buttonNumber ~= 0
		local buttonRefNumber = iconNumber + buttonNumber
		local buttonTable = {}

		if iconNumber ~= 0 then
			for iconButtonKey, iconButton in ipairs(self.props.icons) do
				local iconButtonIndex = isButtonAtStart and iconButtonKey + buttonNumber or iconButtonKey
				local newProps = {
					layoutOrder = iconButtonIndex,
					iconSize = iconSize,
				}
				local iconButtonProps = Cryo.Dictionary.join(newProps, iconButton.props)

				local gamepadFrameProps = {
					key = "Button" .. tostring(iconButtonIndex),
					Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.buttonRefs[iconButtonIndex],
					NextSelectionUp = nil,
					NextSelectionDown = nil,
					NextSelectionLeft = self.getGamepadNextSelectionLeft(iconButtonIndex, buttonRefNumber),
					NextSelectionRight = self.getGamepadNextSelectionRight(iconButtonIndex, buttonRefNumber),
					inputBindings = {
						Activated = iconButtonProps.onActivated
								and RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, iconButtonProps.onActivated)
							or nil,
					},
				}

				table.insert(
					buttonTable,
					Roact.createElement(RoactGamepad.Focusable.Frame, gamepadFrameProps, {
						Icon = Roact.createElement(IconButton, iconButtonProps),
					})
				)
			end
		end

		if buttonNumber ~= 0 then
			local buttonSize = UDim2.fromOffset(contentWidth - iconNumber * (ICON_SIZE + BUTTON_PADDING), BUTTON_HEIGHT)
			local buttonIndex = isButtonAtStart and 1 or iconNumber + 1

			local newProps = {
				layoutOrder = buttonIndex,
				size = buttonSize,
			}
			local buttonProps = Cryo.Dictionary.join(newProps, self.props.button.props)

			local gamepadFrameProps = {
				key = "Button" .. buttonIndex,
				Size = buttonSize,
				BackgroundTransparency = 1,
				[Roact.Ref] = self.buttonRefs[buttonIndex],
				NextSelectionUp = nil,
				NextSelectionDown = nil,
				NextSelectionLeft = self.getGamepadNextSelectionLeft(buttonIndex, buttonRefNumber),
				NextSelectionRight = self.getGamepadNextSelectionRight(buttonIndex, buttonRefNumber),
				inputBindings = {
					Activated = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, buttonProps.onActivated),
				},
			}

			local buttonComponent = if iconNumber == 0 then PrimarySystemButton else PrimaryContextualButton

			if buttonProps.buttonType then
				buttonComponent = BUTTON_TYPE_ENUMS[buttonProps.buttonType]
			end

			table.insert(
				buttonTable,
				isButtonAtStart and 1 or buttonRefNumber,
				Roact.createElement(RoactGamepad.Focusable.Frame, gamepadFrameProps, {
					Icon = Roact.createElement(buttonComponent, buttonProps),
				})
			)
		end

		if self.props[Roact.Children] then
			buttonTable = self.props[Roact.Children]
		end

		return Roact.createElement(RoactGamepad.Focusable[FitFrameOnAxis], {
			BackgroundTransparency = 1,
			minimumSize = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = self.props.horizontalAlignment,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			contentPadding = UDim.new(0, BUTTON_PADDING),
			[Roact.Ref] = self.frameRef,
			[Roact.Change.AbsoluteSize] = self.updateFrameSize,
			margin = innerMargin,

			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
		}, buttonTable)
	end)
end

function ActionBar:renderLegacy()
	return withStyle(function(stylePalette)
		local margin = getPageMargin(self.state.frameWidth)
		local contentWidth = self.state.frameWidth - margin * 2
		local iconSize = IconSize.Medium

		local iconNumber = 0
		if self.props.icons and #self.props.icons then
			iconNumber = #self.props.icons
		end

		local buttonTable = {}

		if iconNumber ~= 0 then
			for iconButtonIndex, iconButton in ipairs(self.props.icons) do
				local newProps = {
					layoutOrder = iconButtonIndex,
					iconSize = iconSize,
				}
				local iconButtonProps = Cryo.Dictionary.join(newProps, iconButton.props)

				local gamepadFrameProps = {
					key = "Button" .. tostring(iconButtonIndex),
					Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.buttonRefs[iconButtonIndex],
					NextSelectionUp = nil,
					NextSelectionDown = nil,
					NextSelectionLeft = iconButtonIndex > 1 and self.buttonRefs[iconButtonIndex - 1] or nil,
					NextSelectionRight = iconButtonIndex < iconNumber and self.buttonRefs[iconButtonIndex + 1] or nil,
					inputBindings = {
						Activated = iconButtonProps.onActivated
								and RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, iconButtonProps.onActivated)
							or nil,
					},
				}

				table.insert(
					buttonTable,
					Roact.createElement(RoactGamepad.Focusable.Frame, gamepadFrameProps, {
						Icon = Roact.createElement(IconButton, iconButtonProps),
					})
				)
			end
		end

		if self.props.button then
			local button = self.props.button

			local buttonSize = UDim2.fromOffset(contentWidth - iconNumber * (ICON_SIZE + BUTTON_PADDING), BUTTON_HEIGHT)

			local newProps = {
				layoutOrder = iconNumber + 1,
				size = buttonSize,
			}
			local buttonProps = Cryo.Dictionary.join(newProps, button.props)

			local gamepadFrameProps = {
				key = "Button" .. tostring(iconNumber + 1),
				Size = buttonSize,
				BackgroundTransparency = 1,
				[Roact.Ref] = self.buttonRefs[iconNumber + 1],
				NextSelectionUp = nil,
				NextSelectionDown = nil,
				NextSelectionLeft = iconNumber and self.buttonRefs[iconNumber] or nil,
				NextSelectionRight = nil,
				inputBindings = {
					Activated = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, buttonProps.onActivated),
				},
			}

			local buttonComponent = if iconNumber == 0 then PrimarySystemButton else PrimaryContextualButton

			if buttonProps.buttonType then
				buttonComponent = BUTTON_TYPE_ENUMS[buttonProps.buttonType]
			end

			table.insert(
				buttonTable,
				Roact.createElement(RoactGamepad.Focusable.Frame, gamepadFrameProps, {
					Icon = Roact.createElement(buttonComponent, buttonProps),
				})
			)
		end

		if self.props[Roact.Children] then
			buttonTable = self.props[Roact.Children]
		end

		return Roact.createElement(RoactGamepad.Focusable[FitFrameOnAxis], {
			BackgroundTransparency = 1,
			minimumSize = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			contentPadding = UDim.new(0, BUTTON_PADDING),
			[Roact.Ref] = self.frameRef,
			[Roact.Change.AbsoluteSize] = self.updateFrameSize,
			margin = {
				left = margin,
				right = margin,
				top = 0,
				bottom = StyleConstants.Layout.ActionBar.PositionOffset,
			},

			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
		}, buttonTable)
	end)
end

function ActionBar:didMount()
	if self.frameRef.current then
		self.updateFrameSize(self.frameRef.current)
	end
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		ActionBar,
		Cryo.Dictionary.join(props, {
			frameRef = ref,
		})
	)
end)

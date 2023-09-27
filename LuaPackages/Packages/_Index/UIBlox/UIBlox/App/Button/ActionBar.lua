--!nonstrict
local ButtonRoot = script.Parent
local App = ButtonRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local RoactGamepad = require(Packages.RoactGamepad)
local t = require(Packages.t)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local Button = require(ButtonRoot.Button)
local IconButton = require(ButtonRoot.IconButton)
local TextButton = require(ButtonRoot.TextButton)
local ButtonType = require(ButtonRoot.Enum.ButtonType)

local withStyle = require(UIBlox.Core.Style.withStyle)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getPageMargin = require(App.Container.getPageMargin)
local StyleConstants = require(App.Style.Constants)

local ActionBar = Roact.PureComponent:extend("ActionBar")
local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)
local EnableTextButtonsInActionBar = UIBloxConfig.enableTextButtonsInActionBar
local EnableActionBarTokens = UIBloxConfig.enableActionBarTokens

local BUTTON_PADDING = 12
local BUTTON_HEIGHT = 48
local ICON_SIZE = 36

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
	-- See [Button](Button.md) for more information.
	button = t.optional(t.strictInterface({
		props = Button.validateProps,
	})),

	-- height of the icon wrapper
	iconSize = t.optional(t.number),
	-- height of each button
	buttonHeight = t.optional(t.number),
	-- padding between each button
	buttonPadding = t.optional(t.number),

	-- Indicate whether the button should be rendered at start of the action bar. By default, the button is
	-- rendered at the end of the component.
	enableButtonAtStart = t.optional(t.boolean),

	-- icons: A table of button tables that contain props that IconButton allow.
	icons = t.optional(t.array(t.strictInterface({
		props = IconButton.validateProps,
	}))),

	-- Overrides the inner margins of the action bar
	marginOverride = t.optional(t.strictInterface({
		left = t.number,
		right = t.number,
		top = t.number,
		bottom = t.number,
	})),

	-- Overrides the horizontal alignment of the action bar contents.
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

	-- textButtons: A table of button tables that contain props that TextButton allow.
	textButtons = if EnableTextButtonsInActionBar
		then t.optional(t.array(t.strictInterface({
			props = TextButton.validateProps,
		})))
		else nil,
})

ActionBar.defaultProps = {
	horizontalAlignment = Enum.HorizontalAlignment.Center,
	iconSize = 36,
	buttonHeight = 48,
	buttonPadding = 12,
}

function ActionBar:render()
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

		local textNumber = 0
		if EnableTextButtonsInActionBar then
			if self.props.textButtons and #self.props.textButtons then
				textNumber = #self.props.textButtons
			end
		end

		local buttonNumber = self.props.button ~= nil and 1 or 0
		local isButtonAtStart = self.props.enableButtonAtStart == true and buttonNumber ~= 0
		local buttonRefNumber = textNumber + iconNumber + buttonNumber
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
					Size = if EnableActionBarTokens
						then UDim2.fromOffset(self.props.iconSize, self.props.iconSize)
						else UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
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

		if EnableTextButtonsInActionBar and (textNumber ~= 0) then
			for textButtonKey, textButton in ipairs(self.props.textButtons) do
				local textButtonIndex = (if isButtonAtStart then textButtonKey + buttonNumber else textButtonKey)
					+ iconNumber
				local newProps = {
					layoutOrder = textButtonIndex,
				}
				local textButtonProps = Cryo.Dictionary.join(newProps, textButton.props)

				local gamepadFrameProps = {
					key = "Button" .. tostring(textButtonIndex),
					Size = if EnableActionBarTokens
						then UDim2.fromOffset(0, self.props.iconSize)
						else UDim2.fromOffset(0, ICON_SIZE),
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundTransparency = 1,
					[Roact.Ref] = self.buttonRefs[textButtonIndex],
					NextSelectionUp = nil,
					NextSelectionDown = nil,
					NextSelectionLeft = self.getGamepadNextSelectionLeft(textButtonIndex, buttonRefNumber),
					NextSelectionRight = self.getGamepadNextSelectionRight(textButtonIndex, buttonRefNumber),
					inputBindings = {
						Activated = textButtonProps.onActivated
								and RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, textButtonProps.onActivated)
							or nil,
					},
				}

				table.insert(
					buttonTable,
					Roact.createElement(RoactGamepad.Focusable.Frame, gamepadFrameProps, {
						TextButton = Roact.createElement(TextButton, textButtonProps),
					})
				)
			end
		end

		if buttonNumber ~= 0 then
			local buttonSize = if EnableActionBarTokens
				then UDim2.fromOffset(
					contentWidth - iconNumber * (self.props.iconSize + self.props.buttonPadding),
					self.props.buttonHeight
				)
				else UDim2.fromOffset(contentWidth - iconNumber * (ICON_SIZE + BUTTON_PADDING), BUTTON_HEIGHT)
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

			if buttonProps.buttonType == nil then
				buttonProps.buttonType = if iconNumber == 0
					then ButtonType.PrimarySystem
					else ButtonType.PrimaryContextual
			end

			table.insert(
				buttonTable,
				isButtonAtStart and 1 or buttonRefNumber,
				Roact.createElement(RoactGamepad.Focusable.Frame, gamepadFrameProps, {
					Icon = Roact.createElement(Button, buttonProps),
				})
			)
		end

		if self.props[Roact.Children] then
			buttonTable = self.props[Roact.Children]
		end

		return Roact.createElement(RoactGamepad.Focusable[FitFrameOnAxis], {
			BackgroundTransparency = 1,
			minimumSize = if EnableActionBarTokens
				then UDim2.new(1, 0, 0, self.props.buttonHeight)
				else UDim2.new(1, 0, 0, BUTTON_HEIGHT),
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

function ActionBar:didMount()
	if self.frameRef.current then
		self.updateFrameSize(self.frameRef.current)
	end
end

local ActionBarForwardRef = Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		ActionBar,
		Cryo.Dictionary.join(props, {
			frameRef = ref,
		})
	)
end)

ActionBarForwardRef.validateProps = ActionBar.validateProps

return ActionBarForwardRef

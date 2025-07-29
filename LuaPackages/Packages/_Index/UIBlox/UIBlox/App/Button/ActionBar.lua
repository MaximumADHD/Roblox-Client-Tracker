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
local ComboButton = require(ButtonRoot.ComboButton)
local IconButton = require(ButtonRoot.IconButton)
local TextButton = require(ButtonRoot.TextButton)
local ButtonType = require(ButtonRoot.Enum.ButtonType)

local withStyle = require(UIBlox.Core.Style.withStyle)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getPageMargin = require(App.Container.getPageMargin)
local StyleConstants = require(App.Style.Constants)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local ActionBar = Roact.PureComponent:extend("ActionBar")

local BUTTON_PADDING = 12

function ActionBar:init()
	self.buttonRefs = self.props.isRoactGamepadEnabled and RoactGamepad.createRefCache() or {}

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
	-- A table of button tables that contain props that [[Button]] or
	-- [[ComboButton]] allows
	button = t.optional(
		t.union(
			t.strictInterface({ props = Button.validateProps }),
			t.strictInterface({ props = ComboButton.validateProps })
		)
	),

	-- Component that will be rendered instead of the above button table if it exists
	buttonOverride = t.optional(t.table),

	-- Height of the icon wrapper
	iconSize = t.optional(t.number),
	-- Height of each button
	buttonHeight = t.optional(t.number),
	-- Padding between each button
	buttonPadding = t.optional(t.number),

	-- Indicate whether the button should be rendered at start of the action bar. By default, the button is
	-- rendered at the end of the component.
	enableButtonAtStart = t.optional(t.boolean),

	-- A table of button tables that contain props that IconButton allow.
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
	textButtons = t.optional(t.array(t.strictInterface({
		props = TextButton.validateProps,
	}))),

	-- Whether to enable RoactGamepad functionality
	isRoactGamepadEnabled = t.optional(t.boolean),
})

ActionBar.defaultProps = {
	horizontalAlignment = Enum.HorizontalAlignment.Center,
	iconSize = 36,
	buttonHeight = 48,
	buttonPadding = 12,
	isRoactGamepadEnabled = true,
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
		if self.props.textButtons and #self.props.textButtons then
			textNumber = #self.props.textButtons
		end

		local buttonNumber = (
			self.props.button ~= nil
			or (UIBloxConfig.enableActionBarButtonOverride and self.props.buttonOverride ~= nil)
		)
				and 1
			or 0
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

				if not self.props.isRoactGamepadEnabled then
					self.buttonRefs[iconButtonIndex] = self.buttonRefs[iconButtonIndex] or Roact.createRef()
				end

				table.insert(
					buttonTable,
					Roact.createElement(
						if self.props.isRoactGamepadEnabled then RoactGamepad.Focusable.Frame else "Frame",
						{
							key = "Button" .. tostring(iconButtonIndex),
							Size = UDim2.fromOffset(self.props.iconSize, self.props.iconSize),
							BackgroundTransparency = 1,
							[Roact.Ref] = self.buttonRefs[iconButtonIndex],
							NextSelectionUp = nil,
							NextSelectionDown = nil,
							NextSelectionLeft = self.getGamepadNextSelectionLeft(iconButtonIndex, buttonRefNumber),
							NextSelectionRight = self.getGamepadNextSelectionRight(iconButtonIndex, buttonRefNumber),
							inputBindings = if self.props.isRoactGamepadEnabled
								then {
									Activated = iconButtonProps.onActivated and RoactGamepad.Input.onBegin(
										Enum.KeyCode.ButtonA,
										iconButtonProps.onActivated
									) or nil,
								}
								else nil,
						},
						{
							Icon = Roact.createElement(IconButton, iconButtonProps),
						}
					)
				)
			end
		end

		if textNumber ~= 0 then
			for textButtonKey, textButton in ipairs(self.props.textButtons) do
				local textButtonIndex = (if isButtonAtStart then textButtonKey + buttonNumber else textButtonKey)
					+ iconNumber
				local newProps = {
					layoutOrder = textButtonIndex,
				}
				local textButtonProps = Cryo.Dictionary.join(newProps, textButton.props)

				if not self.props.isRoactGamepadEnabled then
					self.buttonRefs[textButtonIndex] = self.buttonRefs[textButtonIndex] or Roact.createRef()
				end

				table.insert(
					buttonTable,
					Roact.createElement(
						if self.props.isRoactGamepadEnabled then RoactGamepad.Focusable.Frame else "Frame",
						{
							key = "Button" .. tostring(textButtonIndex),
							Size = UDim2.fromOffset(0, self.props.iconSize),
							AutomaticSize = Enum.AutomaticSize.X,
							BackgroundTransparency = 1,
							[Roact.Ref] = self.buttonRefs[textButtonIndex],
							NextSelectionUp = nil,
							NextSelectionDown = nil,
							NextSelectionLeft = self.getGamepadNextSelectionLeft(textButtonIndex, buttonRefNumber),
							NextSelectionRight = self.getGamepadNextSelectionRight(textButtonIndex, buttonRefNumber),
							inputBindings = if self.props.isRoactGamepadEnabled
								then {
									Activated = textButtonProps.onActivated and RoactGamepad.Input.onBegin(
										Enum.KeyCode.ButtonA,
										textButtonProps.onActivated
									) or nil,
								}
								else nil,
						},
						{
							TextButton = Roact.createElement(TextButton, textButtonProps),
						}
					)
				)
			end
		end

		if buttonNumber ~= 0 then
			local buttonSize = UDim2.fromOffset(
				contentWidth - iconNumber * (self.props.iconSize + self.props.buttonPadding),
				self.props.buttonHeight
			)
			local buttonIndex = isButtonAtStart and 1 or iconNumber + 1

			local useComboButton
			local buttonProps
			if not UIBloxConfig.enableActionBarButtonOverride or not self.props.buttonOverride then
				useComboButton = ComboButton.validateProps(self.props.button.props)
				local newProps = {
					layoutOrder = buttonIndex,
					size = buttonSize,
				}
				buttonProps = Cryo.Dictionary.join(newProps, self.props.button.props)

				if not useComboButton and buttonProps.buttonType == nil then
					buttonProps.buttonType = if iconNumber == 0
						then ButtonType.PrimarySystem
						else ButtonType.PrimaryContextual
				end
			end

			if not self.props.isRoactGamepadEnabled then
				self.buttonRefs[buttonIndex] = self.buttonRefs[buttonIndex] or Roact.createRef()
			end

			table.insert(
				buttonTable,
				isButtonAtStart and 1 or buttonRefNumber,
				Roact.createElement(if self.props.isRoactGamepadEnabled then RoactGamepad.Focusable.Frame else "Frame", {
					key = "Button" .. buttonIndex,
					Size = buttonSize,
					BackgroundTransparency = 1,
					[Roact.Ref] = self.buttonRefs[buttonIndex],
					NextSelectionUp = nil,
					NextSelectionDown = nil,
					NextSelectionLeft = self.getGamepadNextSelectionLeft(buttonIndex, buttonRefNumber),
					NextSelectionRight = self.getGamepadNextSelectionRight(buttonIndex, buttonRefNumber),
					inputBindings = if self.props.isRoactGamepadEnabled
						then {
							Activated = if not useComboButton
									and (
										not UIBloxConfig.enableActionBarButtonOverride
										or not self.props.buttonOverride
									)
								then RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, buttonProps.onActivated)
								else nil,
						}
						else nil,
				}, {
					Icon = if UIBloxConfig.enableActionBarButtonOverride and self.props.buttonOverride
						then self.props.buttonOverride
						else Roact.createElement(if useComboButton then ComboButton else Button, buttonProps),
				})
			)
		end

		if self.props[Roact.Children] then
			buttonTable = self.props[Roact.Children]
		end

		return Roact.createElement(
			if self.props.isRoactGamepadEnabled then RoactGamepad.Focusable[FitFrameOnAxis] else FitFrameOnAxis,
			{
				BackgroundTransparency = 1,
				minimumSize = UDim2.new(1, 0, 0, self.props.buttonHeight),
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
			},
			buttonTable
		)
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

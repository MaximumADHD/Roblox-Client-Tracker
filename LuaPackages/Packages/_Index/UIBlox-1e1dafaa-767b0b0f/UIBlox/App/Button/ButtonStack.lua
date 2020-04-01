local ButtonRoot = script.Parent
local AppRoot = ButtonRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local AlertButton = require(ButtonRoot.AlertButton)
local PrimaryContextualButton = require(ButtonRoot.PrimaryContextualButton)
local PrimarySystemButton = require(ButtonRoot.PrimarySystemButton)
local SecondaryButton = require(ButtonRoot.SecondaryButton)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local withStyle = require(UIBlox.Core.Style.withStyle)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local ButtonType = require(ButtonRoot.Enum.ButtonType)

local validateButtonStack = require(AppRoot.Button.Validator.validateButtonStack)

local BUTTON_HEIGHT = 36

local ButtonStack = Roact.PureComponent:extend("ButtonStack")

ButtonStack.defaultProps = {
	buttonHeight = BUTTON_HEIGHT,
	marginBetween = 12,
	minHorizontalButtonPadding = 8,
}

function ButtonStack:init()
	self.ref = Roact.createRef()

	self.state = {
		frameWidth = 0
	}

	self.updateFrameSize = function(rbx)
		local frameWidth = rbx.AbsoluteSize.X
		if frameWidth ~= self.state.frameWidth then
			self:setState({
				frameWidth = frameWidth,
			})
		end
	end
end

function ButtonStack:render()
	assert(validateButtonStack(self.props))

	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local textSize = font.Body.RelativeSize * font.BaseSize

		local buttons = self.props.buttons
		local paddingBetween = #buttons > 1 and self.props.marginBetween or 0
		local nonStackedButtonWidth = (self.state.frameWidth / #buttons) - (paddingBetween * (#buttons - 1) / #buttons)

		local isButtonStacked = false
		local fillDirection
		if self.props.forcedFillDirection then
			isButtonStacked = self.props.forcedFillDirection == Enum.FillDirection.Vertical
			fillDirection = self.props.forcedFillDirection
		else
			for _, button in ipairs(buttons) do
				local buttonTextWidth = GetTextSize(
					button.props.text or "",
					textSize,
					font.Body.Font,
					Vector2.new(self.state.frameWidth, self.props.buttonHeight)
				)
				if buttonTextWidth.X > (nonStackedButtonWidth - (2 * self.props.minHorizontalButtonPadding)) then
					isButtonStacked = true
					break
				end
			end
			fillDirection = isButtonStacked and Enum.FillDirection.Vertical or Enum.FillDirection.Horizontal
		end

		local buttonSize = isButtonStacked and UDim2.new(1, 0, 0, self.props.buttonHeight)
			or UDim2.new(0, nonStackedButtonWidth, 0, self.props.buttonHeight)

		local buttonTable = {}
		for colIndex, button in ipairs(buttons) do
			local newProps = {
				layoutOrder = isButtonStacked and (#buttons - colIndex) or colIndex,
				size = buttonSize,
			}
			local buttonProps = Cryo.Dictionary.join(newProps, button.props)

			if button.buttonType == ButtonType.PrimaryContextual then
				table.insert(buttonTable, Roact.createElement(PrimaryContextualButton, buttonProps))
			elseif button.buttonType == ButtonType.PrimarySystem then
				table.insert(buttonTable, Roact.createElement(PrimarySystemButton, buttonProps))
			elseif button.buttonType == ButtonType.Alert then
				table.insert(buttonTable, Roact.createElement(AlertButton, buttonProps))
			else
				table.insert(buttonTable, Roact.createElement(SecondaryButton, buttonProps))
			end
		end

		return Roact.createElement(FitFrameOnAxis, {
			BackgroundTransparency = 1,
			contentPadding = UDim.new(0, paddingBetween),
			FillDirection = fillDirection,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			LayoutOrder = 3,
			minimumSize = UDim2.new(1, 0, 0, self.props.buttonHeight),
			[Roact.Ref] = self.ref,
			[Roact.Change.AbsoluteSize] = self.updateFrameSize,
		},
			buttonTable
		)
	end)
end

return ButtonStack
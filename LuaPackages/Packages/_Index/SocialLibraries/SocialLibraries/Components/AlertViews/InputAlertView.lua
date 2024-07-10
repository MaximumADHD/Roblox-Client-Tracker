local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Components = SocialLibraries.Components
-- TODO remove this when keyboard covering screen is automatically tracked on android
local UserInputService = dependencies.UserInputService

local AlertViewBuilder = require(Components.AlertViewBuilder.AlertViewBuilder)

local InputAlertView = Roact.Component:extend("InputAlertView")
InputAlertView.defaultProps = {
	titleText = "TestTitle",
	cancelText = "TestCancel",
	confirmText = "TestConfirm",

	warningText = nil,
	inputText = "TestInput",

	maxCharacters = 150,

	onActivated = function() end,

	onModalClose = function() end,

	screenSize = Vector2.new(0, 0),

	soakAreaColor3 = Color3.fromRGB(0, 0, 255),
	soakAreaTransparency = 0.9,
	shouldAdjustForKeyboard = true,
}

function InputAlertView:init()
	self.ref = Roact.createRef()
	self.onTextChanged = function(newText)
		self:setState({
			inputText = newText,
			inputLengthExceeded = #newText > self.props.maxCharacters,
		})
	end

	self.onButtonActivated = function()
		self.closing = true
	end

	self.updateModalPosition = function()
		-- Calculate how much the keyboard overlaps with the modal soak, and subtract that from the height.
		-- This is because on different devices the overlap is different.
		self:setState({
			keyboardOffset = UserInputService.OnScreenKeyboardVisible
					and self.state.yPosition + self.ref:getValue().AbsoluteSize.Y - UserInputService.OnScreenKeyboardPosition.Y
				or 0,
		})
	end

	self.onModalStayOpen = function()
		self.closing = false

		if self.props.shouldAdjustForKeyboard then
			-- if the modal stays open the keyboard may close after a button click
			self.updateModalPosition()
		end
	end

	if self.props.shouldAdjustForKeyboard then
		-- TODO remove this when keyboard covering screen is automatically tracked on android
		self.keyboardConnection = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardVisible")
			:connect(function()
				-- Run on a different thread so it doesn't block button events that could be triggered at the same time.
				spawn(function()
					-- Check if modal is closing, to prevent it interrupting it from doing so:
					if not self.isMounted or self.closing then
						return
					end

					self.updateModalPosition()
				end)
			end)
	end

	self.onPositionChanged = function(rbx)
		if not self.isMounted then
			return
		end

		if rbx.AbsolutePosition.Y ~= self.state.yPosition then
			self:setState({ yPosition = rbx.AbsolutePosition.Y })
		end
	end

	self.closing = false

	self.state = {
		inputText = self.props.inputText,
		inputLengthExceeded = false,
		keyboardOffset = 0,
		yPosition = 0,
	}
end

function InputAlertView:render()
	local props = self.props
	local buttons
	local maxCharacters = props.maxCharacters

	if not props.displayFailed then
		buttons = {
			{
				buttonType = ButtonType.Secondary,
				props = {
					text = props.cancelText,
					onActivated = function() end,
				},
			},
			{
				buttonType = ButtonType.PrimarySystem,
				props = {
					text = props.confirmText,
					isDisabled = self.state.inputLengthExceeded,
					onActivated = props.onActivated,
				},
			},
		}
	else
		buttons = {
			{
				buttonType = ButtonType.Alert,
				props = {
					text = props.failedText,
					onActivated = props.onActivated,
				},
			},
		}
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, -self.state.keyboardOffset),
		Transparency = 1,
		[Roact.Change.AbsolutePosition] = self.onPositionChanged,
		[Roact.Ref] = self.ref,
	}, {
		AlertView = Roact.createElement(AlertViewBuilder, {
			buttons = buttons,
			inputLengthExceeded = self.state.inputLengthExceeded,
			onActivated = self.onButtonActivated,
			onModalClose = props.onModalClose,
			onModalStayOpen = self.onModalStayOpen,
			soakAreaColor3 = self.props.soakAreaColor3,
			soakAreaTransparency = self.props.soakAreaTransparency,
			textboxes = {
				InputBox = {
					belowText = maxCharacters and #self.state.inputText .. "/" .. maxCharacters,
					belowTextAlignment = Enum.TextXAlignment.Right,
					LayoutOrder = 1,
					onTextChanged = self.onTextChanged,
					PlaceholderText = props.placeholderText,
					Text = props.inputText,
					warningText = self.props.warningText,
				},
			},
			title = props.titleText,
			screenSize = props.screenSize,
		}),
	})
end

function InputAlertView:didMount()
	self.isMounted = true
end

function InputAlertView:willUnmount()
	self.isMounted = false

	if self.keyboardConnection then
		self.keyboardConnection:Disconnect()
		self.keyboardConnection = nil
	end
end

return InputAlertView

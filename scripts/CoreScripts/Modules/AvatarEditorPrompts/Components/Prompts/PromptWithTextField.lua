--!nonstrict
--[[
	A prompt with a text field for text entry. On mobile, the prompt moves so that the text box is still visible even
	when the on screen keyboard is up.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local withStyle = UIBlox.Style.withStyle

local Images = UIBlox.App.ImageSet.Images

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

local NAME_TEXTBOX_HEIGHT = 35

local TOP_SCREEN_PADDING = 20

local TEXTBOX_STROKE = Images["component_assets/circle_17_stroke_1"]
local STROKE_SLICE_CENTER = Rect.new(8, 8, 8, 8)

local PromptWithTextField = Roact.PureComponent:extend("PromptWithTextField")

PromptWithTextField.validateProps = t.strictInterface({
	fieldText = t.string,
	onFieldTextUpdated = t.callback,

	-- Props passed to Alert
	title = t.string,
	bodyText = t.optional(t.string),
	buttonStackInfo = t.table,

	-- mapStateToProps
	screenSize = t.Vector2,
})

function PromptWithTextField:init()
	self:setState({
		alertPosition = UDim2.fromScale(0.5, 0.5),
	})

	self.textBoxRef = Roact.createRef()

	self.textUpdated = function(rbx)
		self.props.onFieldTextUpdated(rbx.Text)
	end

	self.lastAlertHeight = 100

	self.calculateAlertPosition = function()
		local alertPosition = UDim2.fromScale(0.5, 0.5)

		if UserInputService.OnScreenKeyboardVisible then
			local visibleHeight = self.props.screenSize.Y - UserInputService.OnScreenKeyboardSize.Y

			local centerPosition = visibleHeight / 2
			local topEdge = centerPosition - self.lastAlertHeight / 2

			if topEdge < TOP_SCREEN_PADDING then
				centerPosition = centerPosition + (TOP_SCREEN_PADDING - topEdge)
			end

			alertPosition = UDim2.new(0.5, 0, 0, centerPosition)
		end

		if self.state.alertPosition ~= alertPosition then
			self:setState({
				alertPosition = alertPosition,
			})
		end
	end

	self.alertSizeChanged = function(rbx)
		self.lastAlertHeight = rbx.AbsoluteSize.Y

		self.calculateAlertPosition()
	end

	self.alertMounted = function()
		local textBox = self.textBoxRef:getValue()
		if textBox then
			textBox:CaptureFocus()
		end
	end
end

function PromptWithTextField:renderAlertMiddleContent()
	return withStyle(function(styles)
		local font = styles.Font
		local theme = styles.Theme

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, NAME_TEXTBOX_HEIGHT),
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),
		}, {
			TextboxBorder = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Image = TEXTBOX_STROKE,
				ImageColor3 = theme.UIDefault.Color,
				ImageTransparency = theme.UIDefault.Transparency,
				LayoutOrder = 3,
				ScaleType = Enum.ScaleType.Slice,
				Size = UDim2.new(1, 0, 1, -5),
				Position = UDim2.fromScale(0, 1),
				AnchorPoint = Vector2.new(0, 1),
				SliceCenter = STROKE_SLICE_CENTER,
			}, {
				Textbox = Roact.createElement(RoactGamepad.Focusable.TextBox, {
					BackgroundTransparency = 1,
					ClearTextOnFocus = false,
					Font = font.Header2.Font,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					PlaceholderColor3 = theme.TextDefault.Color,
					PlaceholderText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.OutfitNamePlaceholder"),
					Position = UDim2.new(0, 6, 0, 0),
					Size = UDim2.new(1, -12, 1, 0),
					TextColor3 = theme.TextEmphasis.Color,
					TextTruncate = Enum.TextTruncate.AtEnd,
					Text = self.props.fieldText,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					OverlayNativeInput = true,
					[Roact.Change.Text] = self.textUpdated,

					[Roact.Ref] = self.textBoxRef,
				})
			}),
		})
	end)
end

function PromptWithTextField:render()
	return Roact.createFragment({
		InteractiveAlert = Roact.createElement(InteractiveAlert, {
			title = self.props.title,
			bodyText = self.props.bodyText,
			buttonStackInfo = self.props.buttonStackInfo,
			position = self.state.alertPosition,
			screenSize = self.props.screenSize,
			-- Since how middleContent is displayed depends on our props, pass anonymous function so it always re-renders
			-- when we do
			middleContent = function()
				return self:renderAlertMiddleContent()
			end,
			isMiddleContentFocusable = true,
			onAbsoluteSizeChanged = self.alertSizeChanged,
			onMounted = self.alertMounted,
		}),

		OnScreenKeyboardVisibleConnection = Roact.createElement(ExternalEventConnection, {
			event = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardVisible"),
			callback = self.calculateAlertPosition,
		}),

		OnScreenKeyboardSizeConnection = Roact.createElement(ExternalEventConnection, {
			event = UserInputService:GetPropertyChangedSignal("OnScreenKeyboardSize"),
			callback = self.calculateAlertPosition,
		}),
	})
end

function PromptWithTextField:didMount()
	self.calculateAlertPosition()
end

local function mapStateToProps(state)
	return {
		screenSize = state.screenSize,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(PromptWithTextField)

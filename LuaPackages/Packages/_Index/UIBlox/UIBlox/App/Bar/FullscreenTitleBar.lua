local Bar = script.Parent
local App = Bar.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Otter = require(Packages.Otter)
local t = require(Packages.t)

local IconButton = require(App.Button.IconButton)
local Images = require(App.ImageSet.Images)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local ControlState = require(Packages.UIBlox.Core.Control.Enum.ControlState)
local withStyle = require(UIBlox.Core.Style.withStyle)
local ThreeSectionBar = require(UIBlox.Core.Bar.ThreeSectionBar)

local lerp = require(Packages.UIBlox.Utility.lerp)
local divideTransparency = require(Packages.UIBlox.Utility.divideTransparency)

local TITLE_BAR_HEIGHT = 64
local SHADOW_HEIGHT = 24
local MARGIN = 20
local PADDING_BETWEEN = 12

local TITLE_BAR_OFF_POS = UDim2.new(0, 0, 0, -(TITLE_BAR_HEIGHT + SHADOW_HEIGHT))
local TITLE_BAR_ON_POS = UDim2.fromOffset(0, 0)

local EXIT_BUTTON_IMAGE_ID = "icons/actions/previewShrink"
local CLOSE_BUTTON_IMAGE_ID = "icons/navigation/close"

local GRADIENT_OPACITY = 0.25

local MOTOR_OPTIONS = {
	frequency = 5,
}

local FullscreenTitleBar = Roact.PureComponent:extend("FullscreenTitleBar")

FullscreenTitleBar.validateProps = t.strictInterface({
	title = t.string,
	isTriggered = t.optional(t.boolean),
	onDisappear = t.optional(t.callback),

	exitFullscreen = t.optional(t.callback),
	closeRoblox = t.optional(t.callback),
})

function FullscreenTitleBar:init()
	local initProgress = self.props.isTriggered and 1 or 0
	local setProgress
	self.progress, setProgress = Roact.createBinding(initProgress)

	self.exitControlState, self.setExitControlState = Roact.createBinding(self.state.exitControlState)
	self.closeControlState, self.setCloseControlState = Roact.createBinding(self.state.closeControlState)

	self.titleBarPosition = self.progress:map(function(value)
		return TITLE_BAR_OFF_POS:lerp(TITLE_BAR_ON_POS, value)
	end)

	self.progressMotor = Otter.createSingleMotor(initProgress)
	self.progressMotor:onStep(setProgress)
end

function FullscreenTitleBar:render()
	return withStyle(function(style)
		local theme = style.Theme
		local font = style.Font

		local backgroundStyle = theme.BackgroundUIDefault
		local textColorStyle = theme.TextEmphasis

		local centerTextFont = font.Header2
		local centerTextSize = centerTextFont.RelativeSize * font.BaseSize

		local titleBarTransparency = self.progress:map(function(value)
			local baseTransparency = backgroundStyle.Transparency
			return lerp(1, baseTransparency, value)
		end)

		local exitButtonTransparency = Roact.joinBindings({
			progress = self.progress,
			controlState = self.exitControlState,
		}):map(function(values)
			local baseTransparency = theme.ContextualPrimaryDefault.Transparency
			local transparencyDivisor = values.controlState == ControlState.Pressed and 2 or 1
			return lerp(1, divideTransparency(baseTransparency, transparencyDivisor), values.progress)
		end)

		local closeButtonTransparency = Roact.joinBindings({
			progress = self.progress,
			controlState = self.closeControlState,
		}):map(function(values)
			local baseTransparency = theme.ContextualPrimaryDefault.Transparency
			local transparencyDivisor = values.controlState == ControlState.Pressed and 2 or 1
			return lerp(1, divideTransparency(baseTransparency, transparencyDivisor), values.progress)
		end)

		local textTransparency = self.progress:map(function(value)
			local baseTransparency = textColorStyle.Transparency
			return lerp(1, baseTransparency, value)
		end)

		local function renderCenterText()
			return Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = centerTextFont.Font,
				Size = UDim2.new(1, 0, 0, centerTextSize),
				Text = self.props.title,
				TextColor3 = textColorStyle.Color,
				TextSize = centerTextSize,
				TextTransparency = textTransparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextWrapped = false,
			})
		end

		local function renderRightButtons()
			return Roact.createFragment({
				ExitButton = Roact.createElement(IconButton, {
					icon = Images[EXIT_BUTTON_IMAGE_ID],
					iconSize = IconSize.Medium,
					iconTransparency = exitButtonTransparency,
					onActivated = self.props.exitFullscreen,
					layoutOrder = 1,
					onStateChanged = function(oldState, newState)
						self.setExitControlState(newState)
					end
				}),
				CloseButton = Roact.createElement(IconButton, {
					icon = Images[CLOSE_BUTTON_IMAGE_ID],
					iconSize = IconSize.Medium,
					iconTransparency = closeButtonTransparency,
					onActivated = self.props.closeRoblox,
					layoutOrder = 2,
					onStateChanged = function(oldState, newState)
						self.setCloseControlState(newState)
					end
				}),
			})
		end

		local function renderMirrorButtons()
			local iconSize = getIconSize(IconSize.Medium)
			return Roact.createFragment({
				Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(iconSize, iconSize),
				}),
				Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(iconSize, iconSize),
				}),
			})
		end

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = self.titleBarPosition,
			Size = UDim2.new(1, 0, 0, TITLE_BAR_HEIGHT + SHADOW_HEIGHT),
		}, {
			BarFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(0, 0),
				Size = UDim2.new(1, 0, 0, TITLE_BAR_HEIGHT),
				[Roact.Event.MouseLeave] = self.props.onDisappear,
			}, {
				ThreeSectionBar = Roact.createElement(ThreeSectionBar, {
					BackgroundColor3 = backgroundStyle.Color,
					BackgroundTransparency = titleBarTransparency,
					barHeight = TITLE_BAR_HEIGHT,
					marginLeft = MARGIN,
					contentPaddingLeft = UDim.new(0, PADDING_BETWEEN),
					renderLeft = renderMirrorButtons,
					renderCenter = renderCenterText,
					marginRight = MARGIN,
					contentPaddingRight = UDim.new(0, PADDING_BETWEEN),
					renderRight = renderRightButtons,
				}),
			}),
			ShadowFrame = Roact.createElement("Frame", {
				BackgroundTransparency = backgroundStyle.Transparency,
				BackgroundColor3 = backgroundStyle.Color,
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(0, TITLE_BAR_HEIGHT),
				Size = UDim2.new(1, 0, 0, SHADOW_HEIGHT),
			}, {
				UIGradient = Roact.createElement("UIGradient", {
					Rotation = 90,
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
						ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0)),
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1 - GRADIENT_OPACITY),
						NumberSequenceKeypoint.new(1, 1.0),
					}),
				})
			})
		})
	end)
end

function FullscreenTitleBar:didMount()
	self.progressMotor:start()
end

function FullscreenTitleBar:didUpdate(prevProps, prevState)
	if prevProps.isTriggered ~= self.props.isTriggered then
		local newProgress = self.props.isTriggered and 1 or 0
		self.progressMotor:setGoal(Otter.spring(newProgress, MOTOR_OPTIONS))
	end
end

function FullscreenTitleBar:willUnmount()
	self.progressMotor:destroy()
end

return FullscreenTitleBar

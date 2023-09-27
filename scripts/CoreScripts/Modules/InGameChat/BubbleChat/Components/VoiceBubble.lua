--[[
	Voice indicator bubble.

	This is shown when a user is connected to voice chat but hasn't said anything in
	text chat, or bubble text chat is off.
]]

local CorePackages = game:GetService("CorePackages")

local Otter = require(CorePackages.Packages.Otter)
local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Cryo = require(CorePackages.Packages.Cryo)

local root = script.Parent.Parent
local Types = require(root.Types)
local getSizeSpringFromSettings = require(root.Helpers.getSizeSpringFromSettings)
local getTransparencySpringFromSettings = require(root.Helpers.getTransparencySpringFromSettings)

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local VoiceBubble = Roact.PureComponent:extend("VoiceBubble")

VoiceBubble.validateProps = t.strictInterface({
	fadingOut = t.optional(t.boolean),
	onFadeOut = t.optional(t.callback),
	chatSettings = Types.IChatSettings,
	renderInsert = t.optional(t.callback),
	insertSize = t.optional(t.Vector2),
	isDistant = t.optional(t.boolean),
})

function VoiceBubble:init(props)
	self.width, self.updateWidth = Roact.createBinding(0)
	self.widthMotor = Otter.createSingleMotor(0)
	self.widthMotor:onStep(function(value)
		self.updateWidth(math.round(value))
	end)

	self.frameSize = self.width:map(function(width)
		if self.props.insertSize then
			return UDim2.fromOffset(width, self.props.insertSize.Y + self.props.chatSettings.Padding * 2)
		else
			return UDim2.fromOffset(width, 0)
		end
	end)

	self.transparency, self.updateTransparency = Roact.createBinding(1)
	self.transparencyMotor = Otter.createSingleMotor(1)
	self.transparencyMotor:onStep(self.updateTransparency)

	-- It's possible for this component to be initialized with fadingOut = true if we switch between maximized/minimized
	-- view during the fade out animation
	if props.fadingOut then
		self:fadeOut()
	end
end

function VoiceBubble.getDerivedStateFromProps(nextProps, lastState)
	local chatSettings = nextProps.chatSettings

	local fullWidth = 0
	if nextProps.insertSize then
		fullWidth = nextProps.insertSize.X + chatSettings.Padding * 2
	end

	if fullWidth ~= lastState.fullWidth then
		return {
			fullWidth = fullWidth,
		}
	end

	return nil
end

function VoiceBubble:render()
	local chatSettings = self.props.chatSettings
	local backgroundImageSettings = chatSettings.BackgroundImage
	local backgroundGradientSettings = chatSettings.BackgroundGradient

	local fullHeight = 0
	if self.props.insertSize then
		fullHeight = self.props.insertSize.Y + chatSettings.Padding * 2
	end

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		Size = UDim2.fromOffset(self.state.fullWidth, fullHeight),
		Position = UDim2.new(0.5, 0, 1, -8),
		Transparency = 1,
	}, {
		Scale = Roact.createElement("UIScale", {
			Scale = self.props.isDistant and 0.75 or 1.0,
		}),
		Carat = chatSettings.TailVisible and Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 1, -1), --UICorner generates a 1 pixel gap (UISYS-625), this fixes it by moving the carrot up by 1 pixel
			Size = UDim2.fromOffset(12, 8),
			Image = "rbxasset://textures/ui/InGameChat/Caret.png",
			ImageColor3 = chatSettings.BackgroundColor3,
			ImageTransparency = self.transparency,
		}),
		RoundedFrame = Roact.createElement(
			"ImageLabel",
			Cryo.Dictionary.join(backgroundImageSettings, {
				Size = self.frameSize,
				BackgroundColor3 = chatSettings.BackgroundColor3,
				BackgroundTransparency = backgroundImageSettings.Image == "" and self.transparency or 1,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				ClipsDescendants = true,
				ImageTransparency = self.transparency,
			}),
			{
				UICorner = chatSettings.CornerEnabled and Roact.createElement("UICorner", {
					CornerRadius = chatSettings.CornerRadius,
				}),

				Contents = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, chatSettings.Padding),
						PaddingRight = UDim.new(0, chatSettings.Padding),
						PaddingBottom = UDim.new(0, chatSettings.Padding),
						PaddingLeft = UDim.new(0, chatSettings.Padding),
					}),

					Insert = self.props.renderInsert and self.props.renderInsert(),
				}),

				Gradient = backgroundGradientSettings.Enabled
					and Roact.createElement("UIGradient", backgroundGradientSettings),
			}
		),
	})
end

function VoiceBubble:fadeOut()
	if not self.isFadingOut then
		self.isFadingOut = true

		self.transparencyMotor:onComplete(function()
			if self.props.onFadeOut then
				self.props.onFadeOut()
			end
		end)

		local transparencySpring = getTransparencySpringFromSettings(self.props.chatSettings)
		self.transparencyMotor:setGoal(transparencySpring(1))
	end
end

function VoiceBubble:didUpdate(previousProps, previousState)
	if self.props.fadingOut then
		self:fadeOut()
	elseif self.state.fullWidth ~= previousState.fullWidth then
		local chatSettings = self.props.chatSettings
		local sizeSpring = getSizeSpringFromSettings(chatSettings)
		self.widthMotor:setGoal(sizeSpring(self.state.fullWidth))
	end
end

function VoiceBubble:didMount()
	if not self.props.fadingOut then
		local chatSettings = self.props.chatSettings
		local sizeSpring = getSizeSpringFromSettings(chatSettings)
		local transparencySpring = getTransparencySpringFromSettings(chatSettings)

		self.transparencyMotor:setGoal(transparencySpring(self.props.chatSettings.Transparency))
		self.widthMotor:setGoal(sizeSpring(self.state.fullWidth))
	end
end

function VoiceBubble:willUnmount()
	self.transparencyMotor:destroy()
	self.widthMotor:destroy()
end

return VoiceBubble

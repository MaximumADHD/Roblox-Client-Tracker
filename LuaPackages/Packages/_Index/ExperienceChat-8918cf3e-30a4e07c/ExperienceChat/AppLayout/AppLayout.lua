local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent

local Otter = require(ProjectRoot.Otter)
local Roact = require(ProjectRoot.Roact)

local ChatInputBar = require(ExperienceChat.ChatInput)
local ChatWindow = require(ExperienceChat.ChatWindow)
local Config = require(ExperienceChat.Config)
local Timer = require(ExperienceChat.Timer)
local ClientSettingsUtility = require(ExperienceChat.ClientSettings.ClientSettingsUtility)

local AppLayout = Roact.Component:extend("AppLayout")
AppLayout.defaultProps = {
	addTopPadding = true,
	canLocalUserChat = false,
	isChatInputBarVisible = true,
	isChatWindowVisible = true,
	LayoutOrder = 1,
	mutedUserIds = nil,
	onSendChat = nil,
	textTimer = Timer.new(Config.ChatWindowTextFadeOutTime),
	timer = Timer.new(Config.ChatWindowBackgroundFadeOutTime),
}

local SPRING_PARAMS = {
	frequency = 1.25,
	dampingRatio = 1,
}

function AppLayout:init()
	self.transparencyValue, self.updateBackgroundTransparency = Roact.createBinding(0)
	self.backgroundTransparencyMotor = Otter.createSingleMotor(0)
	self.backgroundTransparencyMotor:onStep(self.updateBackgroundTransparency)

	self.textTransparencyValue, self.updateTextTransparencyValue = Roact.createBinding(0)
	self.textTransparencyMotor = Otter.createSingleMotor(0)
	self.textTransparencyMotor:onStep(self.updateTextTransparencyValue)

	self.resetBackgroundTransparency = function()
		-- Restart the timer
		self.backgroundTransparencyMotor:setGoal(Otter.instant(0))
		self.props.timer:stop()
		if self.props.isTextBoxFocused == false then
			self.props.timer:start():andThen(function()
				self.backgroundTransparencyMotor:setGoal(Otter.spring(1, SPRING_PARAMS))
			end)
		end
	end

	self.resetTextTransparency = function()
		-- Restart the timer
		self.textTransparencyMotor:setGoal(Otter.instant(0))
		self.props.textTimer:stop()
		if self.props.isTextBoxFocused == false then
			self.props.textTimer:start():andThen(function()
				self.textTransparencyMotor:setGoal(Otter.spring(1, SPRING_PARAMS))
			end)
		end
	end

	self.onAbsolutePositionChanged = function(rbx, config)
		config.AbsolutePositionWrite = rbx.AbsolutePosition
	end

	self.onAbsoluteSizeChanged = function(rbx, config)
		config.AbsoluteSizeWrite = rbx.AbsoluteSize
	end
end

function AppLayout:didMount()
	self.props.timer:start():andThen(function()
		self.backgroundTransparencyMotor:setGoal(Otter.spring(1, SPRING_PARAMS))
	end)

	self.props.textTimer:start():andThen(function()
		self.textTransparencyMotor:setGoal(Otter.spring(1, SPRING_PARAMS))
	end)
end

function AppLayout:didUpdate(previousProps, _)
	if previousProps.lastGeneralActivityTimestamp ~= self.props.lastGeneralActivityTimestamp then
		self.resetBackgroundTransparency()
		self.resetTextTransparency()
	elseif previousProps.lastMessageActivityTimestamp ~= self.props.lastMessageActivityTimestamp then
		self.resetTextTransparency()
	end
end

function AppLayout:render()
	local chatWindowSettings = self.props.chatWindowSettings

	local backgroundTransparency =
		ClientSettingsUtility.getBackgroundTransparency(chatWindowSettings, self.props.clientSettings)
	local backgroundColor3 = ClientSettingsUtility.getBackgroundColor(chatWindowSettings, self.props.clientSettings)
	return Roact.createElement("Frame", {
		BackgroundColor3 = Color3.new(0, 0, 0),
		BackgroundTransparency = 1,
		Position = self.props.chatLayoutAlignment.Position,
		AnchorPoint = self.props.chatLayoutAlignment.AnchorPoint,
		Size = UDim2.fromScale(
			Config.ChatWindowSize.X.Scale * chatWindowSettings.WidthScale,
			Config.ChatWindowSize.Y.Scale * chatWindowSettings.HeightScale
		),
	}, {
		uiSizeConstraint = Roact.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(Config.ChatWindowMaxWidth, math.huge),
		}),
		layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = self.props.chatLayoutAlignment.UIListLayoutVerticalAlignment,
		}),
		topBorder = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/TopRoundedRect8px.png",
			ImageColor3 = backgroundColor3,
			ImageTransparency = self.transparencyValue:map(function(value: number)
				local initialTransparency = backgroundTransparency
				return initialTransparency + value * (1 - initialTransparency)
			end),
			LayoutOrder = 1,
			ScaleType = Enum.ScaleType.Slice,
			Size = UDim2.new(1, 0, 0, 8),
			SliceCenter = Rect.new(8, 8, 24, 32),
			Visible = self.props.isChatWindowVisible or self.props.isChatInputBarVisible,
			[Roact.Event.MouseEnter] = self.props.onHovered,
			[Roact.Event.MouseLeave] = self.props.onUnhovered,
		}, {
			uiSizeConstraint = Roact.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(Config.ChatWindowMaxWidth, math.huge),
			}),
		}),
		chatWindow = Roact.createElement(ChatWindow, {
			LayoutOrder = 2,
			size = UDim2.fromScale(1, 1),
			transparencyValue = self.transparencyValue,
			textTransparency = self.textTransparencyValue,
			onHovered = self.props.onHovered,
			onUnhovered = self.props.onUnhovered,
			mutedUserIds = self.props.mutedUserIds,
			canLocalUserChat = self.props.canLocalUserChat,
			activateWhisperMode = self.props.activateWhisperMode,
			resetTargetChannel = self.props.resetTargetChannel,
			visible = self.props.isChatWindowVisible,
			onAbsoluteSizeChanged = self.onAbsoluteSizeChanged,
			onAbsolutePositionChanged = self.onAbsolutePositionChanged,
			chatWindowSettings = chatWindowSettings,
			showTranslationButton = self.props.showTranslationButton,
		}),
		chatInputBar = Roact.createElement(ChatInputBar, {
			LayoutOrder = 3,
			addTopPadding = self.props.isChatWindowVisible,
			onSendChat = self.props.onSendChat,
			transparencyValue = self.transparencyValue,
			canLocalUserChat = self.props.canLocalUserChat,
			resetTargetChannel = self.props.resetTargetChannel,
			visible = self.props.isChatInputBarVisible,
			onAbsoluteSizeChanged = self.onAbsoluteSizeChanged,
			onAbsolutePositionChanged = self.onAbsolutePositionChanged,
			chatWindowSettings = chatWindowSettings,
		}),
		bottomBorder = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/BottomRoundedRect8px.png",
			ImageColor3 = backgroundColor3,
			ImageTransparency = self.transparencyValue:map(function(value: number)
				local initialTransparency = backgroundTransparency
				return initialTransparency + value * (1 - initialTransparency)
			end),
			LayoutOrder = 4,
			ScaleType = Enum.ScaleType.Slice,
			Size = UDim2.new(1, 0, 0, 8),
			SliceCenter = Rect.new(8, 0, 24, 16),
			Visible = self.props.isChatWindowVisible or self.props.isChatInputBarVisible,
			[Roact.Event.MouseEnter] = self.props.onHovered,
			[Roact.Event.MouseLeave] = self.props.onUnhovered,
		}, {
			uiSizeConstraint = Roact.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(Config.ChatWindowMaxWidth, math.huge),
			}),
		}),
	})
end

function AppLayout:willUnmount()
	self.backgroundTransparencyMotor:destroy()
	self.textTransparencyMotor:destroy()
end

return AppLayout

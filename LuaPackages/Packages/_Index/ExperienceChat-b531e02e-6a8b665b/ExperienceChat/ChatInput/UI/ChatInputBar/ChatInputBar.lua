local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent

local Roact = require(ProjectRoot.Roact)
local UIBlox = require(ProjectRoot.UIBlox)
local Promise = require(ProjectRoot.Promise)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local Config = require(ExperienceChat.Config)
local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)
local sanitizeForRichText = require(ExperienceChat.sanitizeForRichText)
local autoCastCommand = require(ExperienceChat.Commands.autoCastCommand)
local RBXWhisperCommand = require(ExperienceChat.Commands.Whisper.RBXWhisperCommand)
local RBXTeamCommand = require(ExperienceChat.Commands.RBXTeamCommand)

local Localization = require(ExperienceChat.Localization)
local getOtherDisplayNameInWhisperChannel = require(ExperienceChat.getOtherDisplayNameInWhisperChannel)

local ChannelChip = require(script.Parent.ChannelChip)

local EngineFeatureTextChatServiceEscapeSendAsync = game:GetEngineFeature("TextChatServiceEscapeSendAsync")
local FFlagExpChatFixUncontrollableMovement = game:DefineFastFlag("ExpChatFixUncontrollableMovement", false)

local PADDING = 8

local TOGGLE_CHAT_ACTION_NAME = "FocusChat"

local ChatInputBar = Roact.Component:extend("ChatInputBar")
ChatInputBar.defaultProps = {
	userInputService = game:GetService("UserInputService"),
	contextActionService = game:GetService("ContextActionService"),
	LayoutOrder = 1,
	sendButtonContainerWidth = 30,
	transparencyValue = Config.ChatWindowBackgroundTransparency,
	messageCharacterLimit = Config.MessageCharacterLimit,
	onFocus = function() end,
	onUnfocus = function() end,
	canLocalUserChat = false,
	focusKeyCode = Enum.KeyCode.Slash,
	targetTextChannelDisplayName = "",
}

function ChatInputBar:init()
	self.isMounted = false
	self.shouldResetChannelOnBackspace = false
	self.state = {
		inputText = "",
		isFocused = false,
	}

	self.targetChannelWidth, self.updateTargetChannelWidth = Roact.createBinding(0)
	self.textBoxRef = Roact.createRef()

	self.onFocused = function()
		self:setState({
			isFocused = true,
		})
		self.props.onFocus()
	end

	self.onFocusLost = function(_, enterPressed)
		Logger:debug("Focus lost with enter: {}", enterPressed)
		if enterPressed then
			self.onSendActivated()
		end

		if self.isMounted then
			self:setState({
				isFocused = false,
			})
		end

		self.props.onUnfocus()

		-- trigger UserInputService.TextBoxFocused and TextBoxFocusReleased for player control scripts
		if FFlagExpChatFixUncontrollableMovement then
			local player = Players.LocalPlayer
			if player then
				local mockTextBox = Instance.new("TextBox")
				mockTextBox.Visible = false
				mockTextBox.Parent = player:FindFirstChildOfClass("PlayerGui")
				mockTextBox:CaptureFocus()
				mockTextBox:ReleaseFocus()
				mockTextBox:Destroy()
			end
		end
	end

	self.onTextChanged = function(rbx)
		local newText = rbx.Text
		Logger:trace("Input: {}", newText)

		if utf8.len(newText) == nil then
			Logger:debug("Message has invalid utf-8 character(s)")
			rbx.Text = self.state.inputText
			return
		end

		local utf8Length = utf8.len(utf8.nfcnormalize(newText))
		if utf8Length and utf8Length > self.props.messageCharacterLimit then
			Logger:debug("Message is over the character limit of ", self.props.messageCharacterLimit)
			rbx.Text = self.state.inputText
			return
		end
		self:setState({
			inputText = newText,
		})

		self.shouldResetChannelOnBackspace = #newText == 0 and self.shouldResetChannelOnBackspace

		if self.props.localPlayer then
			local localPlayerId = self.props.localPlayer.UserId

			local promises = {
				autoCastCommand(RBXTeamCommand, localPlayerId, newText),
				autoCastCommand(RBXWhisperCommand, localPlayerId, newText),
			}
			Promise.any(promises)
				:andThen(function()
					rbx.Text = ""
					self:setState({
						inputText = "",
					})
					-- Set shouldResetChannelOnBackspace since a backspace right after entering team/whisper chat should reset to general
					self.shouldResetChannelOnBackspace = true
				end)
				:catch(function(error)
					Logger:debug("Could not send autoCastCommand. Error: {}", error)
				end)
		end
	end

	self.onSendActivated = function()
		Logger:trace("onSendActivated with input text: '{}'", self.state.inputText)
		if not self.isMounted or not self.props.canLocalUserChat then
			Logger:debug(
				"onSendActivated could not send message. isMounted: {} canLocalUserChat: {}",
				self.isMounted,
				self.props.canLocalUserChat
			)
			return
		end

		local text = if EngineFeatureTextChatServiceEscapeSendAsync
			then self.state.inputText
			else sanitizeForRichText(self.state.inputText)

		if self.props.onSendChat and string.find(text, "%S") ~= nil then
			self.props.onSendChat(text)
		else
			Logger:debug(
				"onSendActivated could not send message. text: '{}' canLocalUserChat: {}",
				text,
				self.props.canLocalUserChat
			)
		end

		self.textBoxRef:getValue().Text = ""
		self.textBoxRef:getValue():ReleaseFocus()

		self:setState({
			inputText = "",
		})

		if self.props.targetTextChannel and self.props.targetTextChannelDisplayName ~= "" then
			self.shouldResetChannelOnBackspace = true
		end
	end

	self.onBackspacePressedConnection = self.props.userInputService.InputEnded:connect(function(inputObj, _)
		local backspacePressedWhileFocused = self.textBoxRef:getValue()
			and self.textBoxRef:getValue():IsFocused()
			and inputObj.KeyCode == Enum.KeyCode.Backspace

		if backspacePressedWhileFocused then
			if self.shouldResetChannelOnBackspace then
				self.props.resetTargetChannel()
				Logger:debug("ChatInputBar ChatInputBarResetTargetChannel()")
				self.shouldResetChannelOnBackspace = false
			else
				if self.state.inputText == "" and self.props.targetTextChannelDisplayName ~= "" then
					-- If the input text is "", then the next time backspace is pressed, we want to reset the channel.
					self.shouldResetChannelOnBackspace = true
				end
			end
		end
	end)

	self.getTransparencyOrBindingValue = function(initialTransparency)
		if type(self.props.transparencyValue) == "number" then
			return self.props.transparencyValue
		end

		return self.props.transparencyValue:map(function(value: number)
			return initialTransparency + value * (1 - initialTransparency)
		end)
	end

	self.onAbsoluteSizeChanged = function(rbx)
		self.updateTargetChannelWidth(rbx.Visible and rbx.AbsoluteSize.X or 0)
	end

	self.onChannelChipActivated = function()
		self.props.resetTargetChannel()
	end
end

function ChatInputBar:render()
	local hasEmptyInputText = self.state.inputText == ""
	local showPlaceholderText = hasEmptyInputText and not self.state.isFocused
	local chatWindowSettings = self.props.chatWindowSettings
	local chatInputBarSettings = self.props.chatInputBarSettings

	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = chatWindowSettings.BackgroundColor3,
		BackgroundTransparency = self.getTransparencyOrBindingValue(chatWindowSettings.BackgroundTransparency),
		BorderSizePixel = 0,
		LayoutOrder = self.props.LayoutOrder,
		Size = self.props.size,
		Visible = self.props.visible,
		[Roact.Event.MouseEnter] = self.props.onHovered,
		[Roact.Event.MouseLeave] = self.props.onUnhovered,
		[Roact.Change.AbsoluteSize] = function(rbx)
			local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
			if chatInputBarConfiguration and self.props.onAbsoluteSizeChanged then
				self.props.onAbsoluteSizeChanged(rbx, chatInputBarConfiguration)
			end
		end,
		[Roact.Change.AbsolutePosition] = function(rbx)
			local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
			if chatInputBarConfiguration and self.props.onAbsolutePositionChanged then
				self.props.onAbsolutePositionChanged(rbx, chatInputBarConfiguration)
			end
		end,
	}, {
		UISizeConstraint = Roact.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(Config.ChatWindowMaxWidth, math.huge),
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 8),
			PaddingRight = UDim.new(0, 8),
			PaddingTop = self.props.addTopPadding and UDim.new(0, 8) or UDim.new(0, 0),
			PaddingBottom = UDim.new(0, 1),
		}),
		Background = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundColor3 = chatInputBarSettings.BackgroundColor3,
			BackgroundTransparency = self.getTransparencyOrBindingValue(chatInputBarSettings.BackgroundTransparency),
			Size = UDim2.new(1, 0, 0, 0),
		}, {
			Border = Roact.createElement("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Config.ChatInputBarBorderColor3,
				Transparency = self.getTransparencyOrBindingValue(Config.ChatInputBarBorderTransparency),
			}),
			Corner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 3),
			}),
			Container = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.fromScale(1, 0),
				BackgroundTransparency = 1,
			}, {
				TextContainer = Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -self.props.sendButtonContainerWidth, 0, 0),
				}, {
					TargetChannelChip = Roact.createElement(ChannelChip, {
						transparency = self.getTransparencyOrBindingValue(0),
						onAbsoluteSizeChanged = self.onAbsoluteSizeChanged,
						onChannelChipActivated = self.onChannelChipActivated,
						targetTextChannelDisplayName = self.props.targetTextChannelDisplayName or "",
					}),
					DisabledPlaceholderLabel = not self.props.canLocalUserChat and Roact.createElement("TextLabel", {
						AnchorPoint = Vector2.new(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						Font = Config.ChatInputBarFont,
						Text = self.props.disabledChatPlaceholderText,
						Position = UDim2.fromScale(1, 0),
						Size = self.targetChannelWidth:map(function(width: number)
							return UDim2.new(1, -(width + PADDING), 0, 0)
						end),
						TextColor3 = showPlaceholderText and chatInputBarSettings.PlaceholderColor3
							or chatInputBarSettings.TextColor3,
						TextSize = chatInputBarSettings.TextSize,
						TextTransparency = showPlaceholderText and self.getTransparencyOrBindingValue(0.5)
							or self.getTransparencyOrBindingValue(0),
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
					}),
					-- AutomaticSize logic seems to prefer a parent frame container for text wrapping logic
					TextBoxContainer = self.props.canLocalUserChat and Roact.createElement("Frame", {
						AnchorPoint = Vector2.new(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						Position = UDim2.fromScale(1, 0),
						Size = self.targetChannelWidth:map(function(width: number)
							return UDim2.new(1, -(width + PADDING), 0, 0)
						end),
					}, {
						TextBox = self.props.canLocalUserChat and Roact.createElement("TextBox", {
							AnchorPoint = Vector2.new(0, 0),
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
							ClearTextOnFocus = false,
							FontFace = chatInputBarSettings.FontFace,
							PlaceholderText = showPlaceholderText and self.props.placeholderText or "",
							Size = UDim2.fromScale(1, 0),
							Text = "",
							PlaceholderColor3 = chatInputBarSettings.PlaceholderColor3,
							TextColor3 = chatInputBarSettings.TextColor3,
							TextSize = chatInputBarSettings.TextSize,
							TextTransparency = showPlaceholderText and self.getTransparencyOrBindingValue(0.5)
								or self.getTransparencyOrBindingValue(0),
							TextStrokeTransparency = self.getTransparencyOrBindingValue(
								chatInputBarSettings.TextStrokeTransparency
							),
							TextStrokeColor3 = chatInputBarSettings.TextStrokeColor3,
							TextWrapped = true,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Top,

							[Roact.Event.Focused] = self.onFocused,
							[Roact.Event.FocusLost] = self.onFocusLost,
							[Roact.Change.Text] = self.onTextChanged,
							[Roact.Ref] = self.textBoxRef,
						}),
					}),
					UIPadding = Roact.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, 10),
						PaddingLeft = UDim.new(0, 10),
						PaddingRight = UDim.new(0, 10),
						PaddingTop = UDim.new(0, 10),
					}),
				}),
				SendButton = Roact.createElement("TextButton", {
					AnchorPoint = Vector2.new(1, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Position = UDim2.fromScale(1, 0),
					Size = UDim2.new(0, self.props.sendButtonContainerWidth, 1, 0),
					Text = "",

					[Roact.Event.Activated] = self.onSendActivated,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					SendIcon = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						ImageColor3 = hasEmptyInputText and chatInputBarSettings.PlaceholderColor3
							or chatInputBarSettings.TextColor3,
						ImageTransparency = hasEmptyInputText and self.getTransparencyOrBindingValue(0.5)
							or self.getTransparencyOrBindingValue(0),
						Image = Images["icons/actions/send"],
						Size = UDim2.new(0, 30, 0, 30),
					}),
				}),
			}),
		}),
	})
end

function ChatInputBar:didUpdate(previousProps)
	if previousProps.shouldFocusChatInputBar ~= self.props.shouldFocusChatInputBar then
		local textBox: TextBox = self.textBoxRef:getValue()
		if textBox then
			textBox:CaptureFocus()
		else
			Logger:error("Could not focus chat input bar because textBox not found")
		end
	end
end

function ChatInputBar:didMount()
	Logger:trace("Mounted")
	self.isMounted = true

	local function handleAction(
		_actionName: string,
		userInputState: Enum.UserInputState,
		inputObject: InputObject
	): Enum.ContextActionResult
		if inputObject.KeyCode == self.props.focusKeyCode then
			if
				userInputState == Enum.UserInputState.Begin
				and self.textBoxRef:getValue()
				and not self.textBoxRef:getValue():IsFocused()
			then
				task.defer(function()
					self.textBoxRef:getValue():CaptureFocus()
				end)

				self.props.focusChatHotKeyActivated()
				return Enum.ContextActionResult.Sink
			end
		end

		return Enum.ContextActionResult.Pass
	end

	self.props.contextActionService:BindCoreAction(
		TOGGLE_CHAT_ACTION_NAME,
		handleAction,
		false,
		Enum.UserInputType.Keyboard
	)
end

function ChatInputBar:willUnmount()
	Logger:trace("Unmounting")
	self.isMounted = false

	self.props.contextActionService:UnbindCoreAction(TOGGLE_CHAT_ACTION_NAME)

	if self.onBackspacePressedConnection then
		self.onBackspacePressedConnection:Disconnect()
	end
	self.onBackspacePressedConnection = nil
end

return Localization.connect(function(props)
	local targetTextChannelDisplayName
	if props.targetTextChannel then
		local TextChannelDisplayNames = {
			["RBXTeam"] = "CoreScripts.TextChat.TeamChat.PrefixText",
			["RBXWhisper"] = "CoreScripts.TextChat.WhisperChat.PrefixText.Outgoing",
		}

		for k, v in pairs(TextChannelDisplayNames) do
			if string.match(props.targetTextChannel.Name, k) then
				if k == "RBXWhisper" then
					local otherDisplayName =
						getOtherDisplayNameInWhisperChannel(props.targetTextChannel, props.localPlayer)
					if otherDisplayName then
						targetTextChannelDisplayName = { v, { RBX_NAME = otherDisplayName } }
					end
				else
					targetTextChannelDisplayName = v
				end
			end
		end
	end

	return {
		targetTextChannelDisplayName = targetTextChannelDisplayName,
	}
end)(ChatInputBar)

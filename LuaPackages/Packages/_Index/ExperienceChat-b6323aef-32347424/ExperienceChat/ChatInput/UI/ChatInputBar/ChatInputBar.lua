local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent

local React = require(Packages.React)

local UIBlox = require(Packages.UIBlox)
local Promise = require(Packages.Promise)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local useInterpolatedClientSettings = require(ExperienceChat.ClientSettings.useInterpolatedClientSettings)
local Config = require(ExperienceChat.Config)
local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)
local autoCastCommand = require(ExperienceChat.Commands.autoCastCommand)
local RBXWhisperCommand = require(ExperienceChat.Commands.Whisper.RBXWhisperCommand)
local RBXTeamCommand = require(ExperienceChat.Commands.RBXTeamCommand)

local Localization = require(ExperienceChat.Localization)
local getOtherDisplayNameInWhisperChannel = require(ExperienceChat.getOtherDisplayNameInWhisperChannel)

local ChannelChip = require(script.Parent.ChannelChip)

local GetFFlagFixChatInputFocus = require(ExperienceChat.Flags.GetFFlagFixChatInputFocus)
local getEnableChatInputBarConfigurationPropertyIsFocused =
	require(ExperienceChat.Flags.getEnableChatInputBarConfigurationPropertyIsFocused)
local GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat =
	require(ExperienceChat.Flags.GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat)

local PADDING = 8
local TOGGLE_CHAT_ACTION_NAME = "FocusChat"

local function setTransparency(baseTransparency, binding)
	return binding:map(function(value: number)
		return baseTransparency + value * (1 - baseTransparency)
	end)
end

local function ChatInputBar(props)
	local inputText, setInputText = React.useState("")
	local isFocused, setIsFocused = React.useState(false)
	local targetChannelWidth, updateTargetChannelWidth = React.useBinding(0)
	local isMountedRef = React.useRef(false)
	local textBoxRef = React.useRef(nil :: TextBox?)
	local onBackspacePressedConnectionRef = React.useRef(nil :: RBXScriptConnection?)
	local shouldResetChannelOnBackspaceRef = React.useRef(false)

	local onSendActivated = React.useCallback(function()
		Logger:trace("onSendActivated with input text: '{}'", inputText)
		if not isMountedRef.current or not props.canLocalUserChat then
			Logger:debug(
				"onSendActivated could not send message. isMounted: {} canLocalUserChat: {}",
				tostring(isMountedRef.current),
				props.canLocalUserChat
			)
			return
		end

		local text = inputText
		if props.onSendChat and string.find(text, "%S") ~= nil then
			props.onSendChat(text)
		else
			Logger:debug(
				"onSendActivated could not send message. text: '{}' canLocalUserChat: {}",
				text,
				props.canLocalUserChat
			)
		end

		if textBoxRef.current then
			textBoxRef.current.Text = ""
			textBoxRef.current:ReleaseFocus()
		end

		setInputText("")

		if props.targetTextChannel and props.targetTextChannelDisplayName ~= "" then
			shouldResetChannelOnBackspaceRef.current = true
		end
	end, { inputText })

	React.useEffect(function()
		if isMountedRef.current then
			local textBox = textBoxRef.current
			if textBox then
				textBox:CaptureFocus()
			else
				Logger:error("Could not focus chat input bar because textBox not found")
			end
		end
	end, { props.shouldFocusChatInputBar })

	React.useEffect(function()
		Logger:trace("Mounted")
		isMountedRef.current = true

		return function()
			Logger:trace("Unmounting")
			isMountedRef.current = false
		end
	end, {})

	React.useEffect(function()
		onBackspacePressedConnectionRef.current = props.userInputService.InputEnded:connect(function(inputObj, _)
			local backspacePressedWhileFocused = textBoxRef.current
				and textBoxRef.current:IsFocused()
				and inputObj.KeyCode == Enum.KeyCode.Backspace

			if backspacePressedWhileFocused then
				if shouldResetChannelOnBackspaceRef.current then
					props.resetTargetChannel()
					Logger:debug("ChatInputBar ChatInputBarResetTargetChannel()")
					shouldResetChannelOnBackspaceRef.current = false
				else
					if inputText == "" and props.targetTextChannelDisplayName ~= "" then
						-- If the input text is "", then the next time backspace is pressed, we want to reset the channel.
						shouldResetChannelOnBackspaceRef.current = true
					end
				end
			end
		end)

		return function()
			local onBackspacePressedConnection = onBackspacePressedConnectionRef.current
			if onBackspacePressedConnection and onBackspacePressedConnection.Connected then
				onBackspacePressedConnection:Disconnect()
			end
			onBackspacePressedConnectionRef.current = nil
		end
	end, { props.userInputService })

	React.useEffect(function()
		local function handleAction(
			_actionName: string,
			userInputState: Enum.UserInputState,
			inputObject: InputObject
		): Enum.ContextActionResult
			if props.isChatHotkeyEnabled then
				if
					inputObject.KeyCode == Config.ChatInputBarDefaultFocusKeyCode
					or inputObject.KeyCode == props.devDefinedFocusKeyCode
				then
					local textBoxInstance = textBoxRef.current
					if textBoxInstance then
						if
							userInputState == Enum.UserInputState.Begin
							and textBoxInstance
							and not textBoxInstance:IsFocused()
						then
							if GetFFlagFixChatInputFocus() then
								task.delay(0, function()
									textBoxInstance:CaptureFocus()
								end)
							else
								task.defer(function()
									textBoxInstance:CaptureFocus()
								end)
							end

							props.focusChatHotKeyActivated()
							return Enum.ContextActionResult.Sink
						end
					end
				end
			end

			return Enum.ContextActionResult.Pass
		end

		props.contextActionService:BindCoreAction(
			TOGGLE_CHAT_ACTION_NAME,
			handleAction,
			false,
			Enum.UserInputType.Keyboard
		)

		return function()
			props.contextActionService:UnbindCoreAction(TOGGLE_CHAT_ACTION_NAME)
		end
	end, { props.isChatHotkeyEnabled, props.devDefinedFocusKeyCode })

	local writeValueToIsFocusedConfiguration = function(value: boolean)
		local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
		if chatInputBarConfiguration and getEnableChatInputBarConfigurationPropertyIsFocused() then
			chatInputBarConfiguration.IsFocusedWrite = value
		end
	end

	local onFocused = React.useCallback(function()
		setIsFocused(true)
		props.onFocus()
		writeValueToIsFocusedConfiguration(true)
	end, { props.onFocus })

	local onFocusLost = React.useCallback(function(_, enterPressed: boolean)
		Logger:debug("Focus lost with enter: {}", tostring(enterPressed))
		if enterPressed then
			onSendActivated()
		end

		if isMountedRef.current then
			setIsFocused(false)
		end

		props.onUnfocus()
		writeValueToIsFocusedConfiguration(false)

		-- trigger UserInputService.TextBoxFocused and TextBoxFocusReleased for player control scripts
		local player = Players.LocalPlayer
		if player then
			local mockTextBox = Instance.new("TextBox")
			mockTextBox.Visible = false
			mockTextBox.Parent = player:FindFirstChildOfClass("PlayerGui")
			mockTextBox:CaptureFocus()
			mockTextBox:ReleaseFocus()
			mockTextBox:Destroy()
		end
	end)

	local onTextChanged = React.useCallback(function(rbx)
		local newText = rbx.Text
		Logger:trace("Input: {}", newText)

		local stringLen = if utf8.len(newText) then utf8.len(utf8.nfcnormalize(newText)) else string.len(newText)

		if stringLen and stringLen > props.messageCharacterLimit then
			Logger:debug("Message is over the character limit of {}", tostring(props.messageCharacterLimit))
			rbx.Text = inputText
			return
		end

		setInputText(newText)

		shouldResetChannelOnBackspaceRef.current = #newText == 0 and shouldResetChannelOnBackspaceRef.current

		if props.localPlayer then
			local localPlayerId = props.localPlayer.UserId

			local promises = {
				autoCastCommand(RBXTeamCommand, localPlayerId, newText),
				autoCastCommand(RBXWhisperCommand, localPlayerId, newText),
			}
			Promise.any(promises)
				:andThen(function()
					rbx.Text = ""

					setInputText("")
					-- Set shouldResetChannelOnBackspace since a backspace right after entering team/whisper chat should reset to general
					shouldResetChannelOnBackspaceRef.current = true
				end)
				:catch(function(error)
					Logger:trace("Could not send autoCastCommand. Error: {}", error)
				end)
		end
	end)

	local onAbsoluteSizeChanged = React.useCallback(function(rbx)
		updateTargetChannelWidth(rbx.Visible and rbx.AbsoluteSize.X or 0)
	end)

	local hasEmptyInputText = inputText == ""
	local showPlaceholderText = hasEmptyInputText and not isFocused
	local chatInputBarSettings = props.chatInputBarSettings
	local chatWindowSettings = props.chatWindowSettings

	local chatInputBarBackgroundTransparency = chatInputBarSettings.BackgroundTransparency
	local chatWindowBackgroundTransparency = chatWindowSettings.BackgroundTransparency
	local chatWindowBackgroundColor = chatWindowSettings.BackgroundColor3
	if GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat() then
		chatInputBarBackgroundTransparency = useInterpolatedClientSettings(chatInputBarSettings).BackgroundTransparency
		chatWindowBackgroundTransparency = useInterpolatedClientSettings(chatWindowSettings).BackgroundTransparency
		chatWindowBackgroundColor = useInterpolatedClientSettings(chatWindowSettings).BackgroundColor3
	end

	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = chatWindowBackgroundColor,
		BackgroundTransparency = setTransparency(chatWindowBackgroundTransparency, props.transparencyValue),
		BorderSizePixel = 0,
		LayoutOrder = props.LayoutOrder,
		Size = props.size,
		Visible = props.visible,
		[React.Event.MouseEnter] = props.onHovered,
		[React.Event.MouseLeave] = props.onUnhovered,
		[React.Change.AbsoluteSize] = React.useCallback(function(rbx)
			local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
			if chatInputBarConfiguration and props.onAbsoluteSizeChanged then
				props.onAbsoluteSizeChanged(rbx, chatInputBarConfiguration)
			end
		end),
		[React.Change.AbsolutePosition] = React.useCallback(function(rbx)
			local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
			if chatInputBarConfiguration and props.onAbsolutePositionChanged then
				props.onAbsolutePositionChanged(rbx, chatInputBarConfiguration)
			end
		end),
	}, {
		UISizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(Config.ChatWindowMaxWidth, math.huge),
		}),
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 8),
			PaddingRight = UDim.new(0, 8),
			PaddingTop = props.addTopPadding and UDim.new(0, 8) or UDim.new(0, 0),
			PaddingBottom = UDim.new(0, 1),
		}),
		Background = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundColor3 = chatInputBarSettings.BackgroundColor3,
			BackgroundTransparency = setTransparency(chatInputBarBackgroundTransparency, props.transparencyValue),
			Size = UDim2.new(1, 0, 0, 0),
		}, {
			Border = React.createElement("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Config.ChatInputBarBorderColor3,
				Transparency = setTransparency(Config.ChatInputBarBorderTransparency, props.transparencyValue),
			}),
			Corner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, 3),
			}),
			Container = React.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.fromScale(1, 0),
				BackgroundTransparency = 1,
			}, {
				TextContainer = React.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -props.sendButtonContainerWidth, 0, 0),
				}, {
					TargetChannelChip = React.createElement(ChannelChip, {
						transparency = setTransparency(0, props.transparencyValue),
						onAbsoluteSizeChanged = onAbsoluteSizeChanged,
						onChannelChipActivated = props.resetTargetChannel,
						targetTextChannelDisplayName = props.targetTextChannelDisplayName or "",
					}),
					DisabledPlaceholderLabel = not props.canLocalUserChat and React.createElement("TextLabel", {
						AnchorPoint = Vector2.new(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						Font = Config.ChatInputBarFont,
						Text = props.disabledChatPlaceholderText,
						Position = UDim2.fromScale(1, 0),
						Size = targetChannelWidth:map(function(width: number)
							return UDim2.new(1, -(width + PADDING), 0, 0)
						end),
						TextColor3 = showPlaceholderText and chatInputBarSettings.PlaceholderColor3
							or chatInputBarSettings.TextColor3,
						TextSize = chatInputBarSettings.TextSize,
						TextTransparency = setTransparency(
							if showPlaceholderText then 0.5 else 0,
							props.transparencyValue
						),
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
					}),
					-- AutomaticSize logic seems to prefer a parent frame container for text wrapping logic
					TextBoxContainer = props.canLocalUserChat and React.createElement("Frame", {
						AnchorPoint = Vector2.new(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						Position = UDim2.fromScale(1, 0),
						Size = targetChannelWidth:map(function(width: number)
							return UDim2.new(1, -(width + PADDING), 0, 0)
						end),
					}, {
						TextBox = props.canLocalUserChat and React.createElement("TextBox", {
							AnchorPoint = Vector2.new(0, 0),
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
							ClearTextOnFocus = false,
							FontFace = chatInputBarSettings.FontFace,
							PlaceholderText = showPlaceholderText and props.placeholderText or "",
							Size = UDim2.fromScale(1, 0),
							Text = "",
							PlaceholderColor3 = chatInputBarSettings.PlaceholderColor3,
							TextColor3 = chatInputBarSettings.TextColor3,
							TextSize = chatInputBarSettings.TextSize,
							TextTransparency = setTransparency(
								if showPlaceholderText then 0.5 else 0,
								props.transparencyValue
							),
							TextStrokeTransparency = setTransparency(
								chatInputBarSettings.TextStrokeTransparency,
								props.transparencyValue
							),
							TextStrokeColor3 = chatInputBarSettings.TextStrokeColor3,
							TextWrapped = true,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Top,

							[React.Event.Focused] = onFocused,
							[React.Event.FocusLost] = onFocusLost :: any,
							[React.Change.Text] = onTextChanged :: any,
							ref = textBoxRef,
						}),
					}),
					UIPadding = React.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, 10),
						PaddingLeft = UDim.new(0, 10),
						PaddingRight = UDim.new(0, 10),
						PaddingTop = UDim.new(0, 10),
					}),
				}),
				SendButton = React.createElement("TextButton", {
					AnchorPoint = Vector2.new(1, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Position = UDim2.fromScale(1, 0),
					Size = UDim2.new(0, props.sendButtonContainerWidth, 1, 0),
					Text = "",

					[React.Event.Activated] = onSendActivated,
				}, {
					Layout = React.createElement("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					SendIcon = React.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						ImageColor3 = hasEmptyInputText and chatInputBarSettings.PlaceholderColor3
							or chatInputBarSettings.TextColor3,
						ImageTransparency = setTransparency(
							if hasEmptyInputText then 0.5 else 0,
							props.transparencyValue
						),
						Image = Images["icons/actions/send"],
						Size = UDim2.new(0, 30, 0, 30),
					}),
				}),
			}),
		}),
	})
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

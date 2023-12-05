local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent

local React = require(Packages.React)

local UIBlox = require(Packages.UIBlox)
local Promise = require(Packages.Promise)
local List = require(Packages.llama).List
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local useInterpolatedClientSettings = require(ExperienceChat.ClientSettings.useInterpolatedClientSettings)
local Config = require(ExperienceChat.Config)
local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)
local autoCastCommand = require(ExperienceChat.Commands.autoCastCommand)
local RBXWhisperCommand = require(ExperienceChat.Commands.Whisper.RBXWhisperCommand)
local RBXTeamCommand = require(ExperienceChat.Commands.RBXTeamCommand)

local Localization = require(ExperienceChat.Localization)
local getOtherDisplayNameInWhisperChannel = require(ExperienceChat.getOtherDisplayNameInWhisperChannel)

local ChannelChip = require(script.Parent.ChannelChip)

local AutocompleteText = require(ExperienceChat.Autocomplete.AutocompleteText)
local initializeEmojis = require(ExperienceChat.Autocomplete.Initializations.initializeEmojis)
local initializeCommands = require(ExperienceChat.Autocomplete.Initializations.initializeCommands)
local sortEmojiResultsCallback = require(ExperienceChat.Autocomplete.SortingCallbacks.sortEmojiResultsCallback)
local sortCommandResultsCallback = require(ExperienceChat.Autocomplete.SortingCallbacks.sortCommandResultsCallback)

local ChatInput = script:FindFirstAncestor("ChatInput")
local AutocompleteDropdown = require(ChatInput.UI.AutocompleteDropdown)

local GetFFlagFixChatInputFocus = require(ExperienceChat.Flags.GetFFlagFixChatInputFocus)
local getEnableChatInputBarConfigurationPropertyIsFocused =
	require(ExperienceChat.Flags.getEnableChatInputBarConfigurationPropertyIsFocused)
local GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat =
	require(ExperienceChat.Flags.GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat)
local getEnableChatInputBarConfigurationAutocompleteEnabled =
	require(ExperienceChat.Flags.getEnableChatInputBarConfigurationAutocompleteEnabled)
local EnableCommandAutocomplete = require(ExperienceChat.Flags.FFlagEnableCommandAutocomplete)
local FFlagTriggerEmojiAutocompleteWithTwoCharacters =
	game:DefineFastFlag("TriggerEmojiAutocompleteWithTwoCharacters", false)
local getTextChatServiceTextChatCommandAutocompleteVisible =
	require(ExperienceChat.Flags.getTextChatServiceTextChatCommandAutocompleteVisible)

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
	local lastCursorPosition, setLastCursorPosition = React.useState(0)
	local targetChannelWidth, updateTargetChannelWidth = React.useBinding(0)
	local isMountedRef = React.useRef(false)
	local textBoxRef = React.useRef(nil :: TextBox?)
	local autocompleteDropdownRef = React.useRef(nil :: any?)
	local onBackspacePressedConnectionRef = React.useRef(nil :: RBXScriptConnection?)
	local onArrowKeyPressedConnectionRef = React.useRef(nil :: RBXScriptConnection?)
	local shouldResetChannelOnBackspaceRef = React.useRef(false)
	local emojiIndex, setEmojiIndex = React.useState(0)

	local emojiAutocomplete = AutocompleteText.new(initializeEmojis)
	local commandAutocomplete = AutocompleteText.new(initializeCommands)

	-- If new TextChatCommand added at runtime in Studio, redefine commands trie
	React.useEffect(function()
		if EnableCommandAutocomplete() then
			TextChatService.ChildAdded:Connect(function(child: any)
				if child.ClassName == "TextChatCommand" and string.sub(child.PrimaryAlias, 1, 1) == "/" then
					commandAutocomplete = AutocompleteText.new(initializeCommands)

					if getTextChatServiceTextChatCommandAutocompleteVisible() then
						child:GetPropertyChangedSignal("AutocompleteVisible"):Connect(function()
							commandAutocomplete = AutocompleteText.new(initializeCommands)
						end)
					end
				end
			end)
		end
	end, {})

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

	-- Callback for when an autocomplete entry is selected via enter or click or second colon autofill
	local onAutocompleteSelected = React.useCallback(function(rbx)
		props.autocompleteDropdownActivated(false)
		props.autocompleteDropdownResultsChanged({})

		local textBox = textBoxRef.current

		if textBox then
			-- When pressing enter or clicking, cursor position becomes -1 momentarily, so get cursor position from lastCursorPosition
			local currentText = textBox.Text

			local textBeforeCursor = string.sub(currentText, 1, lastCursorPosition - 1)
			local textAfterCursor = string.sub(currentText, lastCursorPosition, #currentText)

			local newText = ""
			if props.autocompleteDropdownReducer.autocompleteType == "emojis" then
				local emojiUnicode = rbx.EmojiLabel.Text
				local patternToReplace = ":[^:]*$"
				newText = string.gsub(textBeforeCursor, patternToReplace, emojiUnicode)
			elseif EnableCommandAutocomplete() and props.autocompleteDropdownReducer.autocompleteType == "commands" then
				local command = rbx.TextLabel.Text
				local patternToReplace = "(/.*)"
				newText = string.gsub(textBeforeCursor, patternToReplace, command)
			end

			if textAfterCursor ~= "" then
				newText = newText .. textAfterCursor
			end
			textBox.Text = newText
			setInputText(newText)

			if isMountedRef.current then
				textBox:CaptureFocus()
				-- Calculate where to reinsert cursor position if there is text after cursor
				if textAfterCursor ~= "" then
					local newCursorPosition = #newText - #textAfterCursor + 1
					textBox.CursorPosition = newCursorPosition
				end
			end

			props.autocompleteDropdownDeactivated()
		else
			Logger:error("Could not find textBox")
		end
	end)

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
		if props.autocompleteEnabled then
			local textBox = textBoxRef.current
			if textBox then
				textBox:GetPropertyChangedSignal("CursorPosition"):Connect(function()
					local cursorPosition = textBox.CursorPosition
					if cursorPosition and cursorPosition ~= -1 then
						setLastCursorPosition(cursorPosition)
					end
				end)
			end
		end
	end, {})

	-- For autocomplete arrow key up and down selection support
	React.useEffect(function()
		if props.autocompleteEnabled then
			onArrowKeyPressedConnectionRef.current = props.userInputService.InputBegan:connect(function(inputObj, _)
				local arrowKeyPressedWhileFocused = props.autocompleteDropdownReducer.activated
					and (Enum.KeyCode.Up or Enum.KeyCode.Down)
				if arrowKeyPressedWhileFocused then
					if inputObj.KeyCode == Enum.KeyCode.Up and props.autocompleteDropdownReducer.selectedIndex > 1 then
						props.autocompleteDropdownSelectionChanged(props.autocompleteDropdownReducer.selectedIndex - 1)
					end
					if
						inputObj.KeyCode == Enum.KeyCode.Down
						and props.autocompleteDropdownReducer.selectedIndex
							< #props.autocompleteDropdownReducer.results
					then
						props.autocompleteDropdownSelectionChanged(props.autocompleteDropdownReducer.selectedIndex + 1)
					end
				end
			end)

			return function()
				local onArrowKeyPressedConnection = onArrowKeyPressedConnectionRef.current
				if onArrowKeyPressedConnection and onArrowKeyPressedConnection.Connected then
					onArrowKeyPressedConnection:Disconnect()
				end
				onArrowKeyPressedConnectionRef.current = nil
			end
		end
		return function() end
	end, { props.userInputService, props.autocompleteDropdownReducer })

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

	local onFocusLost = React.useCallback(function(_, enterPressed: boolean, inputObj: InputObject)
		Logger:debug("Focus lost with enter: {}", tostring(enterPressed))

		local autocompleteDropdown = autocompleteDropdownRef.current

		if enterPressed then
			-- To select emoji with enter key
			if
				props.autocompleteEnabled
				and autocompleteDropdown
				and props.autocompleteDropdownReducer.activated
				and #props.autocompleteDropdownReducer.results > 0
			then
				local offsetFrame = autocompleteDropdown.ScrollBarFrame.ScrollViewFrame.ScrollView.OffsetFrame
				-- Find child frame that was selected
				for _, childFrame in ipairs(offsetFrame:GetChildren()) do
					if
						childFrame.ClassName == "Frame"
						and childFrame.LayoutOrder == props.autocompleteDropdownReducer.selectedIndex
					then
						onAutocompleteSelected(childFrame.TextLabelButton)
						return
					end
				end
			else
				onSendActivated()
			end
		end

		if isMountedRef.current then
			if props.autocompleteEnabled and autocompleteDropdown and props.autocompleteDropdownReducer.activated then
				-- If user presses escape while dropdown open, close dropdown but keep focus
				if inputObj.KeyCode == Enum.KeyCode.Escape then
					props.autocompleteDropdownActivated(false)
					local textBox = textBoxRef.current
					if textBox then
						local currentCursorPosition = lastCursorPosition
						textBox:CaptureFocus()
						textBox.CursorPosition = currentCursorPosition
						return
					else
						Logger:error("Could not focus chat input bar because textBox not found")
					end
				-- If user clicks/taps outside of AutocompleteDropdown, close dropdown and lose focus (put into helper)
				else
					local inputObjX = inputObj.Position.X
					local inputObjY = inputObj.Position.Y
					local autocompleteDropdownXLeftBound = autocompleteDropdown.AbsolutePosition.X
					local autocompleteDropdownXRightBound = autocompleteDropdownXLeftBound
						+ autocompleteDropdown.AbsoluteSize.X
					local autocompleteDropdownYUpperBound = autocompleteDropdown.AbsolutePosition.Y
					local autocompleteDropdownYLowerBound = autocompleteDropdownYUpperBound
						+ autocompleteDropdown.AbsoluteSize.Y
					if
						inputObjX < autocompleteDropdownXLeftBound
						or inputObjX > autocompleteDropdownXRightBound
						or inputObjY < autocompleteDropdownYUpperBound
						or inputObjY > autocompleteDropdownYLowerBound
					then
						props.autocompleteDropdownActivated(false)
					end
				end
			else
				setIsFocused(false)
			end
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

	-- function to handle autocomplete
	local function handleAutocomplete(rbx, newText, lastChar)
		if EnableCommandAutocomplete() then
			-- commands can only be when "/" is the first char
			if
				(lastChar == "/" and rbx.CursorPosition == 2)
				or (props.autocompleteDropdownReducer.autocompleteType == "commands" and lastChar ~= ":")
			then
				props.autocompleteDropdownTypeChanged("commands")
				props.autocompleteDropdownActivated(true)
				if lastChar ~= "" and lastChar ~= " " then
					local autocompleteInput = string.sub(newText, 1, rbx.CursorPosition :: number - 1):lower()
					local results = commandAutocomplete:getResults(autocompleteInput, sortCommandResultsCallback)
					props.autocompleteDropdownResultsChanged(results)
					-- if autocomplete matches first result, then
					if autocompleteInput == results[1] then
						props.autocompleteDropdownActivated(false)
						props.autocompleteDropdownResultsChanged({})
					end
				else
					props.autocompleteDropdownDeactivated()
				end
				return
			end
		end

		-- Check if reducer is (activated or has results) and is of emoji autocomplete type
		-- If so, we are ready to show results (user previously type first colon) or already displaying results (user previously type valid character after first colon)
		if
			(props.autocompleteDropdownReducer.activated or #props.autocompleteDropdownReducer.results > 0)
			and props.autocompleteDropdownReducer.autocompleteType == "emojis"
		then
			props.autocompleteDropdownActivated(true)
			local textBeforeCursor = string.sub(newText, 1, rbx.CursorPosition :: number - 1)
			local index = string.find(textBeforeCursor, ":[^:]*$") :: number
			-- Run autocomplete and show results if lastChar is not empty string, colon, or space
			if lastChar ~= "" and lastChar ~= ":" and lastChar ~= " " and index then
				if FFlagTriggerEmojiAutocompleteWithTwoCharacters then
					local autocompleteInput = string.sub(newText, index + 1, rbx.CursorPosition :: number - 1):lower()
					local results = {}
					if autocompleteInput and string.len(autocompleteInput) > 1 then
						results = emojiAutocomplete:getResults(autocompleteInput, sortEmojiResultsCallback)
					end
					props.autocompleteDropdownResultsChanged(results)
					return
				else
					local autocompleteInput = string.sub(newText, index + 1, rbx.CursorPosition :: number - 1):lower()
					local results = emojiAutocomplete:getResults(autocompleteInput, sortEmojiResultsCallback)
					props.autocompleteDropdownResultsChanged(results)
					return
				end
			-- This could be second colon to complete emoji or backspacing into first colon
			elseif lastChar == ":" then
				-- Second colon
				if index ~= emojiIndex then
					-- If full alias matches the result
					local autocompleteInput =
						string.sub(newText, emojiIndex + 1, rbx.CursorPosition :: number - 2):lower()
					if List.includes(props.autocompleteDropdownReducer.results, autocompleteInput) then
						-- Remove ending colons
						local textAfterCursor = string.sub(newText, rbx.CursorPosition :: number, #newText)
						local textBeforeCursorWithoutEndColon = string.sub(newText, 1, rbx.CursorPosition :: number - 2)
						local newTextWithoutEndColon = textBeforeCursorWithoutEndColon .. textAfterCursor
						rbx.Text = newTextWithoutEndColon
						setInputText(newTextWithoutEndColon)
						rbx.CursorPosition = rbx.CursorPosition :: number - 1

						local autocompleteDropdown = autocompleteDropdownRef.current
						if autocompleteDropdown then
							local offsetFrame =
								autocompleteDropdown.ScrollBarFrame.ScrollViewFrame.ScrollView.OffsetFrame
							-- find child frame that was selected
							for _, childFrame in ipairs(offsetFrame:GetChildren()) do
								if childFrame.ClassName == "Frame" then
									local textLabelButton = childFrame:FindFirstChild("TextLabelButton")
									if textLabelButton then
										local textLabel = textLabelButton:FindFirstChild("TextLabel")
										if textLabel and textLabel.Text then
											if textLabel.Text == autocompleteInput then
												onAutocompleteSelected(textLabelButton)
												return
											end
										end
									end
								end
							end
						end
					-- No match, let user continue typing
					else
						props.autocompleteDropdownActivated(false)
						props.autocompleteDropdownResultsChanged({})
					end
					return
				-- If equal, still first colon
				else
					props.autocompleteDropdownResultsChanged({})
				end
			-- Don't set emojiIndex so user can backspace back into dropdown
			elseif lastChar == " " then
				props.autocompleteDropdownActivated(false)
				props.autocompleteDropdownResultsChanged({})
			-- Reset autocomplete
			else
				props.autocompleteDropdownDeactivated()
				setEmojiIndex(0)
			end
		else
			local index = string.find(newText, ":[^:]*$") :: number
			-- If reducer is not activated and no results, this is initial colon
			if lastChar == ":" then
				props.autocompleteDropdownTypeChanged("emojis")
				props.autocompleteDropdownActivated(true)
				props.autocompleteDropdownResultsChanged({})
				setEmojiIndex(index)
			end
		end
	end

	local onTextChanged = React.useCallback(function(rbx)
		local newText = rbx.Text

		-- Pressing enter mid-text causes carriage return char to be inserted, need to sanitize
		if props.autocompleteEnabled then
			local hasCarriageReturn = string.find(newText, "\r")
			local isMidText = rbx.CursorPosition < #newText + 1
			if hasCarriageReturn then
				local sanitizedNewText = string.gsub(newText, "\r", "")
				rbx.Text = sanitizedNewText
				setInputText(sanitizedNewText)
				if isMidText then
					rbx.CursorPosition = rbx.CursorPosition :: number - 1
				end
				return
			end
		end

		local lastChar = string.sub(newText, rbx.CursorPosition :: number - 1, rbx.CursorPosition :: number - 1)
		Logger:trace("Input: {}", newText)

		local stringLen = if utf8.len(newText) then utf8.len(utf8.nfcnormalize(newText)) else string.len(newText)

		if stringLen and stringLen > props.messageCharacterLimit then
			Logger:debug("Message is over the character limit of {}", tostring(props.messageCharacterLimit))
			rbx.Text = inputText
			return
		end

		setInputText(newText)

		if getEnableChatInputBarConfigurationAutocompleteEnabled() and props.autocompleteEnabled then
			handleAutocomplete(rbx, newText, lastChar)
		end

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

	-- callback for when user hovers over a new selection
	local onAutocompleteDropdownHover = React.useCallback(function(rbx)
		props.autocompleteDropdownSelectionChanged(rbx.LayoutOrder)
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
		AutocompleteDropdown = getEnableChatInputBarConfigurationAutocompleteEnabled()
				and props.autocompleteEnabled
				and React.createElement(AutocompleteDropdown, {
					chatInputBarSettings = chatInputBarSettings,
					chatWindowSettings = chatWindowSettings,
					setTransparency = setTransparency,
					transparencyValue = props.transparencyValue,
					activated = props.autocompleteDropdownReducer.activated and isFocused,
					results = props.autocompleteDropdownReducer.results,
					selectedIndex = props.autocompleteDropdownReducer.selectedIndex,
					autocompleteType = props.autocompleteDropdownReducer.autocompleteType,
					onAutocompleteDropdownHover = onAutocompleteDropdownHover,
					onAutocompleteSelected = onAutocompleteSelected,
					autocompleteDropdownRef = autocompleteDropdownRef :: any,
					textBoxRef = textBoxRef :: any,
				})
			or nil,
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

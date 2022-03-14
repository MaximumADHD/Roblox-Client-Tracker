local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent

local Roact = require(ProjectRoot.Roact)
local UIBlox = require(ProjectRoot.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local Config = require(ExperienceChat.Config)

local TOGGLE_CHAT_ACTION_NAME = "ToggleDefaultChat"

local ChatInputBar = Roact.Component:extend("ChatInputBar")
ChatInputBar.defaultProps = {
	userInputService = game:GetService("UserInputService"),
	contextActionService = game:GetService("ContextActionService"),
	LayoutOrder = 1,
	sendButtonContainerWidth = 30,
	targetChannelDisplayName = nil,
	onTargetChannelChanged = function() end,
	transparencyValue = Config.ChatWindowBackgroundTransparency,
	onChatInputBarHoveredOrFocused = function() end,
	onChatInputBarNotHoveredOrFocused = function() end,
	canLocalUserChat = false,
}

function ChatInputBar:init()
	self.isMounted = false
	self.emptyInputText = true
	self.isHovered = false
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
		self.props.onChatInputBarHoveredOrFocused()
	end

	self.onFocusLost = function(_, enterPressed)
		if enterPressed then
			self.onSendActivated()
		end

		if self.isMounted then
			self:setState({
				isFocused = false,
			})
		end

		if not self.isHovered then
			self.props.onChatInputBarNotHoveredOrFocused()
		end
	end

	self.onTextChanged = function(rbx)
		local newText = rbx.Text

		self:setState({
			inputText = newText,
		})

		self.emptyInputText = #newText == 0 and self.emptyInputText

		-- if text is changed and it's a /t or /team we autocomplete targetchannel
		if newText == "/t " or newText == "/team " or newText == "% " then
			self.props.onTargetChannelChanged("[Team]")

			-- clear text
			rbx.Text = ""

			self:setState({
				inputText = "",
			})
		end
	end

	self.onSendActivated = function()
		if not self.isMounted or not self.props.canLocalUserChat then
			return
		end

		local text = string.gsub(self.state.inputText, "%p", {
			["<"] = "&lt;",
			[">"] = "&gt;",
			["&"] = "&amp;",
		})

		-- * In the future, this is where we would call some bridge to SendAsync
		if self.props.onSendChat and text ~= "" then
			self.props.onSendChat(text, self.props.targetChannelDisplayName)
		end

		self.textBoxRef:getValue().Text = ""
		self.textBoxRef:getValue():ReleaseFocus()

		self:setState({
			inputText = "",
		})
	end

	self.onBackspacePressedConnection = self.props.userInputService.InputEnded:connect(function(inputObj, _)
		if
			self.textBoxRef:getValue()
			and self.textBoxRef:getValue():IsFocused()
			and inputObj.KeyCode == Enum.KeyCode.Backspace
			and self.state.inputText == ""
		then
			if not self.emptyInputText then
				self.emptyInputText = true
			else
				self.props.onTargetChannelChanged(Roact.None)
				self.updateTargetChannelWidth(0)
			end
		end
	end)

	self.getTransparencyOrBindingValue = function(initialTransparency)
		if type(self.props.transparencyValue) == "number" then
			return self.props.transparencyValue
		end

		return self.props.transparencyValue:map(function(value)
			return initialTransparency + value * (1 - initialTransparency)
		end)
	end
end

function ChatInputBar:render()
	local hasEmptyInputText = self.state.inputText == ""
	local showPlaceholderText = hasEmptyInputText and not self.state.isFocused

	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = Config.ChatWindowBackgroundColor3,
		BackgroundTransparency = self.getTransparencyOrBindingValue(Config.ChatWindowBackgroundTransparency),
		BorderSizePixel = 0,
		LayoutOrder = self.props.LayoutOrder,
		Size = self.props.size,
		[Roact.Event.MouseEnter] = function()
			self.isHovered = true
			self.props.onChatInputBarHoveredOrFocused()
		end,
		[Roact.Event.MouseLeave] = function()
			self.isHovered = false
			if not self.state.isFocused then
				self.props.onChatInputBarNotHoveredOrFocused()
			end
		end,
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 8),
			PaddingRight = UDim.new(0, 8),
			PaddingTop = self.props.addTopPadding and UDim.new(0, 8) or UDim.new(0, 0),
		}),
		Background = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundColor3 = Config.ChatInputBarBackgroundColor,
			BackgroundTransparency = self.getTransparencyOrBindingValue(Config.ChatInputBarBackgroundTransparency),
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
					TargetChannel = Roact.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						Font = Config.ChatInputBarFont,
						TextSize = Config.ChatInputBarTextSize,
						Text = self.props.targetChannelDisplayName or "",
						TextWrapped = true,
						TextTransparency = self.getTransparencyOrBindingValue(0),
						TextColor3 = Config.ChatInputBarTextColor3,
						Size = UDim2.fromScale(0, 1),
						Visible = self.props.targetChannelDisplayName ~= nil,

						[Roact.Change.AbsoluteSize] = function(rbx)
							self.updateTargetChannelWidth(rbx.AbsoluteSize.X)
						end,
					}, {
						textPadding = Roact.createElement("UIPadding", {
							PaddingRight = UDim.new(0, 4),
						}),
					}),
					DisabledPlaceholderLabel = not self.props.canLocalUserChat and Roact.createElement("TextLabel", {
						AnchorPoint = Vector2.new(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						Font = Config.ChatInputBarFont,
						Text = self.props.disabledChatPlaceholderText,
						Position = UDim2.fromScale(1, 0),
						Size = self.targetChannelWidth:map(function(width)
							return UDim2.new(1, -width, 0, 0)
						end),
						TextColor3 = showPlaceholderText and UIBlox.App.Style.Colors.Pumice
							or Config.ChatInputBarTextColor3,
						TextSize = Config.ChatInputBarTextSize,
						TextTransparency = showPlaceholderText and self.getTransparencyOrBindingValue(0.5)
							or self.getTransparencyOrBindingValue(0),
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
					}),
					TextBox = self.props.canLocalUserChat and Roact.createElement("TextBox", {
						AnchorPoint = Vector2.new(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						ClearTextOnFocus = false,
						Font = Config.ChatInputBarFont,
						PlaceholderText = showPlaceholderText and self.props.placeholderText or "",
						Position = UDim2.fromScale(1, 0),
						Size = self.targetChannelWidth:map(function(width)
							return UDim2.new(1, -width, 0, 0)
						end),
						Text = "",
						TextColor3 = showPlaceholderText and UIBlox.App.Style.Colors.Pumice
							or Config.ChatInputBarTextColor3,
						TextSize = Config.ChatInputBarTextSize,
						TextTransparency = showPlaceholderText and self.getTransparencyOrBindingValue(0.5)
							or self.getTransparencyOrBindingValue(0),
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,

						[Roact.Event.Focused] = self.onFocused,
						[Roact.Event.FocusLost] = self.onFocusLost,
						[Roact.Change.Text] = self.onTextChanged,
						[Roact.Ref] = self.textBoxRef,
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
						ImageColor3 = hasEmptyInputText and UIBlox.App.Style.Colors.Pumice
							or UIBlox.App.Style.Colors.White,
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

function ChatInputBar:didMount()
	self.isMounted = true

	local function handleAction(_, inputState)
		if inputState == Enum.UserInputState.End and not self.textBoxRef:getValue():IsFocused() then
			self.textBoxRef:getValue():CaptureFocus()
		end
	end
	self.props.contextActionService:BindAction(TOGGLE_CHAT_ACTION_NAME, handleAction, false, Enum.KeyCode.Slash)
end

function ChatInputBar:willUnmount()
	self.isMounted = false

	self.props.contextActionService:UnbindAction(TOGGLE_CHAT_ACTION_NAME)

	if self.onBackspacePressedConnection then
		self.onBackspacePressedConnection:Disconnect()
	end
	self.onBackspacePressedConnection = nil
end

return ChatInputBar

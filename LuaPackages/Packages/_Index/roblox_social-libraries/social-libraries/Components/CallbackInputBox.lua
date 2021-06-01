local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local CallbackInputBox = Roact.PureComponent:extend("CallbackInputBox")

CallbackInputBox.defaultProps = {
	initialInputText = "",
	inputTextFont = Enum.Font.Gotham,
	inputTextColor3 = Color3.new(1, 0, 1),
	inputTextSize = 14,
	inputTextYAlignment = Enum.TextYAlignment.Center,
	inputTextXAlignment = Enum.TextXAlignment.Center,
	inputTextTransparency = 0,
	placeholderTextTransparency = 0.6,
	placeholderTextColor3 = Color3.new(1, 0, 0),
	placeholderText = "Test placeholder text",

	clearIcon = "rbxasset://textures/ui/LuaChat/icons/ic-close-white.png",
	clearIconColor3 = Color3.new(1, 1, 0),
	clearIconTransparency = 0,
	clearButtonSize = 24,

	clipsDescendants = true,
	manualFocusRelease = false,
	captureFocusOnMount = false,
	multiLine = false,
	textWrapped = false,
	showCancelIconOnLoad = false,

	clearButtonDisabled = nil,
	textChangedCallback = nil,
	focusChangedCallback = function() end,
	onSelectCallback = function() end,

	inputBoxRef = nil,

	[Roact.Change.AbsoluteSize] = function() end,
}

function CallbackInputBox:init()
	self.clearRef = Roact.createRef()
	self.inputBoxRef = self.props.inputBoxRef or Roact.createRef()

	self.inputText = self.props.initialInputText

	--used so that textChangedCallback doesn't fire when the component initially sets its text to nothing.
	--The issue is that the component will try to re-render while mounting and throw an error when the
	--text is initially set to "" by the component itself and the Change event fires
	self.textChangedEventUnlocked = false

	self.focusTextbox = function()
		self.props.onSelectCallback()
		if not self.inputBoxRef.current:IsFocused() then
			self.inputBoxRef.current:captureFocus()
		end
	end
end

function CallbackInputBox:render()
		local placeholderTextTransparency = self.props.placeholderTextTransparency
		local inputTextTransparency = self.props.inputTextTransparency
		local textTransparency

		if not self.inputText or self.inputText == "" then
			textTransparency = placeholderTextTransparency
		else
			textTransparency = inputTextTransparency
		end

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			inputBox = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				LayoutOrder = 1,
			},{
				layout = Roact.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				inputTextBox = Roact.createElement("TextBox", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -self.props.clearButtonSize, 1, 0),
					Position = UDim2.new(0, 0, 0, 0),

					TextColor3 = self.props.inputTextColor3,
					TextSize = self.props.inputTextSize,
					TextTransparency = textTransparency,
					Font = self.props.inputTextFont,
					PlaceholderText = self.props.placeholderText,
					PlaceholderColor3 = self.props.placeholderTextColor3,

					TextXAlignment = self.props.inputTextXAlignment,
					TextYAlignment = self.props.inputTextYAlignment,
					OverlayNativeInput = true,
					ClearTextOnFocus = false,
					ClipsDescendants = self.props.clipsDescendants,
					LayoutOrder = 1,

					ManualFocusRelease = self.props.manualFocusRelease,
					MultiLine = self.props.multiLine,
					TextWrapped = self.props.textWrapped,
					[Roact.Event.TouchTap] = self.focusTextbox,

					[Roact.Event.Focused] = function(rbx)
						if self.inputBoxRef.current and self.inputBoxRef.current.Text ~= "" then
							if self.clearRef.current and not self.props.clearButtonDisabled then
								self.clearRef.current.Visible = true
							end

							rbx.TextColor3 = self.props.inputTextColor3
							rbx.TextTransparency = inputTextTransparency
						else
							rbx.TextColor3 = self.props.placeholderTextColor3
							rbx.TextTransparency = placeholderTextTransparency
						end

						self.props.focusChangedCallback(true)
					end,

					[Roact.Event.FocusLost] = function(rbx)
						if self.inputBoxRef.current and self.inputBoxRef.current.Text == "" then
							rbx.TextColor3 = self.props.placeholderTextColor3
							rbx.TextTransparency = placeholderTextTransparency
						end

						self.props.focusChangedCallback(false)
					end,

					[Roact.Change.Text] = function(rbx)
						if rbx.Text ~= "" or self.textChangedEventUnlocked then
							if rbx.Text ~= "" then
								if self.clearRef.current and not self.props.clearButtonDisabled then
									self.clearRef.current.Visible = true
								end

								rbx.TextColor3 = self.props.inputTextColor3
								rbx.TextTransparency = inputTextTransparency
							else
								if self.clearRef.current then
									self.clearRef.current.Visible = false
								end

								rbx.TextColor3 = self.props.placeholderTextColor3
								rbx.TextTransparency = placeholderTextTransparency
							end

							self.inputText = rbx.Text

							if self.props.textChangedCallback then
								self.props.textChangedCallback(rbx.Text)
							end
						end

						self.textChangedEventUnlocked = true
					end,

					[Roact.Ref] = self.inputBoxRef,
					[Roact.Change.AbsoluteSize] = self.props[Roact.Change.AbsoluteSize],
				}),

				Clear = Roact.createElement("ImageButton", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, self.props.clearButtonSize, 1,0),
					AutoButtonColor = false,
					LayoutOrder = 2,
					Visible = not self.props.clearButtonDisabled,

					[Roact.Event.Activated] = function()
						if self.inputBoxRef.current then
							self.inputBoxRef.current.Text = ""
						end

						self.inputText = ""

						if self.clearRef.current then
							self.clearRef.current.Visible = false
						end
					end
				},{
					layout = Roact.createElement("UIListLayout", {
						VerticalAlignment = "Center",
						HorizontalAlignment = "Center",
					}),

					Icon = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Size = UDim2.new(0, self.props.clearButtonSize, 0, self.props.clearButtonSize),
						Image = self.props.clearIcon,
						ImageColor3 = self.props.clearIconColor3,
						ImageTransparency = self.props.clearIconTransparency,
						Visible = self.props.showCancelIconOnLoad,

						[Roact.Ref] = self.clearRef,
					})
				}),
			})
		})
end

function CallbackInputBox:didMount()
	if self.inputBoxRef.current then
		self.inputBoxRef.current.Text = self.inputText

		if self.props.captureFocusOnMount then
			spawn(function()
				if self.inputBoxRef and self.inputBoxRef.current then
					self.inputBoxRef.current:captureFocus()
				end
			end)
		end
	end
end

return CallbackInputBox

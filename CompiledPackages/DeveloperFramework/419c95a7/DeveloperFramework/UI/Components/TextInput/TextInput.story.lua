local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Image = require(Framework.UI.Components.Image)
local Pane = require(Framework.UI.Components.Pane)
local TextInput = require(Framework.UI.Components.TextInput)

local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

local DEFAULT_WIDTH = 300

local layoutOrderIterator = LayoutOrderIterator.new()

local function createStory(component)
	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		LayoutOrder = layoutOrderIterator:getNextOrder(),
		Size = UDim2.fromScale(1, 0),
		Spacing = 10,
	}, {
		Content = component,
	})
end

local ControlledInput = Roact.PureComponent:extend("ControlledInput")

ControlledInput.defaultProps = {
	Width = DEFAULT_WIDTH,
}

function ControlledInput:init()
	self.state = {
		Text = "",
	}
end

function ControlledInput:render()
	local props = self.props
	return Roact.createElement(
		TextInput,
		join(props, {
			Text = self.state.Text or "",
			OnTextChanged = function(text: string)
				self:setState({
					Text = text,
				})
			end,
		})
	)
end

local function TextInputToolbar(props)
	return Roact.createElement(Pane, props, {
		ToolButtons = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.X,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Horizontal,
			Spacing = 8,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}, {
			InsertIcon = Roact.createElement(Image, {
				LayoutOrder = 1,
				Size = UDim2.fromOffset(16, 16),
				Style = {
					Color = Color3.new(0.6, 0.6, 0.6),
					Image = "rbxasset://textures/TagEditor/Insert.png",
				},
			}),

			FolderIcon = Roact.createElement(Image, {
				LayoutOrder = 2,
				Size = UDim2.fromOffset(16, 16),
				Style = {
					Color = Color3.new(0.6, 0.6, 0.6),
					Image = "rbxasset://textures/TagEditor/Folder.png",
				},
			}),
		}),
		SendButton = Roact.createElement(Button, {
			AnchorPoint = Vector2.new(1, 0.5),
			OnClick = function()
				print("Clicked Send")
			end,
			Position = UDim2.fromScale(1, 0.5),
			Size = UDim2.fromOffset(50, 28),
			Style = "Round",
			Text = "Send",
		}),
	})
end

return {
	controls = {
		isDisabled = false,
	},
	stories = {
		{
			name = "Default",
			story = function(props)
				return createStory(Roact.createElement(ControlledInput, {
					Disabled = props.controls.isDisabled,
					PlaceholderText = "Hello, metaverse!",
					ShouldFocus = true,
					OnFocusLost = function(value, enterPressed)
						print("Focus lost", value, enterPressed)
					end,
				}))
			end,
		},
		{
			name = "Standard Styles",
			story = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Layout = Enum.FillDirection.Vertical,
				Spacing = 10,
			}, {
				Box = createStory(Roact.createElement(ControlledInput, {
					PlaceholderText = "Box style",
					Style = "Box",
				})),

				RoundBox = createStory(Roact.createElement(ControlledInput, {
					PlaceholderText = "RoundBox style",
					Style = "RoundBox",
				})),

				BorderBox = createStory(Roact.createElement(ControlledInput, {
					PlaceholderText = "BorderBox style",
					Style = "BorderBox",
				})),
			}),
		},
		{
			name = "Bottom Text",
			story = createStory(Roact.createElement(ControlledInput, {
				BottomText = "Username or email address",
			})),
		},
		{
			name = "Error Text",
			summary = "Render component with error border color and error text",
			story = createStory(Roact.createElement(ControlledInput, {
				ErrorText = "Invalid input",
			})),
		},
		{
			name = "Custom Components",
			summary = "Render leading, trailing, and bottom components",
			story = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Layout = Enum.FillDirection.Vertical,
				Spacing = 10,
			}, {
				Leading = createStory(Roact.createElement(ControlledInput, {
					LeadingComponent = Image,
					LeadingComponentProps = {
						Size = UDim2.fromOffset(16, 16),
						Style = {
							Color = Color3.new(0.6, 0.6, 0.6),
							Image = "rbxasset://textures/DeveloperFramework/StudioTheme/search_16.png",
						},
					},
					PlaceholderText = "Search...",
				})),

				Trailing = createStory(Roact.createElement(ControlledInput, {
					TrailingComponent = Image,
					TrailingComponentProps = {
						Size = UDim2.fromOffset(13, 13),
						Style = {
							Color = Color3.new(0.6, 0.6, 0.6),
							Image = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png",
						},
					},
				})),

				Bottom = createStory(Roact.createElement(ControlledInput, {
					BottomComponent = TextInputToolbar,
					BottomComponentProps = {
						Size = UDim2.new(1, 0, 0, 32),
					},
					MultiLine = true,
					OnEnter = function()
						print("Pressed enter to Send")
					end,
					Size = UDim2.fromOffset(DEFAULT_WIDTH, 120),
					PlaceholderText = "Enter a message",
				})),
			}),
		},
		{
			name = "Formatting",
			summary = "Convert input to uppercase",
			story = createStory(Roact.createElement(ControlledInput, {
				OnFormatText = function(text: string)
					return string.upper(text)
				end,
			})),
		},
		{
			name = "Validation",
			summary = "Validate input and render error style and text if invalid",
			story = createStory(Roact.createElement(ControlledInput, {
				OnValidateText = function(text: string)
					local isValid = text == "" or tonumber(text) ~= nil
					local errorText
					if not isValid then
						errorText = "Must be a number"
					end
					return isValid, errorText
				end,
				PlaceholderText = "Enter a number",
			})),
		},
		{
			name = "Max Length",
			summary = "Provide a max length for the input",
			story = createStory(Roact.createElement(ControlledInput, {
				PlaceholderText = "Enter text",
				MaxLength = 20,
			})),
		},
		{
			name = "MultiLine",
			summary = "A multiline text input with max length",
			story = createStory(Roact.createElement(ControlledInput, {
				PlaceholderText = "Enter text",
				MaxLength = 200,
				MultiLine = true,
				Size = UDim2.fromOffset(DEFAULT_WIDTH, 200),
			})),
		},
		{
			name = "Autocomplete",
			summary = "Show an autocomplete dropdown of options when typing",
			story = createStory(Roact.createElement(ControlledInput, {
				GetAutocompleteItems = function(text: string)
					return {
						{
							Id = "Red",
							Label = "Add Red to " .. text,
							Value = text .. ": Red",
						},
						{
							Id = "Green",
							Label = "Add Green to " .. text,
							Value = text .. ": Green",
						},
						{
							Id = "Blue",
							Label = "Add Blue to " .. text,
							Value = text .. ": Blue",
						},
					}
				end,
				PlaceholderText = "Enter text",
			})),
		},
		{
			name = "OnEnter",
			summary = "Prints to the console when you press enter",
			story = createStory(Roact.createElement(ControlledInput, {
				MultiLine = true,
				OnEnter = function()
					print("OnEnter called")
				end,
			})),
		},
	},
}

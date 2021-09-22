local FFlagDevFrameworkTextInput2 = game:GetFastFlag("DevFrameworkTextInput2")

local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local UI = require(Framework.UI)
local Image = UI.Decoration.Image
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel -- Remove with FFlagDevFrameworkTextInput2
local TextInput2 = UI.TextInput2

local DEFAULT_WIDTH = 300

local function createStory(component, layoutOrder)
	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		LayoutOrder = layoutOrder,
		Size = UDim2.fromScale(1, 0),
		Spacing = 10,
	}, {
		Content = component,
	})
end

if FFlagDevFrameworkTextInput2 then
	return {
		controls = {
			isDisabled = false,
		},
		stories = {
			{
				name = "Default",
				story = function(props)
					return createStory(Roact.createElement(TextInput2, {
						Disabled = props.controls.isDisabled,
						PlaceholderText = "Hello, metaverse!",
						Width = DEFAULT_WIDTH,
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
					Box = createStory(Roact.createElement(TextInput2, {
						PlaceholderText = "Box style",
						Style = "Box",
						Width = DEFAULT_WIDTH,
					}), 1),

					RoundBox = createStory(Roact.createElement(TextInput2, {
						PlaceholderText = "RoundBox style",
						Style = "RoundBox",
						Width = DEFAULT_WIDTH,
					}), 2),

					BorderBox = createStory(Roact.createElement(TextInput2, {
						PlaceholderText = "BorderBox style",
						Style = "BorderBox",
						Width = DEFAULT_WIDTH,
					}), 3),
				})
			},
			{
				name = "Bottom Text",
				story = createStory(Roact.createElement(TextInput2, {
					BottomText = "Username or email address",
					Width = DEFAULT_WIDTH,
				}))
			},
			{
				name = "Error Text",
				summary = "Render component with error border color and error text",
				story = createStory(Roact.createElement(TextInput2, {
					Error = true,
					ErrorText = "Invalid input",
					Width = DEFAULT_WIDTH,
				}))
			},
			{
				name = "Custom Components",
				summary = "Render leading and trailing components",
				story = Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.Y,
					Layout = Enum.FillDirection.Vertical,
					Spacing = 10,
				}, {
					Leading = createStory(Roact.createElement(TextInput2, {
						LeadingComponent = Image,
						LeadingComponentProps = {
							Size = UDim2.fromOffset(16, 16),
							Style = {
								Color = Color3.new(0.6, 0.6, 0.6),
								Image = "rbxasset://textures/DeveloperFramework/StudioTheme/search_16.png",
							},
						},
						PlaceholderText = "Search...",
						Width = DEFAULT_WIDTH,
					}), 1),

					Trailing = createStory(Roact.createElement(TextInput2, {
						TrailingComponent = Image,
						TrailingComponentProps = {
							Size = UDim2.fromOffset(13, 13),
							Style = {
								Color = Color3.new(0.6, 0.6, 0.6),
								Image = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png",
							},
						},
						Width = DEFAULT_WIDTH,
					}), 2),
				})
			},
			{
				name = "Formatting",
				summary = "Convert input to uppercase",
				story = createStory(Roact.createElement(TextInput2, {
					OnFormatText = function(text: string)
						return string.upper(text)
					end,
					Width = DEFAULT_WIDTH,
				}))
			},
			{
				name = "Validation",
				summary = "Validate input and render error style and text if invalid",
				story = createStory(Roact.createElement(TextInput2, {
					OnTextChanged = function(text: string, isValid: boolean)
						print(text, isValid)
					end,
					OnValidateText = function(text: string)
						local isValid = text == "" or tonumber(text) ~= nil
						local errorText
						if not isValid then
							errorText = "Must be a number"
						end
						return isValid, errorText
					end,
					PlaceholderText = "Enter a number",
					Width = DEFAULT_WIDTH,
				}))
			},
		}
	}
else
	return Roact.createElement(TextLabel, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = "Please enable FFlagDevFrameworkTextInput2",
		TextWrapped = true,
	})
end

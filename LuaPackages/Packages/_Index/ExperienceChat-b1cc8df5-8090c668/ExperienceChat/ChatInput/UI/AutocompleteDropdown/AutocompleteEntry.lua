local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local React = require(ProjectRoot.React)

local Packages = ExperienceChat.Parent
local EMOJI_LIST = require(Packages.EmojiList)

local Config = require(ExperienceChat.Config)

return function(props)
	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, Config.AutocompleteEntryDefaultSizeY),
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
		ZIndex = 2,
		[React.Event.MouseEnter] = props.onAutocompleteDropdownHover,
	}, {
		TextLabelButton = React.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, (props.isDividerVisible and -1 or 0)),
			BackgroundTransparency = props.setTransparency(
				props.layoutOrder == props.selectedIndex and Config.AutocompleteSelectedTransparency or 1,
				props.transparencyValue
			),
			BackgroundColor3 = props.layoutOrder == props.selectedIndex and Config.AutocompleteSelectedColor or nil,
			Text = "",
			ZIndex = 3,
			[React.Event.Activated] = props.onAutocompleteSelected,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 15),
				PaddingRight = UDim.new(0, 30),
				PaddingTop = UDim.new(0, 8),
				PaddingBottom = UDim.new(0, 8),
			}),
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			EmojiLabel = props.autocompleteType == "emojis" and React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				FontFace = props.chatInputBarSettings.FontFace,
				RichText = true,
				Size = UDim2.new(0, 0, 0, 0),
				Text = string.format("%s", EMOJI_LIST[props.result].base),
				TextColor3 = props.chatInputBarSettings.TextColor3,
				TextSize = props.chatInputBarSettings.TextSize,
				TextStrokeColor3 = props.chatInputBarSettings.TextStrokeColor3,
				TextStrokeTransparency = props.setTransparency(
					props.chatInputBarSettings.TextStrokeTransparency,
					props.transparencyValue
				),
				TextTransparency = props.setTransparency(0, props.transparencyValue),
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				LayoutOrder = 1,
				ZIndex = 2,
			}),
			SpaceLabel = props.autocompleteType == "emojis" and React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				FontFace = props.chatInputBarSettings.FontFace,
				RichText = true,
				Size = UDim2.new(0, 0, 0, 0),
				Text = "  ",
				TextColor3 = props.chatInputBarSettings.TextColor3,
				TextSize = 14,
				TextStrokeColor3 = props.chatInputBarSettings.TextStrokeColor3,
				TextStrokeTransparency = props.setTransparency(
					props.chatInputBarSettings.TextStrokeTransparency,
					props.transparencyValue
				),
				TextTransparency = props.setTransparency(0, props.transparencyValue),
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				LayoutOrder = 2,
				ZIndex = 2,
			}),
			TextLabel = React.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				FontFace = props.chatInputBarSettings.FontFace,
				RichText = true,
				Size = UDim2.new(0, 0, 0, 0),
				Text = string.format("%s", props.result),
				TextColor3 = props.chatInputBarSettings.TextColor3,
				TextSize = props.chatInputBarSettings.TextSize,
				TextStrokeColor3 = props.chatInputBarSettings.TextStrokeColor3,
				TextStrokeTransparency = props.setTransparency(
					props.chatInputBarSettings.TextStrokeTransparency,
					props.transparencyValue
				),
				TextTransparency = props.setTransparency(0, props.transparencyValue),
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				LayoutOrder = 3,
				ZIndex = 2,
			}),
		}),
		Divider = props.isDividerVisible and React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			BackgroundTransparency = props.setTransparency(
				Config.ChatInputBarBorderTransparency,
				props.transparencyValue
			),
			BackgroundColor3 = Config.ChatInputBarBorderColor3,
			BorderSizePixel = 0,
			ZIndex = 2,
		}) or nil,
	})
end

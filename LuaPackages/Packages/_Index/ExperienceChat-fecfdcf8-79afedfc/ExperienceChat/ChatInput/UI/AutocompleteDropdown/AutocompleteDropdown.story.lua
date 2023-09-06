local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local React = require(ProjectRoot.React)
local Config = require(ProjectRoot.ExperienceChat.Config)

local AutocompleteDropdown = require(script.Parent)

local AutocompleteText = require(ExperienceChat.Autocomplete.AutocompleteText)
local initializeEmojis = require(ExperienceChat.Autocomplete.Initializations.initializeEmojis)
local sortEmojiResultsCallback = require(ExperienceChat.Autocomplete.SortingCallbacks.sortEmojiResultsCallback)

local emojiAutocomplete = AutocompleteText.new(initializeEmojis)

return {
	story = function(props)
		return React.createElement(AutocompleteDropdown, {
			chatInputBarSettings = props.chatInputBarSettings,
			chatWindowSettings = {
				Font = Config.ChatWindowFont,
				TextColor3 = Config.ChatWindowTextColor3,
				TextSize = Config.ChatWindowTextSize,
				TextStrokeColor3 = Config.ChatWindowTextStrokeColor,
				TextStrokeTransparency = Config.ChatWindowTextStrokeTransparency,
				BackgroundColor3 = Config.ChatWindowBackgroundColor3,
				BackgroundTransparency = Config.ChatWindowBackgroundTransparency,
			},
			setTransparency = props.setTransparency,
			transparencyValue = Roact.createBinding(0),
			activated = props.activated,
			results = props.controls.prefix ~= ""
					and emojiAutocomplete:getResults(props.controls.prefix, sortEmojiResultsCallback)
				or {},
			selectedIndex = props.controls.selectedIndex,
			onAutocompleteDropdownHover = props.onAutocompleteDropdownHover,
			onAutocompleteSelected = props.onAutocompleteSelected,
			autocompleteDropdownRef = Roact.createRef(),
			textBoxRef = Roact.createRef(),
		})
	end,
	controls = {
		prefix = "sm",
		selectedIndex = 1,
	},
	props = {
		setTransparency = function() end,
		-- results = {"smile", "smile-cat", "smiley", "smiley-cat", "smiling-face-with-3-hearts", "smiling-imp", "smirk", "smirk-cat"},
		onAutocompleteDropdownHover = function() end,
		onAutocompleteSelected = function() end,
		activated = true,
		chatInputBarSettings = {
			BackgroundTransparency = Config.ChatInputBarBackgroundTransparency,
			BackgroundColor3 = Config.ChatInputBarBackgroundColor,
			TextSize = Config.ChatInputBarTextSize,
			TextColor3 = Config.ChatInputBarTextColor3,
			TextStrokeColor3 = Config.ChatInputBarTextStrokeColor,
			TextStrokeTransparency = Config.ChatInputBarTextStrokeTransparency,
			FontFace = Config.ChatInputBarFontFace,
			PlaceholderColor3 = Config.ChatInputBarPlaceholderColor,
		},
	},
}

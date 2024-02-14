local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Roact = require(ProjectRoot.Roact)
local Config = require(ProjectRoot.ExperienceChat.Config)
local RoactRodux = require(ProjectRoot.RoactRodux)

local createStore = require(ExperienceChat.createStore)
local TranslatedTextMessage = require(script.Parent)

local story = Roact.Component:extend("story")

function story:init()
	self.store = createStore()
end

function story:render()
	local controls = self.props.controls

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		TranslatedTextMessage = Roact.createElement(TranslatedTextMessage, {
			message = {
				text = controls.text,
				translation = controls.translation,
				useTranslation = controls.useTranslation,
				prefixText = controls.prefixText,
				userId = 0,
				messageId = 0,
			},
			isUserVerified = controls.isUserVerified,
			onTextMessageLabelButtonActivated = function() end,
			chatWindowSettings = {
				FontFace = Config.ChatWindowFont,
				TextColor3 = Config.ChatWindowTextColor3,
				TextSize = Config.ChatWindowTextSize,
				TextStrokeColor3 = Config.ChatWindowTextStrokeColor,
				TextStrokeTransparency = Config.ChatWindowTextStrokeTransparency,
				BackgroundColor3 = Config.ChatWindowBackgroundColor3,
				BackgroundTransparency = Config.ChatWindowBackgroundTransparency,
			},
			LayoutOrder = 0,
			textStrokeTransparency = 0,
			textTransparency = 0,
			onToggle = function() end,
			showTranslationButton = controls.showTranslationButton,
		}),
	})
end

return {
	summary = "Translated Text Message",
	story = story,
	controls = {
		text = "Sample text chat message text!",
		translation = "Exemple de texte de message de chat !",
		useTranslation = true,
		showTranslationButton = true,
		prefixText = '<font color="#FFA500">PrefixText</font>',
		isUserVerified = true,
	},
	props = {},
}

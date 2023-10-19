return function()
	return game:GetEngineFeature("EnableChatInputBarConfigurationAutocompleteEnabled")
		and not game:GetService("UserInputService").TouchEnabled
end

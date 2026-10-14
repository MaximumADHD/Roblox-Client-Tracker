local sourceStory = require(script.Parent.Parent["ReverseChatFeed.story"])

return {
	name = "Demo — End-Anchored Chat",
	summary = "Flagship chat demonstration with bottom alignment, anchored prepends, and streamed messages.",
	roact = sourceStory.roact,
	story = sourceStory.story,
	controls = sourceStory.controls,
}

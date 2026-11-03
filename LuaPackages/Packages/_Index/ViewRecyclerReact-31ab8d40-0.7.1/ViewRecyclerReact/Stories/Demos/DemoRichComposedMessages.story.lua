local sourceStory = require(script.Parent.Parent["RichTextRecycling.story"])

return {
	name = "Demo — Rich Composed Messages",
	summary = "Flagship composed-message demonstration with independently recycled words, mentions, chips, and badges.",
	roact = sourceStory.roact,
	story = sourceStory.story,
	controls = sourceStory.controls,
}

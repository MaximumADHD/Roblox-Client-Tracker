local sourceStory = require(script.Parent.Parent["DynamicMeasuredRows.story"])

return {
	name = "Demo — Dynamic Measured Activity Feed",
	summary = "Flagship activity feed whose estimated row geometry corrects as wrapped content is measured.",
	roact = sourceStory.roact,
	story = sourceStory.story,
	controls = sourceStory.controls,
}

local sourceStory = require(script.Parent.Parent["ResponsiveGrid.story"])

return {
	name = "Demo — Responsive Collection",
	summary = "Flagship responsive collection that adapts grid columns and item geometry to its viewport.",
	roact = sourceStory.roact,
	story = sourceStory.story,
	controls = sourceStory.controls,
}

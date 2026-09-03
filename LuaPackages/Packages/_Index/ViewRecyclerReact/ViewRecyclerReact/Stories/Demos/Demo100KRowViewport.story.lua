local Playground = require(script.Parent.Parent.LayoutScrollPlayground)

local sourceStory = Playground.createPreset("Fixed")

return {
	name = "Demo — 100K Row Viewport",
	summary = "Flagship demonstration of bounded recycling and random access across 100,000 uniform rows.",
	roact = sourceStory.roact,
	story = sourceStory.story,
	controls = sourceStory.controls,
}

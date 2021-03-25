local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local StoryHost = Roact.PureComponent:extend("StoryHost")

function StoryHost:render()
	local story = self.props.Story
	if typeof(story) == "table" and story.component then
		return story
	else
		return Roact.createElement(story, {})
	end
end

return StoryHost
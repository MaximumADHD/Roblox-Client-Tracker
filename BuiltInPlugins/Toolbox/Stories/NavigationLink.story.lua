--!strict
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)
local NavigationLink = require(Plugin.Core.Components.Categorization.NavigationLink)

local function createNavLinkWrapper(props)
	return Roact.createElement(ToolboxStoryWrapper, {}, {
		EmptyFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 400, 0, 20),
		}, {
			NavLink = Roact.createElement(NavigationLink, props),
		}),
	})
end

return {
	summary = "A See All button with a cute little arrow.",
	stories = {
		{
			name = "Default",
			summary = "Shows a caption of 'See All'",
			story = createNavLinkWrapper({
				OnClickSeeAll = function()
					print("'See All' Button pressed")
				end,
			})
		},
		{
			name = "Total Results",
			summary = "Shows the provided text",
			story = createNavLinkWrapper({
				OnClickSeeAll = function()
					print("'See All' Button pressed")
				end,
				Text = "123,456 Results",
			})
		},
	}
}

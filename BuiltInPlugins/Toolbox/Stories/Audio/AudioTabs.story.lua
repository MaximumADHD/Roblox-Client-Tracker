local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local AudioTabs = require(Plugin.Core.Components.AudioTabs.AudioTabs)

local ToolboxStoryWrapper = require(Plugin.Stories.ToolboxStoryWrapper)

local Category = require(Plugin.Core.Types.Category)

local AudioTabsStroyWrapper = Roact.PureComponent:extend("AudioTabsStroyWrapper")

function AudioTabsStroyWrapper:init()
	self.state = {
		selectedTab = Category.SOUND_EFFECTS.name,
	}

	self.OnTabSelect = function(tab: string)
		self:setState({ selectedTab = tab })
	end
end

function AudioTabsStroyWrapper:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 330, 0, 30),
		BackgroundTransparency = 1,
	}, {
		AudioTabs = Roact.createElement(AudioTabs, {
			SelectedTab = self.state.selectedTab,
			OnTabSelect = self.OnTabSelect,
		}),
	})
end

return {
	name = "Audio Tabs",
	summary = "Tab selection with round edges",
	story = Roact.createElement(ToolboxStoryWrapper, {}, { AudioTabs = Roact.createElement(AudioTabsStroyWrapper) }),
}

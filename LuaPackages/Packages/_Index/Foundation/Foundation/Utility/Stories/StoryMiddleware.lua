local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local FoundationProvider = require(Foundation.Providers.Foundation)
local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)

local ColorUpdateStory = require(Foundation.Providers.Foundation.ColorUpdateStory)

local themes = {
	Light = Theme.Light,
	Dark = Theme.Dark,
}

local devices = {
	Console = Device.Console,
	Desktop = Device.Desktop,
}

local function StoryMiddleware(story)
	-- A component wrapping each story in the StyleProvider
	return function(storyProps)
		local theme = themes[storyProps.theme]
		return React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
		}, {
			-- Padding makes selection cursors easier to see in storybook
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 10),
				PaddingBottom = UDim.new(0, 10),
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
			}),
			FoundationContext = React.createElement(FoundationProvider, {
				theme = theme,
				device = devices[storyProps.platform],
				preferences = storyProps.settings,
				overlayGui = storyProps.focus,
				DONOTUSE_colorUpdate = ColorUpdateStory.FoundationColors,
			}, {
				Child = React.createElement(story, storyProps),
			}),
		})
	end
end

return StoryMiddleware

local Packages = script.Parent.Parent
local Foundation = require(Packages.Foundation)

local React = require(Packages.React)

local FoundationProvider = Foundation.FoundationProvider
local Theme = Foundation.Enums.Theme
local Device = Foundation.Enums.Device

type Theme = "Light" | "Dark"

type StoryProps = {
	focus: LayerCollector,
	theme: Theme,
	platform: Platform,
	settings: any,
}

local function StoryMiddleware(story)
	-- A component wrapping each story in the StyleProvider
	return function(storyProps: StoryProps)
		local theme = Theme[storyProps.theme]
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
				device = Device[storyProps.platform],
				preferences = storyProps.settings,
			}, {
				Child = React.createElement(story, storyProps),
			}),
		})
	end
end

return StoryMiddleware

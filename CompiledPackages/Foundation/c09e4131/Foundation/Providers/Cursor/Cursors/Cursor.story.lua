local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Cursor = require(script.Parent.Cursor)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType
local ColorMode = require(Foundation.Enums.ColorMode)

local function getStory(cursorType, props)
	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(100, 50),
	}, {
		Frame = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -20, 1, -20),
			Position = UDim2.fromOffset(10, 10),
		}, {
			Cursor = React.createElement(Cursor, {
				cursorType = cursorType,
				isVisible = true,
				colorMode = props.controls.colorMode,
			}),
		}),
	})
end

local stories = {}
for _, cursorType in CursorType do
	stories[cursorType] = function(props)
		return getStory(cursorType :: CursorType, props)
	end
end

return {
	summary = "Selection cursors for different types of UI elements",
	stories = stories,
	controls = {
		colorMode = Dash.values(ColorMode),
	},
}

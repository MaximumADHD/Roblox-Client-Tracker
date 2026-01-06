local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Cursor = require(script.Parent.Cursor)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

local function getStory(cursorType)
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
			}),
		}),
	})
end

local stories = {}
for _, cursorType in CursorType do
	stories[cursorType] = getStory(cursorType :: CursorType)
end

return {
	summary = "Selection cursors for different types of UI elements",
	stories = stories,
}

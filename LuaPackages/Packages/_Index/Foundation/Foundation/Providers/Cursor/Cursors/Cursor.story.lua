local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Cursor = require(script.Parent.Cursor)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local cursorTypes: { CursorType } = Dash.values(CursorType)
table.sort(cursorTypes)

local function CursorPreview(cursorType, colorNamespace, layoutOrder: number?)
	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(100, 50),
		LayoutOrder = layoutOrder,
	}, {
		Frame = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -20, 1, -20),
			Position = UDim2.fromOffset(10, 10),
		}, {
			Cursor = React.createElement(Cursor, {
				cursorType = cursorType :: CursorType,
				isVisible = true,
				colorNamespace = colorNamespace,
			}),
		}),
	})
end

local function PlaygroundStory(props)
	return CursorPreview(props.controls.cursorType, props.controls.colorNamespace)
end

local function AllVariantsStory(props)
	local children: { [string]: React.ReactNode } = {}
	for index, cursorType in cursorTypes do
		children[cursorType] = React.createElement(View, {
			tag = "col align-x-center gap-xsmall auto-xy",
			LayoutOrder = index,
		}, {
			Preview = CursorPreview(cursorType, props.controls.colorNamespace, 1),
			Label = React.createElement(Text, {
				Text = cursorType,
				tag = "auto-xy text-body-small content-default",
				LayoutOrder = 2,
			}),
		})
	end

	return React.createElement(View, {
		tag = "row wrap gap-large auto-xy padding-large",
	}, children)
end

return {
	summary = "Selection cursors for different types of UI elements",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "All variants",
			story = AllVariantsStory,
		},
	},
	controls = {
		cursorType = cursorTypes,
		colorNamespace = Dash.values(ColorNamespace),
	},
}

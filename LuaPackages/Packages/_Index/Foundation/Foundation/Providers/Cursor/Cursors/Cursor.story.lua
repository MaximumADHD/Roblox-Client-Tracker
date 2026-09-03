local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Cursor = require(script.Parent.Cursor)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
type ColorNamespace = ColorNamespace.ColorNamespace
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local cursorTypes: { CursorType } = Dash.values(CursorType)
table.sort(cursorTypes)

local function CursorPreview(props: {
	cursorType: CursorType,
	colorNamespace: ColorNamespace,
	LayoutOrder: number?,
})
	return React.createElement(View, {
		Size = UDim2.fromOffset(100, 50),
		LayoutOrder = props.LayoutOrder,
	}, {
		-- The cursor draws outside its host, so inset the host to keep the stroke visible.
		CursorHost = React.createElement(View, {
			Size = UDim2.new(1, -20, 1, -20),
			Position = UDim2.fromOffset(10, 10),
		}, {
			Cursor = React.createElement(Cursor, {
				cursorType = props.cursorType,
				isVisible = true,
				colorNamespace = props.colorNamespace,
			}),
		}),
	})
end

type StoryProps = {
	controls: {
		cursorType: CursorType,
		colorNamespace: ColorNamespace,
	},
}

local function PlaygroundStory(props: StoryProps)
	return React.createElement(CursorPreview, {
		cursorType = props.controls.cursorType,
		colorNamespace = props.controls.colorNamespace,
	})
end

local function AllVariantsStory(props: StoryProps)
	local children: { [string]: React.ReactNode } = {}
	for index, cursorType in cursorTypes do
		children[cursorType] = React.createElement(View, {
			tag = "col align-x-center gap-xsmall auto-xy",
			LayoutOrder = index,
		}, {
			Preview = React.createElement(CursorPreview, {
				cursorType = cursorType :: CursorType,
				colorNamespace = props.controls.colorNamespace,
				LayoutOrder = 1,
			}),
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

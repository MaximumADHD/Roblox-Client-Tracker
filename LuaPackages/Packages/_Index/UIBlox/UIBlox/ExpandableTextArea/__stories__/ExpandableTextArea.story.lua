local ExpandableTextAreaRoot = script.Parent.Parent
local UIBloxRoot = ExpandableTextAreaRoot.Parent
local StyleRoot = UIBloxRoot.Style
local StyleProvider = require(StyleRoot.StyleProvider)
local testStyle = require(StyleRoot.Validator.TestStyle)
local ExpandableTextArea = require(ExpandableTextAreaRoot.ExpandableTextArea)
local Roact = require(UIBloxRoot.Parent.Roact)

local DUMMY_TEXT_LONG = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, " ..
	"sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc sed augue lacus viverra vitae congue. " ..
	"Tortor aliquam nulla facilisi cras fermentum. At risus viverra adipiscing at. Gravida neque convallis a cras s" ..
	"emper auctor neque vitae. Consequat mauris nunc congue nisi vitae suscipit tellus mauris a. Tempus urna et pha" ..
	"retra pharetra massa massa ultricies mi. Donec ultrices tincidunt arcu non. Sed vulputate odio ut enim blandit" ..
	" volutpat maecenas volutpat. Ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis. Arcu dui" ..
	" vivamus arcu felis bibendum. Vel risus commodo viverra maecenas accumsan lacus vel facilisis. Et egestas quis" ..
	" ipsum suspendisse ultrices gravida dictum fusce."

local DUMMY_TEXT_SHORT = "This Text Is Too Short For A Dropdown Arrow"

return function(target)
	local width = UDim.new(0.30, 250)
	local widthSmall = UDim.new(0, 200)
	local padding = 25

	local frame = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		styleProviderLong = Roact.createElement(StyleProvider, {
			style = testStyle,
		}, {
			textBoxLong = Roact.createElement(ExpandableTextArea, {
				Text = DUMMY_TEXT_LONG,
				compactNumberOfLines = 4,
				width = width,
			})
		}),
		styleProviderShort = Roact.createElement(StyleProvider, {
			style = testStyle,
		}, {
			textBoxShort = Roact.createElement(ExpandableTextArea, {
				Text = DUMMY_TEXT_SHORT,
				Position = UDim2.new(width.Scale, width.Offset + padding, 0, 0),
				compactNumberOfLines = 4,
				width = widthSmall,
			})
		})
	})

	local handle = Roact.mount(frame, target, "ExpandableTextAreaComponent")
	return function()
		Roact.unmount(handle)
	end
end
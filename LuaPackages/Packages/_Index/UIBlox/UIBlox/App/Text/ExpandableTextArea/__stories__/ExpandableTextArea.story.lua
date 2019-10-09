local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Roact = require(ReplicatedStorage.Packages.Roact)
local UIBlox = require(ReplicatedStorage.Packages.UIBlox)

local DarkTheme = require(ReplicatedStorage.Packages.UIBloxResources.UIBloxStyle.Themes.DarkTheme)
local Gotham = require(ReplicatedStorage.Packages.UIBloxResources.UIBloxStyle.Fonts.Gotham)

local StyleProvider = UIBlox.Style.Provider

local ExpandableTextAreaRoot = script.Parent.Parent
local ExpandableTextArea = require(ExpandableTextAreaRoot.ExpandableTextArea)

local DUMMY_TEXT_LONG = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, " ..
	"sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc sed augue lacus viverra vitae congue. " ..
	"Tortor aliquam nulla facilisi cras fermentum. At risus viverra adipiscing at. Gravida neque convallis a cras s" ..
	"emper auctor neque vitae. Consequat mauris nunc congue nisi vitae suscipit tellus mauris a. Tempus urna et pha" ..
	"retra pharetra massa massa ultricies mi. Donec ultrices tincidunt arcu non. Sed vulputate odio ut enim blandit" ..
	" volutpat maecenas volutpat. Ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis. Arcu dui" ..
	" vivamus arcu felis bibendum. Vel risus commodo viverra maecenas accumsan lacus vel facilisis. Et egestas quis" ..
	" ipsum suspendisse ultrices gravida dictum fusce."

local DUMMY_TEXT_SHORT = "This Text Is Too Short For A Dropdown Arrow"

local Width = UDim.new(0.50, 250)
local WidthSmall = UDim.new(0, 200)
local Padding = 25

local ExpandableTextAreaStoryComponent = Roact.PureComponent:extend("ExpandableTextAreaStoryComponent")

function ExpandableTextAreaStoryComponent:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		UIGridLayout = Roact.createElement("UIGridLayout",{
			CellSize = UDim2.new(1, 0, 0, 100),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		TextBoxShort = Roact.createElement(ExpandableTextArea, {
			Text = DUMMY_TEXT_SHORT,
			Position = UDim2.new(Width.Scale, Width.Offset + Padding, 0, 0),
			compactNumberOfLines = 4,
			width = WidthSmall,
			LayoutOrder = 1,
		}),
		Roact.createElement("Frame", {
			Size = UDim2.new(0.75, 0, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		},{
			TextBoxLong = Roact.createElement(ExpandableTextArea, {
				Text = DUMMY_TEXT_LONG,
				compactNumberOfLines = 4,
				width = Width,
			}),
		}),

	})
end


return function(target)
	local handle = Roact.mount(Roact.createElement(StyleProvider,
	{
		style = {
			Theme = DarkTheme,
			Font = Gotham,
		},
	},{
		Story = Roact.createElement(ExpandableTextAreaStoryComponent),
	}),target, "ExpandableTextArea")

	return function()
		Roact.unmount(handle)
	end
end
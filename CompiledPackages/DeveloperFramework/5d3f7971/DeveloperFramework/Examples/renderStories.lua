local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)

local Cryo = require(Framework.Parent.Cryo)
local Immutable = require(Framework.Util.Immutable)
local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

--[[
	generateStories should be a callback that returns a dictionary of name -> Roact element
]]
return function(generateStories, options)
	options = Immutable.JoinDictionaries({
		frameProps = {},
		storyRenderer = function(story, props)
			return Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = props.LayoutOrder,
			}, {
				Story = story,
			})
		end,
	}, options or {})

	local layoutOrderIterator = LayoutOrderIterator.new()
	local elements = {}

	local stories = generateStories()

	local storyNames = Cryo.Dictionary.keys(stories)
	table.sort(storyNames)

	for _, name in ipairs(storyNames) do
		local story = stories[name]

		if story == nil then
			-- Story values might be nil if disabled using a FFlag, for example
			continue
		end

		elements["Title_" .. name] = Roact.createElement(TextLabel, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Style = "Bold",
			Text = name,
			AutomaticSize = Enum.AutomaticSize.XY,
		})

		elements["Story_" .. name] = options.storyRenderer(story, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		})
	end
	return Roact.createElement(
		Pane,
		Immutable.JoinDictionaries({
			AutomaticSize = Enum.AutomaticSize.XY,
			Layout = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Spacing = 10,
			Style = options.Style,
		}, options.frameProps),
		elements
	)
end

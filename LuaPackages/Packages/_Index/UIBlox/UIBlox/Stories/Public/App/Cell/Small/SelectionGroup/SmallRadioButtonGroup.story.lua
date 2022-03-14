local RunService = game:GetService("RunService")

local Stories = script.Parent.Parent.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)
local Gamepad = require(Packages.RoactGamepad)

local FocusContainer = require(Packages.StoryComponents.FocusContainer)
local InputManager = require(Packages.StoryComponents.InputManager)

local App = Packages.UIBlox.App
local SmallRadioButtonGroup = require(App.Cell.Small.SelectionGroup.SmallRadioButtonGroup)

local withStyle = require(Packages.UIBlox.Core.Style.withStyle)

local PADDING = 10
local ITEMS = {
	{ text = "Selection 1", key = "1" },
	{ text = "Selection 3", key = "3" },
	{ text = "Selection 2", key = "2" },
	{ text = "Disabled Cell", key = "4", isDisabled = true },
}

local SmallRadioButtonGroupStory = Roact.PureComponent:extend("SmallRadioButtonGroupStory")

function SmallRadioButtonGroupStory:init()
	self.state = {
		selectedValue = "1",
	}

	self.setSelectedValue = function(value)
		if value == self.state.selectedValue then
			return
		end

		self:setState({
			selectedValue = value,
		})
	end
end

function SmallRadioButtonGroupStory:render()
	local selectedText = ""

	for _, item in ipairs(ITEMS) do
		if item.key == self.state.selectedValue then
			selectedText = item.text
		end
	end

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement("Frame", {
			Size = UDim2.fromOffset(250, 250),
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, PADDING),
			}),
			InputManager = Gamepad.withFocusController(function(focusController)
				return Roact.createElement(InputManager, {
					focusController = focusController,
				})
			end),
			Container = Roact.createElement(Gamepad.Focusable.Frame, {
				Size = UDim2.new(1, 0, 0, 224),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				BackgroundColor3 = theme[self.props.backgroundTheme].Color,
				NextSelectionDown = self.props.NextSelectionDown,
				NextSelectionUp = self.props.NextSelectionUp,
				[Roact.Ref] = self.props[Roact.Ref],
			}, {
				SmallRadioButtonGroup = Roact.createElement(SmallRadioButtonGroup, {
					onActivated = self.setSelectedValue,
					items = ITEMS,
					selectedValue = self.state.selectedValue,
					layoutOrder = 1,
					NextSelectionDown = self.props.NextSelectionDown,
					NextSelectionUp = self.props.NextSelectionUp,
				}),
			}),
			SelectedText = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, 20),
				Font = Enum.Font.Gotham,
				TextSize = 24,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = selectedText .. " is selected",
				LayoutOrder = 2,
			}),
		})
	end)
end

local GamepadContainer = Roact.PureComponent:extend("GamepadContainer")

function GamepadContainer:init()
	self.refs = Gamepad.createRefCache()
end

function GamepadContainer:render()
	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		CanvasSize = UDim2.new(1, 0, 0, 850),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		Group1 = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 400),
			BorderSizePixel = 0,
			LayoutOrder = 1,
			BackgroundTransparency = 1,
		}, {
			BackgroundDefault = Roact.createElement(SmallRadioButtonGroupStory, {
				backgroundTheme = "BackgroundDefault",
				[Roact.Ref] = self.refs.group1,
				NextSelectionDown = self.refs.group2,
			}),
		}),
		Group2 = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 400),
			BorderSizePixel = 0,
			LayoutOrder = 2,
			BackgroundTransparency = 1,
		}, {
			BackgroundUITheme = Roact.createElement(SmallRadioButtonGroupStory, {
				backgroundTheme = "BackgroundUIDefault",
				[Roact.Ref] = self.refs.group2,
				NextSelectionUp = self.refs.group1,
			}),
		}),
	})
end

local function wrapStoryForGamepad(story)
	if not RunService:IsRunMode() then
		return story
	end

	return Roact.createElement(FocusContainer, {}, {
		GamepadStories = story,
	})
end

return {
	stories = {
		{
			name = "SmallRadioButtonGroup (BackgroundUITheme)",
			summary = "Cell.Small.SelectionGroup.SmallRadioButtonGroup",
			story = function(props)
				return wrapStoryForGamepad(Roact.createElement(SmallRadioButtonGroupStory, {
					backgroundTheme = "BackgroundUIDefault",
				}))
			end,
		},
		{
			name = "SmallRadioButtonGroup (BackgroundDefault theme)",
			summary = "Cell.Small.SelectionGroup.SmallRadioButtonGroup",
			story = wrapStoryForGamepad(Roact.createElement(SmallRadioButtonGroupStory, {
				backgroundTheme = "BackgroundDefault",
			})),
		},
	},
}

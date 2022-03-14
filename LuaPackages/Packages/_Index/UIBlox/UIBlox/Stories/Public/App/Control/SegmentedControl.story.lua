local Stories = script.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)
local FocusContainer = require(Packages.StoryComponents.FocusContainer)
local InputManager = require(Packages.StoryComponents.InputManager)

local App = Packages.UIBlox.App
local SegmentedControl = require(App.Control.SegmentedControl)

local SegmentedControlComponent = Roact.PureComponent:extend("SegmentedControlComponent")

function SegmentedControlComponent:render()
	return Roact.createElement(RoactGamepad.Focusable.Frame, {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, {
		InputManager = RoactGamepad.withFocusController(function(focusController)
			self.focusController = focusController
			return Roact.createElement(InputManager, {
				focusController = focusController,
			})
		end),
		Overview = Roact.createElement("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			CanvasSize = UDim2.new(1, 0, 0, 1900),
			BackgroundTransparency = 1,
			ClipsDescendants = false,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 20),
			}),

			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			}),
			ADescription = Roact.createElement("TextLabel", {
				Text = "Segmented controls are used either to manipulate content shown "
					.. "or to select options in a form. It follows an exclusive or “either/or” "
					.. "pattern. When used to toggle between two or three content sections within "
					.. "the same space on screen, only one section can be shown at a time.\n\nBased "
					.. "on usage, there should be a default selection. The default selection is always "
					.. "the first option in a segmented control. The text should be concise and specific. "
					.. "Titles have a max of two words.",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(189 / 255, 190 / 255, 190 / 255),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 170),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),

			BATitle = Roact.createElement("TextLabel", {
				Text = "Two Segments",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 24,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),

			BBTitle = Roact.createElement("TextLabel", {
				Text = "Minimun Width:",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			BCSegmentedControl1 = Roact.createElement(SegmentedControl, {
				tabs = {
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "First",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Second",
					},
				},
				width = UDim.new(0, 0),
			}),

			BDTitle = Roact.createElement("TextLabel", {
				Text = "Maxmun Width:",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			BESegmentedControl2 = Roact.createElement(SegmentedControl, {
				tabs = {
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "First",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Second",
					},
				},
				width = UDim.new(0, 10000),
			}),

			CATitle = Roact.createElement("TextLabel", {
				Text = "Three Segments",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 24,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			CBTitle = Roact.createElement("TextLabel", {
				Text = "Minimun Width:",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			CCSegmentedControl3 = Roact.createElement(SegmentedControl, {
				tabs = {
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "First",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Second",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Third",
					},
				},
				width = UDim.new(0, 0),
			}),

			CDTitle = Roact.createElement("TextLabel", {
				Text = "Maxmun Width:",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			CESegmentedControl4 = Roact.createElement(SegmentedControl, {
				tabs = {
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "First",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Second",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Third",
					},
				},
				width = UDim.new(0, 10000),
			}),

			DATitle = Roact.createElement("TextLabel", {
				Text = "Four Segments",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 24,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			DBTitle = Roact.createElement("TextLabel", {
				Text = "Minimun Width:",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			DCSegmentedControl5 = Roact.createElement(SegmentedControl, {
				tabs = {
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "First",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Second",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Third",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Fourth",
					},
				},
				width = UDim.new(0, 0),
			}),

			DDTitle = Roact.createElement("TextLabel", {
				Text = "Maxmun Width:",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			DESegmentedControl6 = Roact.createElement(SegmentedControl, {
				tabs = {
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "First",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Second",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Third",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Fourth",
					},
				},
				width = UDim.new(0, 10000),
			}),

			EATitle = Roact.createElement("TextLabel", {
				Text = "Disabled",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 24,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			EBTitle = Roact.createElement("TextLabel", {
				Text = "All three options disabled",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			ECSegmentedControl7 = Roact.createElement(SegmentedControl, {
				tabs = {
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "First",
						isDisabled = true,
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Second",
						isDisabled = true,
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Third",
						isDisabled = true,
					},
				},
				width = UDim.new(0, 0),
			}),

			EDTitle = Roact.createElement("TextLabel", {
				Text = "Only third option disabled",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.fromOffset(640, 36),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			EESegmentedControl8 = Roact.createElement(SegmentedControl, {
				tabs = {
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "First",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Second",
					},
					{
						onActivated = function(tab)
							print(tab.tabName)
						end,
						tabName = "Third",
						isDisabled = true,
					},
				},
				width = UDim.new(0, 10000),
			}),
		}),
	})
end

return Roact.createElement(FocusContainer, {}, {
	Story = Roact.createElement(SegmentedControlComponent),
})

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Pane = require(Framework.UI.Components.Pane)
local HoverArea = require(Framework.UI.Components.HoverArea)
local Image = require(Framework.UI.Components.Image)

local ui = require(Framework.Style.ComponentSymbols)

local ThemeSwitcher = require(Framework.Style.ThemeSwitcher)

local BaseTheme = require(Framework.Style.Themes.BaseTheme)
local StyleModifier = require(Framework.Util.StyleModifier)
local StyleKey = require(Framework.Style.StyleKey)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local theme = ThemeSwitcher.new()
theme:extend({
	[ui.Image] = join(BaseTheme[ui.Image], {
		["&Settings"] = {
			Image = "rbxasset://textures/AnimationEditor/btn_manage.png",
			Color = StyleKey.MainText,
			Size = UDim2.fromOffset(24, 24),
		},

		["&SettingsPrimary"] = {
			Color = StyleKey.DialogMainButtonText,
		},
	}),
})

local function printClicked()
	print("Clicked")
end

local ButtonStory = {
	controls = {
		isDisabled = false,
	},
	stories = {
		-- The default Studio button
		Round = function(props)
			return ContextServices.provide({ theme }, {
				Child = Roact.createElement(Button, {
					Style = "Round",
					Text = "Cancel",
					StyleModifier = if props.controls.isDisabled then StyleModifier.Disabled else nil,
					Size = UDim2.fromOffset(120, 32),
					LayoutOrder = 2,
					OnClick = printClicked,
				}, {
					-- Adding a HoverArea as a child allows the cursor to change
					Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
				}),
			})
		end,
		-- Subtle button
		RoundSubtle = function(props)
			return ContextServices.provide({ theme }, {
				Child = Roact.createElement(Button, {
					Style = "RoundSubtle",
					Text = "Save",
					StyleModifier = if props.controls.isDisabled then StyleModifier.Disabled else nil,
					Size = UDim2.fromOffset(120, 32),
					LayoutOrder = 3,
					OnClick = printClicked,
				}, {
					Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
				}),
			})
		end,
		-- The default Studio primary button
		RoundPrimary = function(props)
			return ContextServices.provide({ theme }, {
				Child = Roact.createElement(Button, {
					Style = "RoundPrimary",
					Text = "Save",
					StyleModifier = if props.controls.isDisabled then StyleModifier.Disabled else nil,
					Size = UDim2.fromOffset(120, 32),
					LayoutOrder = 3,
					OnClick = printClicked,
				}, {
					Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
				}),
			})
		end,
		-- Buttons can be made of images only, with no text
		-- Using Decorations we can handle many use cases
		CloseButton = function(props)
			return ContextServices.provide({ theme }, {
				Child = Roact.createElement(Button, {
					Style = "Close",
					StyleModifier = if props.controls.isDisabled then StyleModifier.Disabled else nil,
					Size = UDim2.fromOffset(22, 22),
					LayoutOrder = 1,
					OnClick = printClicked,
				}),
			})
		end,
		-- If special appearance logic is needed, children will render
		-- above the button's background. Doing this, we can
		-- easily make many kinds of buttons with images inside.
		RoundPrimaryWithImage = function(props)
			return ContextServices.provide({ theme }, {
				Child = Roact.createElement(Button, {
					Style = "Round",
					StyleModifier = if props.controls.isDisabled then StyleModifier.Disabled else nil,
					Size = UDim2.fromOffset(24, 24),
					LayoutOrder = 3,
					OnClick = printClicked,
				}, {
					Settings = Roact.createElement(Image, {
						Style = "Settings",
					}),
				}),
			})
		end,
		-- A more complicated button which looks like a Primary
		-- Studio button but has both an image and text inside.
		RoundWithImage = function(props)
			return ContextServices.provide({ theme }, {
				Child = Roact.createElement(Button, {
					Style = "RoundPrimary",
					StyleModifier = if props.controls.isDisabled then StyleModifier.Disabled else nil,
					Size = UDim2.fromOffset(120, 32),
					LayoutOrder = 4,
					OnClick = printClicked,
				}, {
					Pane = Roact.createElement(Pane, {
						Layout = Enum.FillDirection.Horizontal,
						Padding = {
							Left = 10,
							Right = 5,
						},
					}, {
						Settings = Roact.createElement(Image, {
							Style = "Settings",
							LayoutOrder = 1,
						}),

						Text = Roact.createElement("TextLabel", {
							LayoutOrder = 2,
							Text = "Settings",
							BackgroundTransparency = 1,
							Size = UDim2.fromScale(1, 1),
							TextXAlignment = Enum.TextXAlignment.Left,
							Font = Enum.Font.SourceSans,
							TextSize = 18,
							TextColor3 = Color3.new(1, 1, 1),
						}),
					}),
				}),
			})
		end,
	},
}

ButtonStory.stories.RoundWithIcon = function(props)
	return ContextServices.provide({ theme }, {
		Child = Roact.createElement(Button, {
			Icon = "rbxasset://textures/AnimationEditor/btn_manage.png",
			Style = "Round",
			StyleModifier = if props.controls.isDisabled then StyleModifier.Disabled else nil,
			Size = UDim2.fromOffset(24, 24),
			LayoutOrder = 3,
			OnClick = printClicked,
			Text = "Settings",
		}),
	})
end

return ButtonStory

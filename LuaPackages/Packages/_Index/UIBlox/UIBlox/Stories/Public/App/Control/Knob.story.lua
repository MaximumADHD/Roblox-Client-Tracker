local Stories = script.Parent.Parent.Parent.Parent
local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)
local FocusContainer = require(Packages.StoryComponents.FocusContainer)
local InputManager = require(Packages.StoryComponents.InputManager)

local LightTheme = require(Packages.UIBlox.App.Style.Themes.LightTheme)
local DarkTheme = require(Packages.UIBlox.App.Style.Themes.DarkTheme)

local App = Packages.UIBlox.App
local Knob = require(App.Control.Knob.Knob)

local AppStyleProvider = require(App.Style.AppStyleProvider)
local StyleConstants = require(App.Style.Constants)
local LIGHT_THEME = StyleConstants.ThemeName.Light
local DARK_THEME = StyleConstants.ThemeName.Dark
local DEFAULT_FONT = StyleConstants.FontName.Gotham

local KnobOverviewComponent = Roact.Component:extend("KnobOverviewComponent")

function KnobOverviewComponent:init()
	self.knobRefs = RoactGamepad.createRefCache()
end

function KnobOverviewComponent:render()
	return Roact.createElement(RoactGamepad.Focusable["ScrollingFrame"], {
		Size = UDim2.new(1, 0, 0, 500),
		CanvasSize = UDim2.new(1, -24, 0, 960),
		BackgroundTransparency = 1,
		ClipsDescendants = false,
	}, {
		InputManager = RoactGamepad.withFocusController(function(focusController)
			return Roact.createElement(InputManager, {
				focusController = focusController,
			})
		end),
		Layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			FillDirection = Enum.FillDirection.Vertical,
		}),
		DarkFrame = Roact.createElement("Frame", {
			BackgroundTransparency = DarkTheme.BackgroundDefault.Transparency,
			BackgroundColor3 = DarkTheme.BackgroundDefault.Color,
			Size = UDim2.new(1, 0, 0, 480),
		}, {
			Paddomg = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 53),
				PaddingTop = UDim.new(0, 85),
			}),
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 32),
			}),
			ADescription = Roact.createElement("TextLabel", {
				Text = "Knob is a subcomponent used for Toggles, Sliders, and Radar.",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(255 / 255, 255 / 255, 255 / 255),
				TextSize = 12,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 0, 20),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			BDescription = Roact.createElement("TextLabel", {
				Text = "Dark Theme",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(255 / 255, 255 / 255, 255 / 255),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 0, 28),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			KnobDFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 28),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				Description = Roact.createElement("TextLabel", {
					Text = "Contextual Knob",
					Font = Enum.Font.Gotham,
					TextColor3 = Color3.new(255 / 255, 255 / 255, 255 / 255),
					TextSize = 16,
					TextWrapped = true,
					Size = UDim2.new(0, 219, 0, 28),
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
				}),
				Knob = Roact.createElement(AppStyleProvider, {
					style = {
						themeName = DARK_THEME,
						fontName = DEFAULT_FONT,
					},
				}, {
					Knob = Roact.createElement(Knob.ContextualKnob, {
						onActivated = print,
						[Roact.Ref] = self.knobRefs[3],
						NextSelectionUp = self.knobRefs[2],
						NextSelectionDown = self.knobRefs[4],
					}),
				}),
			}),

			KnobEFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 28),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				Description = Roact.createElement("TextLabel", {
					Text = "System Knob",
					Font = Enum.Font.Gotham,
					TextColor3 = Color3.new(255 / 255, 255 / 255, 255 / 255),
					TextSize = 16,
					TextWrapped = true,
					Size = UDim2.new(0, 219, 0, 28),
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
				}),
				Knob = Roact.createElement(AppStyleProvider, {
					style = {
						themeName = DARK_THEME,
						fontName = DEFAULT_FONT,
					},
				}, {
					Knob = Roact.createElement(Knob.SystemKnob, {
						onActivated = print,
						[Roact.Ref] = self.knobRefs[4],
						NextSelectionUp = self.knobRefs[3],
						NextSelectionDown = self.knobRefs[5],
					}),
				}),
			}),

			KnobFFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 28),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				Description = Roact.createElement("TextLabel", {
					Text = "Disabled",
					Font = Enum.Font.Gotham,
					TextColor3 = Color3.new(255 / 255, 255 / 255, 255 / 255),
					TextSize = 16,
					TextWrapped = true,
					Size = UDim2.new(0, 219, 0, 28),
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
				}),
				KnobF = Roact.createElement(AppStyleProvider, {
					style = {
						themeName = DARK_THEME,
						fontName = DEFAULT_FONT,
					},
				}, {
					Knob = Roact.createElement(Knob.SystemKnob, {
						onActivated = print,
						isDisabled = true,
						[Roact.Ref] = self.knobRefs[5],
						NextSelectionUp = self.knobRefs[4],
					}),
				}),
			}),
		}),
		LightFrame = Roact.createElement("Frame", {
			BackgroundTransparency = LightTheme.BackgroundDefault.Transparency,
			BackgroundColor3 = LightTheme.BackgroundDefault.Color,
			Size = UDim2.new(1, 0, 0, 480),
		}, {
			Paddomg = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 53),
				PaddingTop = UDim.new(0, 85),
			}),
			Layout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 32),
			}),
			BDescription = Roact.createElement("TextLabel", {
				Text = "Light Theme",
				Font = Enum.Font.Gotham,
				TextColor3 = Color3.new(101 / 255, 102 / 255, 104 / 255),
				TextSize = 18,
				TextWrapped = true,
				Size = UDim2.new(1, 0, 0, 28),
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
			}),
			KnobDFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 28),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				Description = Roact.createElement("TextLabel", {
					Text = "Contextual Knob",
					Font = Enum.Font.Gotham,
					TextColor3 = Color3.new(101 / 255, 102 / 255, 104 / 255),
					TextSize = 16,
					TextWrapped = true,
					Size = UDim2.new(0, 219, 0, 28),
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
				}),
				Knob = Roact.createElement(AppStyleProvider, {
					style = {
						themeName = LIGHT_THEME,
						fontName = DEFAULT_FONT,
					},
				}, {
					Knob = Roact.createElement(Knob.ContextualKnob, {
						onActivated = print,
						[Roact.Ref] = self.knobRefs[3],
						NextSelectionUp = self.knobRefs[2],
						NextSelectionDown = self.knobRefs[4],
					}),
				}),
			}),

			KnobEFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 28),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				Description = Roact.createElement("TextLabel", {
					Text = "System Knob",
					Font = Enum.Font.Gotham,
					TextColor3 = Color3.new(101 / 255, 102 / 255, 104 / 255),
					TextSize = 16,
					TextWrapped = true,
					Size = UDim2.new(0, 219, 0, 28),
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
				}),
				Knob = Roact.createElement(AppStyleProvider, {
					style = {
						themeName = LIGHT_THEME,
						fontName = DEFAULT_FONT,
					},
				}, {
					Knob = Roact.createElement(Knob.SystemKnob, {
						onActivated = print,
						[Roact.Ref] = self.knobRefs[4],
						NextSelectionUp = self.knobRefs[3],
						NextSelectionDown = self.knobRefs[5],
					}),
				}),
			}),

			KnobFFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 28),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				Description = Roact.createElement("TextLabel", {
					Text = "Disabled",
					Font = Enum.Font.Gotham,
					TextColor3 = Color3.new(101 / 255, 102 / 255, 104 / 255),
					TextSize = 16,
					TextWrapped = true,
					Size = UDim2.new(0, 219, 0, 28),
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
				}),
				KnobF = Roact.createElement(AppStyleProvider, {
					style = {
						themeName = LIGHT_THEME,
						fontName = DEFAULT_FONT,
					},
				}, {
					Knob = Roact.createElement(Knob.SystemKnob, {
						onActivated = print,
						isDisabled = true,
						[Roact.Ref] = self.knobRefs[5],
						NextSelectionUp = self.knobRefs[4],
					}),
				}),
			}),
		}),
	})
end

return Roact.createElement(FocusContainer, {}, {
	Story = Roact.createElement(KnobOverviewComponent, {}),
})

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local UILibrary = require(Plugin.UILibrary)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local RadioButton = require(Plugin.Src.Components.RadioButton)
local TitledFrame = UILibrary.Component.TitledFrame
local PlayabilityPublishHint = require(Plugin.Src.Components.PlayabilityPublishHint)

local PlayabilityWidget = Roact.PureComponent:extend("PlayabilityWidget")

function PlayabilityWidget:render()
	return withTheme(function(theme)
		return withLocalization(function(localized)
			local isGroupGame = self.props.IsGroupGame
			local buttons
			if isGroupGame then
				buttons = {
					{
						Id = true,
						Title = localized.Playability.Public.Title,
						Description = localized.Playability.Public.Description,
					}, {
						Id = false,
						Title = localized.Playability.Private.Title,
						Description = localized.Playability.Private.Description,
					},
				}
			else
				buttons = {
					{
						Id = true,
						Title = localized.Playability.Public.Title,
						Description = localized.Playability.Public.Description,
					}, {
						Id = "Friends",
						Title = self.props.Group and localized.Playability.Group.Title or localized.Playability.Friends.Title,
						Description = self.props.Group and localized.Playability.Group.Description({group = self.props.Group})
							or localized.Playability.Friends.Description,
					}, {
						Id = false,
						Title = localized.Playability.Private.Title,
						Description = localized.Playability.Private.Description,
					},
				}
			end

			local selected
			if self.props.Selected ~= nil then
				selected = self.props.Selected
			else
				selected = buttons[1].id
			end

			local numButtons = #buttons

			local children = {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, DEPRECATED_Constants.RADIO_BUTTON_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})
			}

			table.insert(children, Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.RADIO_BUTTON_SIZE + 5),
				TextTransparency = self.props.Enabled and 0 or 0.5,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Text = localized.Playability.Header,
				LayoutOrder = 0,
			})))

			table.insert(children,not self.props.Enabled and Roact.createElement(PlayabilityPublishHint, Cryo.Dictionary.join(theme.fontStyle.Smaller, {
				Mouse = getMouse(self):getNativeMouse(),
				LayoutOrder = 1,
			})))

			for i, button in ipairs(buttons) do
				table.insert(children, Roact.createElement(RadioButton, {
					Title = button.Title,
					Id = button.Id,
					Description = button.Description,
					Selected = selected == buttons[i].Id,
					Index = i,
					Enabled = self.props.Enabled,
					LayoutOrder = 10 + i,
					OnClicked = function()
						self.props.SelectionChanged(button)
					end,
				}))
			end


			local maxHeight = numButtons * DEPRECATED_Constants.RADIO_BUTTON_SIZE * 2
				+ numButtons * DEPRECATED_Constants.RADIO_BUTTON_PADDING
				+ (localized.Playability.Header and DEPRECATED_Constants.RADIO_BUTTON_SIZE + 5 + DEPRECATED_Constants.RADIO_BUTTON_PADDING or 0)

			return Roact.createElement(TitledFrame, {
				Title = localized.Title.Playability,
				MaxHeight = maxHeight,
				LayoutOrder = self.props.LayoutOrder or 1,
				TextSize = theme.fontStyle.Title.TextSize,
			}, children)
		end)
	end)
end

return PlayabilityWidget

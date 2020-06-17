local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local RadioButton = require(Plugin.Src.Components.RadioButton)
local TitledFrame = UILibrary.Component.TitledFrame
local PlayabilityPublishHint = require(Page.Components.PlayabilityPublishHint)

local PlayabilityWidget = Roact.PureComponent:extend("PlayabilityWidget")

function PlayabilityWidget:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local isGroupGame = self.props.IsGroupGame
	local groupTitle = props.Group and localization:getText("General", "PlayabilityGroup")
		or localization:getText("General", "PlayabilityFriends")
	local groupDescription = props.Group and localization:getText("General", "PlayabilityGroupDesc", {group = props.Group})
		or localization:getText("General", "PlayabiiltyFreindsDesc")
	local buttons
	if isGroupGame then
		buttons = {
			{
				Id = true,
				Title = localization:getText("General", "PlayabilityPublic"),
				Description = localization:getText("General", "PlayabilityPublicDesc"),
			},  {
				Id = false,
				Title = localization:getText("General", "PlayabilityPrivate"),
				Description = localization:getText("General", "PlayabilityPublicDesc"),
			},
		}
	else
		buttons = {
			{
				Id = true,
				Title = localization:getText("General", "PlayabilityPublic"),
				Description = localization:getText("General", "PlayabilityPublicDesc"),
			}, {
				Id = "Friends",
				Title = groupTitle,
				Description = groupDescription,
			}, {
				Id = false,
				Title = localization:getText("General", "PlayabilityPrivate"),
				Description = localization:getText("General", "PlayabilityPublicDesc"),
			},
		}
	end

	local playabilityHeader = localization:getText("General", "PlayabilityHeader")

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
		Text = playabilityHeader,
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
		+ (playabilityHeader and DEPRECATED_Constants.RADIO_BUTTON_SIZE + 5 + DEPRECATED_Constants.RADIO_BUTTON_PADDING or 0)

	return Roact.createElement(TitledFrame, {
		Title = localization:getText("General", "TitlePlayability"),
		MaxHeight = maxHeight,
		LayoutOrder = self.props.LayoutOrder or 1,
		TextSize = theme.fontStyle.Title.TextSize,
	}, children)
end

ContextServices.mapToProps(PlayabilityWidget, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})

return PlayabilityWidget

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local RadioButton = require(Plugin.Src.Components.RadioButton)
local TitledFrame = UILibrary.Component.TitledFrame
local PlayabilityPublishHint = require(Plugin.Src.Components.PlayabilityPublishHint)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local PlayabilityWidget = Roact.PureComponent:extend("PlayabilityWidget")

function PlayabilityWidget:DEPRECATED_render()
	return withTheme(function(theme)
		return withLocalization(function(localized)
			local isGroupGame = self.props.IsGroupGame

			local props = self.props

			local groupTitle
			local groupDescription
			if FFlagStudioConvertGameSettingsToDevFramework then
				groupTitle = props.Group and localized:getText("General", "PlayabilityGroup") or localized:getText("General", "PlayabilityFriends")
				groupDescription = props.Group and localized:getText("General", "PlayabilityGroupDesc", {group = props.Group}) or localized:getText("General", "PlayabiiltyFreindsDesc")
			else
				groupTitle = props.Group and localized.Playability.Group.Title or localized.Playability.Friends.Title
				groupDescription = props.Group and localized.Playability.Group.Description({group = props.Group})
				or localized.Playability.Friends.Description
			end

			local buttons
			if isGroupGame then
				buttons = {
					{
						Id = true,
						Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "PlayabilityPublic") or localized.Playability.Public.Title,
						Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "PlayabilityPublicDesc") or localized.Playability.Public.Description,
					},  {
						Id = false,
						Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "PlayabilityPrivate") or localized.Playability.Private.Title,
						Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "PlayabilityPublicDesc") or localized.Playability.Private.Description,
					},
				}
			else
				buttons = {
					{
						Id = true,
						Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "PlayabilityPublic") or localized.Playability.Public.Title,
						Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "PlayabilityPublicDesc") or localized.Playability.Public.Description,
					}, {
						Id = "Friends",
						Title = groupTitle,
						Description = groupDescription,
					}, {
						Id = false,
						Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "PlayabilityPrivate") or localized.Playability.Private.Title,
						Description = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "PlayabilityPublicDesc") or localized.Playability.Private.Description,
					},
				}
			end

			local playabilityHeader = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "PlayabilityHeader") or localized.Playability.Header

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
				Title = FFlagStudioConvertGameSettingsToDevFramework and localized:getText("General", "TitlePlayability") or localized.Title.Playability,
				MaxHeight = maxHeight,
				LayoutOrder = self.props.LayoutOrder or 1,
				TextSize = theme.fontStyle.Title.TextSize,
			}, children)
		end)
	end)
end

function PlayabilityWidget:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local isGroupGame = self.props.IsGroupGame
	local groupTitle = props.Group and localization:getText("General", "PlayabilityGroup") or localization:getText("General", "PlayabilityFriends")
	local groupDescription = props.Group and localization:getText("General", "PlayabilityGroupDesc", {group = props.Group}) or localization:getText("General", "PlayabiiltyFreindsDesc")
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

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(PlayabilityWidget, {
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
	})
end

return PlayabilityWidget

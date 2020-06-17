local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)
local StudioWidgetPartialHyperlink = UILibrary.Studio.PartialHyperlink

local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local PlayabilityPublishHint = Roact.PureComponent:extend("PlayabilityPublishHint")

function PlayabilityPublishHint:DEPRECATED_render()

	return withTheme(function(theme)
		return withLocalization(function(localized)
			local hyperlinkText = localized.PublishingIsRequired.PublishTheGameToRoblox
			local nonHyperlinkText = localized.PublishingIsRequired.ActivatePlayability

			return Roact.createElement(StudioWidgetPartialHyperlink, {
				HyperLinkText = hyperlinkText,
				NonHyperLinkText = nonHyperlinkText,
				Theme = theme,
				Mouse = self.props.Mouse,
				OnClick = function()
					StudioService:ShowPublishToRoblox()
				end,
			})
		end)
	end)
end

function PlayabilityPublishHint:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end
	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local hyperlinkText = localization:getText("General", "PublishTheGameToRoblox")
	local nonHyperlinkText = localization:getText("DraftGames", "PublishRequiredToActivatePlayability")

	return Roact.createElement(StudioWidgetPartialHyperlink, {
		HyperLinkText = hyperlinkText,
		NonHyperLinkText = nonHyperlinkText,
		Theme = theme,
		Mouse = self.props.Mouse,
		OnClick = function()
			StudioService:ShowPublishToRoblox()
		end,
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(PlayabilityPublishHint, {
		Theme = ContextServices.Theme,
		Localization = ContextServices.Localization,
	})
end

return PlayabilityPublishHint
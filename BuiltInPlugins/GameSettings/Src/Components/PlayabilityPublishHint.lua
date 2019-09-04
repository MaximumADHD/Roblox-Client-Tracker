local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Roact = require(Plugin.Roact)

local UILibrary = require(Plugin.UILibrary)
local StudioWidgetPartialHyperlink = UILibrary.Studio.PartialHyperlink

local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local PlayabilityPublishHint = Roact.PureComponent:extend("PlayabilityPublishHint")

function PlayabilityPublishHint:render()

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

return PlayabilityPublishHint
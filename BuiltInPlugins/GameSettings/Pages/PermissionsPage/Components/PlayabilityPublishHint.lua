local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)
local StudioWidgetPartialHyperlink = UILibrary.Studio.PartialHyperlink

local PlayabilityPublishHint = Roact.PureComponent:extend("PlayabilityPublishHint")

function PlayabilityPublishHint:render()
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

ContextServices.mapToProps(PlayabilityPublishHint, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})

return PlayabilityPublishHint
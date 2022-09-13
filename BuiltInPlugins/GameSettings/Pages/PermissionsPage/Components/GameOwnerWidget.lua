local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane

local UserCollaboratorItem = require(Page.Components.UserCollaboratorItem)
local GroupCollaboratorItem = require(Page.Components.GroupCollaboratorItem)

local GameOwnerWidget = Roact.PureComponent:extend("GameOwnerWidget")

function GameOwnerWidget:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local writable = props.Writable

	local ownerType = props.OwnerType
	local ownerId = props.OwnerId

	local theme = props.Stylizer
	local localization = props.Localization

	local children = {
		Title = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
			LayoutOrder = 0,

			Text = localization:getText("General", "TitleGameOwner"),
			TextXAlignment = Enum.TextXAlignment.Left,

			BackgroundTransparency = 1,
		})),

		UserOwner = (ownerType == Enum.CreatorType.User) and Roact.createElement(UserCollaboratorItem, {
			LayoutOrder = 1,

			Id = ownerId,
			Writable = writable,
		}),

		GroupOwner = (ownerType == Enum.CreatorType.Group) and Roact.createElement(GroupCollaboratorItem, {
			LayoutOrder = 1,

			Id = ownerId,
			Writable = writable,
		})
	}
	
	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		LayoutOrder = layoutOrder,
		Layout = Enum.FillDirection.Vertical,
		Spacing = UDim.new(0, 32),
	}, children)
end

GameOwnerWidget = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(GameOwnerWidget)

GameOwnerWidget = RoactRodux.connect(
	function(state, props)
		return {
			OwnerId = state.GameOwnerMetadata.creatorId,
			OwnerType = state.GameOwnerMetadata.creatorType,
		}
	end
)(GameOwnerWidget)

return GameOwnerWidget

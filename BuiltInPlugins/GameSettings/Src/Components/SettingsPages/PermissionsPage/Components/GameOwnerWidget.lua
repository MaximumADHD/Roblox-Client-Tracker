local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent

local UserCollaboratorItem = require(Page.Components.UserCollaboratorItem)
local GroupCollaboratorItem = require(Page.Components.GroupCollaboratorItem)

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
})

local GameOwnerWidget = Roact.PureComponent:extend("GameOwnerWidget")

function GameOwnerWidget:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local writable = props.Writable

	local ownerType = props.OwnerType
	local ownerId = props.OwnerId

	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	return Roact.createElement(FitToContent, {
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
	}, {
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
	})
end

ContextServices.mapToProps(GameOwnerWidget, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})

GameOwnerWidget = RoactRodux.connect(
	function(state, props)
		return {
			OwnerId = state.GameOwnerMetadata.creatorId,
			OwnerType = state.GameOwnerMetadata.creatorType,
		}
	end
)(GameOwnerWidget)

return GameOwnerWidget
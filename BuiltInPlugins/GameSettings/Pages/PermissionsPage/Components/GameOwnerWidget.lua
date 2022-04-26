local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)
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

	local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")
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


GameOwnerWidget = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
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

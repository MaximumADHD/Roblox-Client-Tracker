local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)

local createFitToContent = UILibrary.Component.createFitToContent

local UserCollaboratorItem = require(Page.Components.UserCollaboratorItem)
local Separator = require(Plugin.Src.Components.Separator)

local GetUserCollaborators = require(Page.Selectors.GetUserCollaborators)

local FitToContentWidget = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
})

local FitToContentList = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
})

local CollaboratorsWidget = Roact.PureComponent:extend("CollaboratorsWidget")

function CollaboratorsWidget:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local writable = props.Writable

	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	local userCollaborators = props.UserCollaborators

	local userChildren = {}
	for i, userId in pairs(userCollaborators) do
		userChildren["Separator"..i] = Roact.createElement(Separator, {
			LayoutOrder = i*2 - 1,
			Size = UDim2.new(1, 0, 0, 1),
		})

		userChildren["User"..userId] = Roact.createElement(UserCollaboratorItem, {
			LayoutOrder = i*2,
			Writable = writable,

			Id = userId,
		})
	end

	userChildren.LastSeparator = Roact.createElement(Separator, {
		LayoutOrder = #userCollaborators*2 + 1,
		Size = UDim2.new(1, 0, 0, 1),
	})

	return Roact.createElement(FitToContentWidget, {
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
	}, {
		UsersTitle = #userCollaborators > 0 and Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
			LayoutOrder = 0,

			Text = localization:getText("AccessPermissions", "UsersCollaboratorType"),
			TextXAlignment = Enum.TextXAlignment.Left,

			Visible = #userCollaborators > 0,
			BackgroundTransparency = 1,
		})),

		Users = #userCollaborators > 0 and Roact.createElement(FitToContentList, {
			LayoutOrder = 1,
			BackgroundTransparency = 1,
		}, userChildren),
	})
end

ContextServices.mapToProps(CollaboratorsWidget, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})

CollaboratorsWidget = RoactRodux.connect(
	function(state, props)
		return {
			UserCollaborators = GetUserCollaborators(state),
		}
	end
)(CollaboratorsWidget)

return CollaboratorsWidget
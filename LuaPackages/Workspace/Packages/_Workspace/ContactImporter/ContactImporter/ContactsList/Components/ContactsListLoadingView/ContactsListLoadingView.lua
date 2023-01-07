local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization

local FullPageModal = UIBlox.App.Dialog.Modal.FullPageModal
local withStyle = UIBlox.Style.withStyle

local TextKeys = require(ContactImporter.Common.TextKeys)
local ContactsGlimmer = require(ContactImporter.ContactsList.Components.ContactsGlimmer)

local ContactsListLoadingView = Roact.PureComponent:extend("ContactsListLoadingView")

local MIDDLE_CONTENT_PADDING_TOP: number = 24
local MIDDLE_CONTENT_PADDING_BOTTOM: number = 36
local MIDDLE_CONTENT_SPACING: number = 12

export type Props = {
	screenSize: Vector2,
}

ContactsListLoadingView.validateProps = t.strictInterface({
	screenSize = t.Vector2,
})

function ContactsListLoadingView:render()
	local props: Props = self.props
	local screenSize = props.screenSize
	return withLocalization({
		titleText = TextKeys.CONTACTS_LIST_TITLE,
	})(function(localizedStrings)
		return withStyle(function(style)
			return Roact.createElement(FullPageModal, {
				title = localizedStrings.titleText,
				screenSize = screenSize,
			}, {
				LoadingViewContainer = Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, MIDDLE_CONTENT_SPACING),
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
					}),
					UIPadding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, MIDDLE_CONTENT_PADDING_TOP),
						PaddingBottom = UDim.new(0, MIDDLE_CONTENT_PADDING_BOTTOM),
					}),
					Glimmer1 = Roact.createElement(ContactsGlimmer, {
						layoutOrder = 1,
					}),
					Glimmer2 = Roact.createElement(ContactsGlimmer, {
						layoutOrder = 2,
					}),
					Glimmer3 = Roact.createElement(ContactsGlimmer, {
						layoutOrder = 3,
					}),
				}),
			})
		end)
	end)
end

return ContactsListLoadingView

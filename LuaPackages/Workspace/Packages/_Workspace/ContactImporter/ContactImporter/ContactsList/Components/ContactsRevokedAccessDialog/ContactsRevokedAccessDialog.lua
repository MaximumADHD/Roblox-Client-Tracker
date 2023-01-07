local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local RoactRodux = dependencies.RoactRodux

local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local withStyle = UIBlox.Style.withStyle
local TextKeys = require(ContactImporter.Common.TextKeys)
local Constants = require(ContactImporter.Common.Constants)

local BUTTON_HEIGHT: number = 48

local ContactsRevokedAccessDialog = Roact.PureComponent:extend("ContactsRevokedAccessDialog")

export type Props = {
	navigation: any,
	screenSize: Vector2,
}

ContactsRevokedAccessDialog.validateProps = t.strictInterface({
	navigation = t.table,
	screenSize = t.Vector2,
})

function ContactsRevokedAccessDialog:render()
	return withLocalization({
		titleText = TextKeys.CONTACTS_LIST_TITLE,
		revokedFlow = TextKeys.CONTACTS_REVOKED_FLOW,
		closeModalOk = TextKeys.CLOSE_MODAL_OK,
	})(function(localizedStrings)
		return withStyle(function(style)
			local props: Props = self.props

			local navigation = props.navigation
			local closeModal = navigation.getParam(Constants.CLOSE_MODAL)
			return Roact.createElement(InteractiveAlert, {
				title = localizedStrings.titleText,
				screenSize = props.screenSize,
				buttonStackInfo = {
					buttons = {
						{
							buttonType = ButtonType.Secondary,
							props = {
								onActivated = function()
									closeModal()
								end,
								text = localizedStrings.closeModalOk,
							},
						},
					},
					buttonHeight = BUTTON_HEIGHT,
					forcedFillDirection = Enum.FillDirection.Vertical,
				},
				bodyText = localizedStrings.revokedFlow,
			})
		end)
	end)
end

return RoactRodux.connect(function(state)
	return {
		screenSize = state.ScreenSize,
	}
end, nil)(ContactsRevokedAccessDialog)

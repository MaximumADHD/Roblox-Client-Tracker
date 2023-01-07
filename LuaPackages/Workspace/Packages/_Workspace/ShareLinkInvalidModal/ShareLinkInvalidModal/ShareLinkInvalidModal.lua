local Root = script.Parent
local dependencies = require(Root.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local withLocalization = dependencies.withLocalization

local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert

local ShareLinkInvalidModal = Roact.Component:extend("ShareLinkInvalidModal")

type Props = {
	closeModal: () -> (),

	-- State
	screenSize: Vector2,
}

ShareLinkInvalidModal.validateProps = t.interface({
	closeModal = t.callback,

	-- State
	screenSize = t.Vector2,
})

function ShareLinkInvalidModal:render()
	local props: Props = self.props

	return withLocalization({
		titleText = "Feature.SocialShare.Label.InvalidLinkError",
		bodyText = "Feature.SocialShare.Description.InvalidLinkError",
		buttonText = "Feature.Friends.Label.Cancel",
	})(function(localizedStrings)
		return Roact.createElement(InteractiveAlert, {
			screenSize = props.screenSize,
			title = localizedStrings.titleText,
			bodyText = localizedStrings.bodyText,
			buttonStackInfo = {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							text = localizedStrings.buttonText,
							onActivated = props.closeModal,
						},
					},
				},
			},
		})
	end)
end

return ShareLinkInvalidModal

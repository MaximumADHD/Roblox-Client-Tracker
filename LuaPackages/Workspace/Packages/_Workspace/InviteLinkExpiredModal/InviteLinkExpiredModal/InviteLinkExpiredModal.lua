--!nolint LocalShadow
local InviteLinkExpiredModal = script.Parent
local dependencies = require(InviteLinkExpiredModal.dependencies)

local Roact = dependencies.Roact
local RoduxShareLinks = dependencies.RoduxShareLinks
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local withLocalization = dependencies.withLocalization

local ExperienceInviteStatus = RoduxShareLinks.Enums.ExperienceInviteStatus
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local IconSize = UIBlox.App.Constant.IconSize
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner

local InviteLinkExpiredModal = Roact.Component:extend("InviteLinkExpiredModal")
local mapStateToProps = require(script.Parent.inviteLinkExpiredMapStateToProps)

type Props = {
	closeModal: (boolean) -> (),
	launchGame: () -> (),
	linkStatus: string,
}

type InternalProps = Props & mapStateToProps.Props

InviteLinkExpiredModal.defaultProps = {
	closeModal = function() end,
	launchGame = function() end,
}

InviteLinkExpiredModal.validateProps = t.interface({
	closeModal = t.callback,
	launchGame = t.callback,
	linkStatus = t.string,

	-- State
	experienceName = t.string,
	isLoading = t.boolean,
	screenSize = t.Vector2,
})

function InviteLinkExpiredModal:render()
	local props: InternalProps = self.props

	local titleText: string
	local bodyText: string
	if ExperienceInviteStatus.fromRawValue(props.linkStatus) == ExperienceInviteStatus.InviterNotInExperience then
		titleText = "Feature.SocialShare.Label.InviterNotHereError"
		bodyText = "Feature.SocialShare.Description.InviterNotHereError"
	else
		titleText = "Feature.SocialShare.Label.InviteExpiredError"
		bodyText = "Feature.SocialShare.Description.InviteExpiredError"
	end

	return withLocalization({
		titleText = titleText,
		bodyText = {
			bodyText,
			experienceName = props.experienceName,
		},
		confirmButtonText = "Feature.Chat.Drawer.Join",
		cancelButtonText = "Feature.Friends.Label.Cancel",
	})(function(localizedStrings)
		local renderLoading = function()
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 48),
				BackgroundTransparency = 1,
			}, {
				Spinner = Roact.createElement(LoadingSpinner, {
					anchorPoint = Vector2.new(0.5, 0.5),
					position = UDim2.fromScale(0.5, 0.5),
					size = UDim2.fromOffset(IconSize.Large, IconSize.Large),
				}),
			})
		end

		return Roact.createElement(InteractiveAlert, {
			screenSize = props.screenSize,
			title = localizedStrings.titleText,
			bodyText = if not props.isLoading then localizedStrings.bodyText else nil,
			middleContent = props.isLoading and renderLoading or nil,
			buttonStackInfo = {
				buttons = {
					{
						buttonType = nil,
						props = {
							text = localizedStrings.cancelButtonText,
							onActivated = function()
								props.closeModal(false)
							end,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							text = localizedStrings.confirmButtonText,
							onActivated = function()
								props.launchGame()
								props.closeModal(true)
							end,
						},
					},
				},
			},
		})
	end)
end

return InviteLinkExpiredModal

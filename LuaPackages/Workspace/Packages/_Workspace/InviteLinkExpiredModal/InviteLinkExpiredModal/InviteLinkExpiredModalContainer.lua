local InviteLinkExpiredModal = script:FindFirstAncestor("InviteLinkExpiredModal")
local dependencies = require(InviteLinkExpiredModal.dependencies)

local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation
local RoactRodux = dependencies.RoactRodux
local Dash = dependencies.Dash
local NetworkingGames = dependencies.NetworkingGames
local t = dependencies.t

local InviteLinkExpiredModalComponent = require(script.Parent.InviteLinkExpiredModal)
local mapStateToProps = require(script.Parent.inviteLinkExpiredMapStateToProps)

local InviteLinkExpiredModalContainer = Roact.Component:extend("InviteLinkExpiredModalContainer")

type Props = {
	navigation: any,
	closeModal: (boolean) -> (),
	launchGame: () -> (),
	universeId: string,
}

type InternalProps = Props & mapStateToProps.Props

InviteLinkExpiredModalContainer.validateProps = t.interface({
	navigation = t.table,
	closeModal = t.callback,
	launchGame = t.callback,
	universeId = t.string,
})

function InviteLinkExpiredModalContainer:init()
	self.closeModal = function(isLaunchGame: boolean)
		local props: InternalProps = self.props
		props.closeModal(isLaunchGame)
		props.navigation.pop()
	end
end

function InviteLinkExpiredModalContainer:didMount()
	if #self.props.universeId > 0 then
		self.props.getExperiencesDetails(self.props.universeId)
	end
end

function InviteLinkExpiredModalContainer:render()
	return Roact.createElement(
		InviteLinkExpiredModalComponent,
		Dash.join(self.props, {
			closeModal = self.closeModal,
		})
	)
end

local mapDispatchToProps = function(dispatch)
	return {
		getExperiencesDetails = function(universeId: string)
			return dispatch(NetworkingGames.GetExperiencesDetails.API({ universeId }))
		end,
	}
end

InviteLinkExpiredModalContainer =
	RoactRodux.connect(mapStateToProps, mapDispatchToProps)(InviteLinkExpiredModalContainer)

return RoactNavigation.withNavigation(InviteLinkExpiredModalContainer)

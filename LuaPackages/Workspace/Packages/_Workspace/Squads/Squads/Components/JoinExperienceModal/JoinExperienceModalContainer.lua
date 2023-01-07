local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)

local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation
local RoactRodux = dependencies.RoactRodux
local Dash = dependencies.Dash
local NetworkingGames = dependencies.NetworkingGames
local t = dependencies.t

local JoinExperienceModal = require(script.Parent.JoinExperienceModal)
local mapStateToProps = require(script.Parent.joinExperienceMapStateToProps)

local JoinExperienceModalContainer = Roact.Component:extend("JoinExperienceModalContainer")

type Props = {
	navigation: any,
	closeModal: (boolean) -> (),
	universeId: string,
	users: { string },
}

type InternalProps = Props & mapStateToProps.Props

JoinExperienceModalContainer.validateProps = t.interface({
	closeModal = t.callback,
	universeId = t.string,
	users = t.table,

	-- State
	experienceName = t.string,
	experienceServerSize = t.number,
	screenSize = t.Vector2,

	-- Dispatch
	getExperiencesDetails = t.callback,
	getExperienceMedia = t.callback,

	-- withNavigation
	navigation = t.table,
})

function JoinExperienceModalContainer:init()
	self.closeModal = function(isInviteAccepted: boolean)
		local props: InternalProps = self.props
		props.closeModal(isInviteAccepted)
		props.navigation.pop()
	end
end

function JoinExperienceModalContainer:didMount()
	if #self.props.universeId > 0 then
		self.props.getExperiencesDetails(self.props.universeId)
		self.props.getExperienceMedia(self.props.universeId)
	end
end

function JoinExperienceModalContainer:render()
	return Roact.createElement(
		JoinExperienceModal,
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
		getExperienceMedia = function(universeId: string)
			return dispatch(NetworkingGames.GetExperienceMedia.API(universeId))
		end,
	}
end

JoinExperienceModalContainer = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(JoinExperienceModalContainer)

return RoactNavigation.withNavigation(JoinExperienceModalContainer)

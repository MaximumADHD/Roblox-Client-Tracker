local ShareLinkInvalidModal = script:FindFirstAncestor("ShareLinkInvalidModal")
local dependencies = require(ShareLinkInvalidModal.dependencies)

local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation
local RoactRodux = dependencies.RoactRodux
local Dash = dependencies.Dash
local t = dependencies.t

local ShareLinkInvalidModalComponent = require(script.Parent.ShareLinkInvalidModal)

local ShareLinkInvalidModalContainer = Roact.Component:extend("ShareLinkInvalidModalContainer")

type Props = {
	navigation: any,
	closeModal: () -> (),
}

ShareLinkInvalidModalContainer.validateProps = t.interface({
	navigation = t.table,
	closeModal = t.callback,
})

function ShareLinkInvalidModalContainer:init()
	self.closeModal = function()
		local props: Props = self.props
		props.closeModal()
		props.navigation.pop()
	end
end

function ShareLinkInvalidModalContainer:render()
	return Roact.createElement(
		ShareLinkInvalidModalComponent,
		Dash.join(self.props, {
			closeModal = self.closeModal,
		})
	)
end

ShareLinkInvalidModalContainer = RoactRodux.connect(function(state)
	return { screenSize = state.ScreenSize }
end)(ShareLinkInvalidModalContainer)

return RoactNavigation.withNavigation(ShareLinkInvalidModalContainer)

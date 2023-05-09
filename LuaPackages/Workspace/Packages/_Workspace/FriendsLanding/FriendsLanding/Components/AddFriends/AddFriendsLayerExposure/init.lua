local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local RoactAppExperiment = dependencies.RoactAppExperiment
local getFStringSocialAddFriendsPageLayer = dependencies.getFStringSocialAddFriendsPageLayer
local getAddFriendsPagePYMKVariant = require(FriendsLanding.Utils.getAddFriendsPagePYMKVariant)

--* Component which mounts before AddFriendsContainer
--* to fire exposure event for Social.AddFriendsPage layer and enroll user into experiment
--* and render AddFriendsContainer afterwards
type ReactElement<Props, ElementType> = dependencies.ReactElement<Props, ElementType>

type Props = {
	renderChild: (layerProps: any?) -> ReactElement<any, any>,
}

local AddFriendsLayerExposure = Roact.PureComponent:extend("AddFriendsLayerExposure")

function AddFriendsLayerExposure:init()
	self.state = {
		layerExposedOnMount = false,
	}
end

function AddFriendsLayerExposure:didMount()
	self:setState({
		layerExposedOnMount = true,
	})
end

function AddFriendsLayerExposure:render()
	return if self.state.layerExposedOnMount
		then self.props.renderChild({
			shouldShowPYMKSection = self.props.shouldShowPYMKSection,
			initialRequestsRows = self.props.initialRequestsRows,
		})
		else nil
end

return RoactAppExperiment.connectUserLayer({
	getFStringSocialAddFriendsPageLayer(),
}, function(layerVariables, props)
	local socialAddFriendsPageLayer: any = layerVariables[getFStringSocialAddFriendsPageLayer()] or {}
	local shouldShowPYMKSection, initialRequestsRows = getAddFriendsPagePYMKVariant(socialAddFriendsPageLayer)
	return {
		shouldShowPYMKSection = shouldShowPYMKSection,
		initialRequestsRows = initialRequestsRows,
	}
end)(AddFriendsLayerExposure)

local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama

local mapStateToProps = require(script.Parent.userTileMapStateToProps)
local mapDispatchToProps = require(script.Parent.userTileMapDispatchToProps)
local CarouselUserTile = require(script.Parent.CarouselUserTile)
local Analytics = require(FriendsCarousel.Analytics)
local compose = dependencies.SocialLibraries.RoduxTools.compose
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)

local UserTileContainer = Roact.PureComponent:extend("UserTileContainer")

export type Props = CarouselUserTile.Props
type InternalProps = Props & mapStateToProps.Props & mapDispatchToProps.Props & {
	fireEvent: (name: any, args: any?) -> (),
	userSeen: (user: LocalTypes.User, additionalData: { absolutePosition: number }) -> (),
}

function UserTileContainer:render()
	local props: InternalProps = self.props
	return Roact.createElement(
		CarouselUserTile,
		llama.Dictionary.join(props, {
			fireEvent = llama.None,
			userSeen = llama.None,
		})
	)
end

function UserTileContainer:didMount()
	local props: InternalProps = self.props

	props.userSeen(props.user, {
		absolutePosition = props.absoluteIndex,
	})
end

return compose(
	RoactRodux.connect(mapStateToProps, mapDispatchToProps),
	Analytics.connect(function(analytics)
		return {
			fireEvent = analytics.fireEvent,
		}
	end)
)(UserTileContainer)

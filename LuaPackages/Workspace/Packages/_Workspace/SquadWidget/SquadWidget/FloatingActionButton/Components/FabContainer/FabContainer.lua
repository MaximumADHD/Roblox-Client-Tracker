local SquadWidget = script:FindFirstAncestor("SquadWidget")
local FabStatusText = require(SquadWidget.FloatingActionButton.Components.FabStatusText)
local SquadEnums = require(SquadWidget.FloatingActionButton.Common.Enums)
local Constants = require(SquadWidget.FloatingActionButton.Common.Constants)
local dependencies = require(SquadWidget.dependencies)
local React = dependencies.React
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray

local useStyle = UIBlox.Core.Style.useStyle

-- Replace once FacePile move to UIBlox
local Squads = dependencies.Squads
local FacePile = Squads.Components.FacePile

export type Props = {
	-- Users in the squad
	users: { string },
	-- State of the squad (SquadState)
	squadState: string,
	-- Non nil if state is GameInvite or GamePending
	experienceName: string | nil,
	-- Non nil if state is GameInvite
	inviter: {
		userId: string,
		name: string,
	} | nil,
	-- Non nil if state is UserJoin
	newJoinedUser: {
		id: string,
		name: string,
	} | nil,
}

-- Entry component for FAB
local FabContainer = function(props: Props)
	local style = useStyle()
	local theme = style.Theme

	local getFacePileUsers = React.useCallback(function()
		local users = {}
		if props.squadState == SquadEnums.SquadState.UserJoin.rawValue() and props.newJoinedUser then
			users = { props.newJoinedUser.id }
		else
			users = props.users
		end
		return users
	end, dependencyArray(props.squadState, props.users, props.newJoinedUser))

	local facePileUsers, setFacePileUser = React.useState(getFacePileUsers())

	React.useEffect(function()
		setFacePileUser(getFacePileUsers())
	end, dependencyArray(getFacePileUsers))

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, Constants.CONTAINER_HEIGHT),
		BackgroundTransparency = 0,
		BackgroundColor3 = theme.BackgroundUIDefault.Color,
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
	}, {
		FabStatusText = React.createElement(FabStatusText, {
			size = UDim2.new(1, -Constants.FACEPILE_WIDTH, 1, 0),
			squadState = props.squadState,
			experienceName = props.experienceName,
			inviter = props.inviter,
			joinedUser = props.newJoinedUser,
		}),
		FacePile = React.createElement(FacePile, {
			users = facePileUsers,
			avatarSize = Constants.FACEPILE_AVATAR_SIZE,
			overlapOffset = Constants.FACEPILE_OVERLAP,
			borderWidth = Constants.FACEPILE_BORDER_WIDTH,
			borderColor = theme.BackgroundUIDefault.Color,
			facePileWidth = UDim.new(0, Constants.FACEPILE_WIDTH),
			horizontalAlignment = Enum.HorizontalAlignment.Right,
		}),
		Layout = React.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Horizontal,
		}),
		Border = React.createElement("UIStroke", {
			Color = if props.squadState == SquadEnums.SquadState.Idle.rawValue()
				then Constants.CONTAINER_DEFAULT_BORDER_COLOR
				else Constants.CONTAINER_HIGHLIGHT_BORDER_COLOR,
			Thickness = Constants.CONTAINER_BORDER_SIZE,
		}),
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, Constants.CONTAINER_BORDER_RADIUS),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, Constants.CONTAINER_LAYOUT_PADDING),
			PaddingRight = UDim.new(0, Constants.CONTAINER_LAYOUT_PADDING),
			PaddingBottom = UDim.new(0, Constants.CONTAINER_LAYOUT_PADDING),
			PaddingLeft = UDim.new(0, Constants.CONTAINER_LAYOUT_PADDING),
		}),
	})
end

return FabContainer

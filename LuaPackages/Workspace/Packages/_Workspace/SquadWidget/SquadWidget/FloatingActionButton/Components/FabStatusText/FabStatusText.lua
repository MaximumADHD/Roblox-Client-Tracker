local SquadWidget = script:FindFirstAncestor("SquadWidget")
local SquadEnums = require(SquadWidget.FloatingActionButton.Common.Enums)
local Constants = require(SquadWidget.FloatingActionButton.Common.Constants)
local dependencies = require(SquadWidget.dependencies)
local React = dependencies.React
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray
local useLocalization = dependencies.Hooks.useLocalization

local useStyle = UIBlox.Core.Style.useStyle

export type Props = {
	-- Size of the status text
	size: UDim2,
	-- Enum of state for squad(SquadState)
	squadState: string,
	-- Non nil if state is GameInvite or GamePending
	experienceName: string | nil,
	-- Non nil if state is GameInvite
	inviter: {
		userId: string,
		name: string,
	} | nil,
	-- Non nil if state is UserJoin
	joinedUser: {
		id: string,
		name: string,
	} | nil,
}

-- Presenting the left panel of the squad FAB, different text will appear for
-- different state
local FabStatusText = function(props: Props)
	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local localized = useLocalization({
		letsPlayTitle = "Feature.Squads.Label.LetsPlay",
		gameInviteTitle = {
			"Feature.Squads.Label.LetsPlayWithUser",
			username = if props.inviter then props.inviter.name else "",
		},
		gamePendingTitle = "Feature.Squads.Label.PreparingExperience",
		pickAnExperienceDesc = "Feature.Squads.Action.PickAnExperience",
		joinedTheSquadDesc = "Feature.Squads.Label.JoinedTheSquad",
	})

	local getTitle = React.useCallback(function()
		local squadState = props.squadState

		local title = ""
		if squadState == SquadEnums.SquadState.Idle.rawValue() then
			title = localized.letsPlayTitle
		elseif squadState == SquadEnums.SquadState.GameInvite.rawValue() and props.inviter then
			title = localized.gameInviteTitle
		elseif squadState == SquadEnums.SquadState.GamePending.rawValue() then
			title = localized.gamePendingTitle
		elseif squadState == SquadEnums.SquadState.UserJoin.rawValue() and props.joinedUser then
			title = props.joinedUser.name
		end

		return title
	end, dependencyArray(localized, props.squadState, props.inviter, props.joinedUser))

	local getDescription = React.useCallback(function()
		local squadState = props.squadState

		local description = ""
		if squadState == SquadEnums.SquadState.Idle.rawValue() then
			description = localized.pickAnExperienceDesc
		elseif squadState == SquadEnums.SquadState.GameInvite.rawValue() and props.experienceName then
			description = props.experienceName
		elseif squadState == SquadEnums.SquadState.GamePending.rawValue() and props.experienceName then
			description = props.experienceName
		elseif squadState == SquadEnums.SquadState.UserJoin.rawValue() and props.joinedUser then
			description = localized.joinedTheSquadDesc
		end

		return description
	end, dependencyArray(localized, props.squadState, props.experienceName))

	local title, setTitle = React.useState(getTitle())
	local description, setDiscription = React.useState(getDescription())

	React.useEffect(function()
		setTitle(getTitle())
		setDiscription(getDescription())
	end, dependencyArray(getTitle, getDescription))

	return React.createElement("Frame", {
		Size = props.size,
		BackgroundTransparency = 1,
		SizeConstraint = Enum.SizeConstraint.RelativeXY,
	}, {
		Title = React.createElement("TextLabel", {
			Text = title,
			Font = font.CaptionHeader.Font,
			TextColor3 = theme.TextMuted.Color,
			TextTransparency = theme.TextMuted.Transparency,
			TextSize = Constants.TITLE_TEXT_SIZE,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(1, 0, 0, Constants.TITLE_TEXT_SIZE),
			LayoutOrder = 1,
			BackgroundTransparency = 1,
		}),
		Description = React.createElement("TextLabel", {
			Text = description,
			Font = font.Header1.Font,
			TextColor3 = theme.TextEmphasis.Color,
			TextTransparency = theme.TextEmphasis.Transparency,
			TextSize = Constants.DESCRIPTION_TEXT_SIZE,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(1, 0, 0, Constants.DESCRIPTION_TEXT_SIZE),
			LayoutOrder = 2,
			BackgroundTransparency = 1,
		}),
		Layout = React.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, Constants.STATUSTEXT_LAYOUT_PADDING),
		}),
	})
end

return FabStatusText

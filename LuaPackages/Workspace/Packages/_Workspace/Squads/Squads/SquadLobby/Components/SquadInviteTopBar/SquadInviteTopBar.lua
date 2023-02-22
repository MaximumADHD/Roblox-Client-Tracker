local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local UIBlox = dependencies.UIBlox
local useLocalization = dependencies.Hooks.useLocalization
local dependencyArray = dependencies.Hooks.dependencyArray
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local useStyle = UIBlox.Core.Style.useStyle
local Images = UIBlox.App.ImageSet.Images
local HeaderBar = UIBlox.App.Bar.HeaderBar
local TextButton = UIBlox.App.Button.TextButton
local Constants = require(Squads.SquadLobby.Common.Constants)

type Props = {
	-- Navigate back callback
	navigateBack: () -> (),
	-- Determines if add button should be disabled
	isAddButtonDisabled: boolean,
	-- Callback for add button click
	addUsers: () -> (),
}

-- Top bar for Squad Invite Page
local SquadInviteTopBar = function(props: Props)
	local isMounted = React.useRef(false)
	React.useEffect(function()
		isMounted.current = true
		return function()
			isMounted.current = false
		end
	end, {})

	local onNavigationButtonActivated = React.useCallback(function()
		if isMounted then
			props.navigateBack()
		end
	end, dependencyArray(props.navigateBack))

	local onAddButtonActivated = React.useCallback(function()
		if isMounted then
			props.addUsers()
		end
	end, dependencyArray(props.addUsers))

	local style = useStyle()
	local localizedStrings = useLocalization({
		inviteToSquadText = "Feature.Squads.Label.InviteToSquad",
		addText = "Feature.Squads.Action.Add",
	})
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		HeaderBar = Roact.createElement(HeaderBar, {
			renderLeft = function()
				return Roact.createElement("TextButton", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, Constants.TOP_BAR_ICON_SIZE, 0, Constants.TOP_BAR_ICON_SIZE),
					BackgroundTransparency = 1,
					Text = "",
					[Roact.Event.Activated] = onNavigationButtonActivated,
				}, {
					PushBackButtonImage = Roact.createElement(ImageSetLabel, {
						Size = UDim2.new(0, Constants.TOP_BAR_ICON_SIZE, 0, Constants.TOP_BAR_ICON_SIZE),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = Images[Constants.PUSH_BACK_BUTTON_IMAGE],
						ImageColor3 = style.Theme.SystemPrimaryDefault.Color,
						ImageTransparency = style.Theme.SystemPrimaryDefault.Transparency,
						BackgroundTransparency = 1,
					}),
				})
			end,
			renderCenter = function()
				return Roact.createElement("TextLabel", {
					Text = localizedStrings.inviteToSquadText,
					TextColor3 = style.Theme.TextEmphasis.Color,
					Font = style.Font.Header1.Font,
					TextSize = 20,
				})
			end,
			renderRight = function()
				return Roact.createElement(TextButton, {
					text = localizedStrings.addText,
					size = UDim2.new(1, 0, 1, 0),
					isDisabled = props.isAddButtonDisabled,
					onActivated = onAddButtonActivated,
				})
			end,
		}),
	})
end

return SquadInviteTopBar

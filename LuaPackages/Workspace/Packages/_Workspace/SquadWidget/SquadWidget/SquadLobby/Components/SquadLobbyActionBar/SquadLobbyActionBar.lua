local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)
local withLocalization = dependencies.withLocalization
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local t = dependencies.t
local ActionBar = UIBlox.App.Button.ActionBar
local LoadingStateContainer = UIBlox.App.Container.LoadingStateContainer
local RetrievalStatus = UIBlox.App.Loading.Enum.RetrievalStatus
local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton
local Images = UIBlox.App.ImageSet.Images
local IconButton = UIBlox.App.Button.IconButton
local Constants = require(SquadWidget.SquadLobby.Common.Constants)

local BUTTON_IN_BETWEEN_PADDING = 16
local BOTTOM_BAR_DEFAULT_SIZE = 100
local BOTTOM_BAR_GRADIENT_HEIGHT = 24
local CHAT_BUTTON_SIZE = Vector2.new(20, 20)
local CTA_BUTTON_SIZE = UDim2.new(1, -CHAT_BUTTON_SIZE.X - BUTTON_IN_BETWEEN_PADDING, 0, Constants.ACTION_BAR_HEIGHT)

local SquadLobbyActionBar = Roact.PureComponent:extend("SquadLobbyActionBar")

type Props = {
	actionBarLoadingStatus: string,
	numUsers: number,
}

SquadLobbyActionBar.validateProps = t.strictInterface({
	actionBarLoadingStatus = t.string,
	numUsers = t.number,
})

SquadLobbyActionBar.defaultProps = {}

local noOpt = function() end

function SquadLobbyActionBar:init()
	self.bottomBarSize, self.updateBottomBarSize = Roact.createBinding(UDim2.new(1, 0, 0, BOTTOM_BAR_DEFAULT_SIZE))

	self.onAbsoluteSizeChanged = function(size: { Y: number })
		self.updateBottomBarSize(UDim2.new(1, 0, 0, size.Y))
	end

	self.renderOnLoading = function()
		return withLocalization({
			pickAnExperienceText = "Feature.Squads.Action.PickAnExperience",
		})(function(localizedStrings)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, BUTTON_IN_BETWEEN_PADDING),
				}),
				LoadingChatButton = Roact.createElement(IconButton, {
					layoutOrder = 0,
					icon = Images[Constants.CHAT_ICON],
					size = UDim2.fromOffset(CHAT_BUTTON_SIZE.X, CHAT_BUTTON_SIZE.Y),
					isDisabled = true,
					-- TODO (COEXP-1049): Add functionality to onActivated
					onActivated = noOpt,
				}),
				LoadingCTAButton = Roact.createElement(PrimarySystemButton, {
					layoutOrder = 1,
					size = CTA_BUTTON_SIZE,
					isLoading = true,
					isDisabled = true,
					text = localizedStrings.pickAnExperienceText,
					onActivated = noOpt,
				}),
			})
		end)
	end

	self.renderOnLoaded = function(ctaText)
		return withLocalization({
			ctaText = if self.props.numUsers == 1
				then "Feature.Squads.Action.InviteFriends"
				else "Feature.Squads.Action.PickAnExperience",
		})(function(localizedStrings)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, BUTTON_IN_BETWEEN_PADDING),
				}),
				ChatButton = Roact.createElement(IconButton, {
					layoutOrder = 0,
					icon = Images[Constants.CHAT_ICON],
					size = UDim2.fromOffset(CHAT_BUTTON_SIZE.X, CHAT_BUTTON_SIZE.Y),
					-- TODO (COEXP-1049): Add functionality to onActivated
					onActivated = noOpt,
				}),
				PrimaryCTAButton = Roact.createElement(PrimarySystemButton, {
					layoutOrder = 1,
					size = CTA_BUTTON_SIZE,
					icon = if self.props.numUsers == 1
						then Images[Constants.INVITE_FRIENDS_ICON]
						else Images[Constants.PICK_AN_EXPERIENCE_ICON],
					text = localizedStrings.ctaText,
					-- TODO (COEXP-798): Add functionality to onActivated for pick an experience
					onActivated = noOpt,
				}),
			})
		end)
	end
end

function SquadLobbyActionBar:render()
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = self.bottomBarSize,
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),
			BorderSizePixel = 0,
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
			-- ZIndex of 2 as the BottomBar should always overlay whats beneath it.
			ZIndex = 2,
		}, {
			GradientFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, BOTTOM_BAR_GRADIENT_HEIGHT),
				Position = UDim2.new(0, 0, 0, -BOTTOM_BAR_GRADIENT_HEIGHT),
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
			}, {
				Gradient = Roact.createElement("UIGradient", {
					Rotation = -90,
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0),
						NumberSequenceKeypoint.new(1, 1),
					}),
				}),
			}),
			ActionBar = Roact.createElement(ActionBar, {
				onAbsoluteSizeChanged = self.onAbsoluteSizeChanged,
			}, {
				loadingStateContainer = Roact.createElement(LoadingStateContainer, {
					dataStatus = RetrievalStatus.fromRawValue(self.props.actionBarLoadingStatus),
					renderOnLoaded = self.renderOnLoaded,
					renderOnLoading = self.renderOnLoading,
					renderOnFailed = self.renderOnLoading,
				}),
			}),
		})
	end)
end

return SquadLobbyActionBar

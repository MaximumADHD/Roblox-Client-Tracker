local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local UIBlox = dependencies.UIBlox
local Roact = dependencies.Roact
local memoize = dependencies.memoize
local TextService = dependencies.TextService
local withLocalization = dependencies.withLocalization

local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local SmallRadioButtonGroup = UIBlox.App.Cell.Small.SelectionGroup.SmallRadioButtonGroup
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Badge = UIBlox.App.Indicator.Badge
local withStyle = UIBlox.Style.withStyle

local SocialLibraries = dependencies.SocialLibraries
local compose = SocialLibraries.RoduxTools.compose

local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local ImpressionEvents = require(FriendsLanding.FriendsLandingAnalytics.ImpressionEvents)

local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local makeFilterButtons = require(FriendsLanding.Friends.makeFilterButtons)
local filterStates = require(FriendsLanding.Friends.filterStates)

local navigationParamKeys = require(script.navigationParamKeys)

local FriendsLandingFilter = Roact.PureComponent:extend("FriendsLandingFilter")

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local SELECTION_CELL_HEIGHT = 58
local BUTTON_CONTAINER_PADDING = 20
local RADIO_BUTTON_CELL_SIZE = 56
local BADGE_HEIGHT = 24
local GENERIC_CELL_LEFT_PADDING = 24
local TEXT_UPSELL_PADDING = 12

FriendsLandingFilter.defaultProps = {
	analytics = nil,
	navigation = nil,
}

function FriendsLandingFilter:init()
	local filter = self.props.filter
	self.state = {
		selectedValue = filter,
	}

	self.onClose = function()
		self.props.navigation.goBack()
	end

	self.onApply = memoize(function(setFilterKeys)
		return function()
			self.props.analytics:buttonClick(ButtonClickEvents.FriendFilterApply, {
				filter = self.state.selectedValue,
			})
			setFilterKeys(self.state.selectedValue)
			self.onClose()
			if getFFlagFriendsLandingInactiveFriendsEnabled() and self.state.selectedValue == filterStates.Inactive then
				self.onFewestInteractionsSelection()
			end
		end
	end)

	self.setSelectedValue = function(value)
		self:setState({
			selectedValue = value,
		})
	end

	self.onCurrentSelected = function(filter)
		return filter == self.state.selectedValue
	end

	self.getAlertPlacement = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then function(alertFilterId, filterButtons, alertHeight: number, textFont: any)
			local alertFilterIndex = 0
			local filterText = ""

			-- Get the first index in filterButtons matching the alertFilterId
			for i, button in ipairs(filterButtons) do
				if button.id == alertFilterId then
					alertFilterIndex = i
					filterText = button.text
					break
				end
			end

			assert(alertFilterIndex ~= 0, "getAlertPlacement expects alertFilterId to have an entry in filterButtons")

			-- We use Header2 here because it is the font style for GenericSelectionCell,
			-- which SmallRadioButtonGroup uses for its labels
			local fontSize = textFont.Header2.RelativeSize * textFont.BaseSize
			local textBounds =
				TextService:GetTextSize(filterText, fontSize, textFont.Header2.Font, Vector2.new(10000, 10000)).X

			local horizontalOffset = GENERIC_CELL_LEFT_PADDING + textBounds + TEXT_UPSELL_PADDING

			-- Sum of heights of the buttons (and adding 1 for the dividing lines) above the button with the alert
			local verticalOffset = (alertFilterIndex - 1) * (RADIO_BUTTON_CELL_SIZE + 1)
			-- The distance between the top of the button with the alert and the actual alert
			verticalOffset += math.floor((RADIO_BUTTON_CELL_SIZE / 2) - (alertHeight / 2))

			return UDim2.fromOffset(horizontalOffset, verticalOffset)
		end
		else function() end

	self.showFriendPruningAlert = if getFFlagFriendsLandingInactiveFriendsEnabled()
			and self.props.navigation.getParam
		then self.props.navigation.getParam(navigationParamKeys.ShowFriendPruningAlert)
		else nil

	self.onFewestInteractionsSelection = if getFFlagFriendsLandingInactiveFriendsEnabled()
			and self.props.navigation.getParam
		then self.props.navigation.getParam(navigationParamKeys.OnFewestInteractionsSelection)
		else function() end
end

function FriendsLandingFilter:didMount()
	if getFFlagFriendsLandingInactiveFriendsEnabled() and self.showFriendPruningAlert then
		local friendCount = if self.props.navigation and self.props.navigation.getParam
			then self.props.navigation.getParam(navigationParamKeys.FriendCount)
			else 0
		local inactiveFriendCount = if self.props.navigation and self.props.navigation.getParam
			then self.props.navigation.getParam(navigationParamKeys.InactiveFriendCount)
			else 0

		self.props.analytics:impressionEvent(ImpressionEvents.FriendPruningNewBadgeSeen, {
			friendCount = tostring(friendCount),
			inactiveFriendCount = tostring(inactiveFriendCount),
		})
	end
end

function FriendsLandingFilter:render()
	if getFFlagFriendsLandingInactiveFriendsEnabled() then
		return withStyle(function(style)
			return withLocalization({
				apply = "CommonUI.Messages.Action.Apply",
				all = "Feature.Friends.Label.All",
				inactive = "Feature.Friends.Label.FewestInteractions",
				inExperience = "Feature.Friends.Label.InGame",
				online = "Common.Presence.Label.Online",
				offline = "Common.Presence.Label.Offline",
				filterBy = "Feature.Friends.Heading.FilterBy",
				upsellNew = "Feature.Catalog.Label.New",
			})(function(localizedStrings)
				local filterButtons = makeFilterButtons(localizedStrings)
				return Roact.createElement(PartialPageModal, {
					title = localizedStrings.filterBy,
					screenSize = self.props.screenSize,
					onCloseClicked = self.onClose,
					marginSize = 0,
					buttonStackProps = {
						buttons = {
							{
								buttonType = ButtonType.PrimarySystem,
								props = {
									isDisabled = self.onCurrentSelected(self.props.filter),
									onActivated = self.onApply(self.props.setFilterKeys),
									text = localizedStrings.apply,
								},
							},
						},
					},
				}, {
					ButtonContainer = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, SELECTION_CELL_HEIGHT * #filterButtons + BUTTON_CONTAINER_PADDING),
						BackgroundTransparency = 1,
					}, {
						RadioButtons = Roact.createElement(SmallRadioButtonGroup, {
							onActivated = self.setSelectedValue,
							selectedValue = self.state.selectedValue,
							items = filterButtons,
						}),
						InactiveFriendsAlert = if self.showFriendPruningAlert
							then Roact.createElement(Badge, {
								position = self.getAlertPlacement(
									filterStates.Inactive,
									filterButtons,
									BADGE_HEIGHT,
									style.Font
								),
								value = localizedStrings.upsellNew,
							})
							else nil,
					}),
				})
			end)
		end)
	else
		return withLocalization({
			apply = "CommonUI.Messages.Action.Apply",
			all = "Feature.Friends.Label.All",
			inExperience = "Feature.Friends.Label.InGame",
			online = "Common.Presence.Label.Online",
			offline = "Common.Presence.Label.Offline",
			filterBy = "Feature.Friends.Heading.FilterBy",
		})(function(localizedStrings)
			local filterButtons = makeFilterButtons(localizedStrings)
			return Roact.createElement(PartialPageModal, {
				title = localizedStrings.filterBy,
				screenSize = self.props.screenSize,
				onCloseClicked = self.onClose,
				marginSize = 0,
				buttonStackProps = {
					buttons = {
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								isDisabled = self.onCurrentSelected(self.props.filter),
								onActivated = self.onApply(self.props.setFilterKeys),
								text = localizedStrings.apply,
							},
						},
					},
				},
			}, {
				ButtonContainer = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, SELECTION_CELL_HEIGHT * #filterButtons + BUTTON_CONTAINER_PADDING),
					BackgroundTransparency = 1,
				}, {
					RadioButtons = Roact.createElement(SmallRadioButtonGroup, {
						onActivated = self.setSelectedValue,
						selectedValue = self.state.selectedValue,
						items = filterButtons,
					}),
				}),
			})
		end)
	end
end

return compose(
	FriendsLandingAnalytics.connect(function(analytics)
		return {
			analytics = analytics,
		}
	end),
	FriendsLandingContext.connect(function(state, _)
		return {
			filter = state.filter,
			screenSize = state.screenSize,
			setFilterKeys = state.setFilterKeys,
		}
	end)
)(FriendsLandingFilter)

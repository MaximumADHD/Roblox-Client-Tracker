local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local UIBlox = dependencies.UIBlox
local Roact = dependencies.Roact
local memoize = dependencies.memoize
local withLocalization = dependencies.withLocalization

local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local SmallRadioButtonGroup = UIBlox.App.Cell.Small.SelectionGroup.SmallRadioButtonGroup
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local SocialLibraries = dependencies.SocialLibraries
local compose = SocialLibraries.RoduxTools.compose

local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)

local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local makeFilterButtons = require(FriendsLanding.Friends.makeFilterButtons)

local FriendsLandingFilter = Roact.PureComponent:extend("FriendsLandingFilter")

local SELECTION_CELL_HEIGHT = 58
local BUTTON_CONTAINER_PADDING = 20

FriendsLandingFilter.defaultProps = {
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
end

function FriendsLandingFilter:render()
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

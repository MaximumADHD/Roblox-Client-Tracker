--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local getFFlagFilterByButtonZeroStateFixEnabled =
	require(FriendsLanding.Flags.getFFlagFilterByButtonZeroStateFixEnabled)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization

local Images = UIBlox.App.ImageSet.Images
local Pill = UIBlox.App.Control.Pill
local withStyle = UIBlox.Style.withStyle
local filterStates = require(FriendsLanding.Friends.filterStates)

local BUTTON_HEIGHT = 28
local BUTTON_SPACING = 4
local BUTTON_FRAME_SIZE = BUTTON_HEIGHT + (BUTTON_SPACING * 2)

local FilterByButton = Roact.PureComponent:extend("FilterByButton")

FilterByButton.defaultProps = {
	layoutOrder = 1,
	onActivated = function() end,
	filter = filterStates.All,
	friendCount = 0,
	isDisabled = false,
}

function FilterByButton:init()
	self.convertFilterToTranslation = function(filter, localizedStrings)
		if filter == filterStates.All then
			return localizedStrings.all
		elseif filter == filterStates.Online then
			return localizedStrings.online
		elseif filter == filterStates.InExperience then
			return localizedStrings.inExperience
		elseif filter == filterStates.Offline then
			return localizedStrings.offline
		else
			return nil
		end
	end

	self.buildFilterText = function(filter, localizedStrings, friendCount)
		local translatedFilter = self.convertFilterToTranslation(filter, localizedStrings)
		if friendCount == 0 then
			return translatedFilter
		end

		return translatedFilter .. " (" .. friendCount .. ")"
	end

	self.isSelected = function(filter)
		if filter == filterStates.All then
			return false
		end

		return true
	end
end

function FilterByButton:render()
	return withStyle(function(style)
		local filterImage = Images["icons/actions/filter"]
		return withLocalization({
			all = "Feature.Friends.Label.All",
			inExperience = "Feature.Friends.Label.InGame",
			online = "Common.Presence.Label.Online",
			offline = "Common.Presence.Label.Offline",
		})(function(localizedStrings)
			local filter = self.props.filter
			local friendCount = self.props.friendCount
			local isDisabled = self.props.isDisabled
			local onActivated = self.props.onActivated

			local translatedText
			if getFFlagFilterByButtonZeroStateFixEnabled() then
				translatedText = self.buildFilterText(filter, localizedStrings, friendCount)
			else
				translatedText = self.convertFilterToTranslation(filter, localizedStrings) .. " (" .. friendCount .. ")"
			end

			return Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, BUTTON_FRAME_SIZE),
				LayoutOrder = self.props.layoutOrder,
				BackgroundTransparency = 1,
			}, {
				Button = Roact.createElement(Pill, {
					icon = filterImage,
					text = translatedText,
					isDisabled = isDisabled,
					isSelected = self.isSelected(filter),
					onActivated = onActivated,
				}),
			})
		end)
	end)
end

return FilterByButton

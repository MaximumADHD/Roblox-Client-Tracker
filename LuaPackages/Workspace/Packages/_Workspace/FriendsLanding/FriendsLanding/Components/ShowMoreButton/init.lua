local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local SecondaryButton = UIBlox.App.Button.SecondaryButton

local ShowMoreButton = Roact.PureComponent:extend("ShowMoreButton")

local BUTTON_VERTICAL_PADDING = 24
local BUTTON_HEIGHT = 48
local noOpt = function() end

ShowMoreButton.defaultProps = {
	layoutOrder = 1,

	onSizeChange = noOpt,
	onActivated = noOpt,
}

ShowMoreButton.MAX_WIDTH = 640

function ShowMoreButton:init()
	self.state = {
		width = 100,
	}

	self.localization = {
		showMore = "Feature.Friends.Action.ShowMore",
	}

	self.onChangeSize = function(rbx)
		self:setState({
			width = math.min(ShowMoreButton.MAX_WIDTH, rbx.AbsoluteSize.X),
		})

		self.props.onSizeChange(rbx)
	end
end

function ShowMoreButton:render()
	return withLocalization(self.localization)(function(localizedStrings)
		local buttonSize = UDim2.new(0, self.state.width, 0, BUTTON_HEIGHT)

		return Roact.createFragment({
			showMoreContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = self.props.layoutOrder,
				Size = UDim2.new(1, 0, 0, BUTTON_HEIGHT + BUTTON_VERTICAL_PADDING * 2),
				[Roact.Change.AbsoluteSize] = self.onChangeSize,
			}, {
				layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				showMore = Roact.createElement(SecondaryButton, {
					onActivated = self.props.onActivated,
					size = buttonSize,
					text = localizedStrings.showMore,
				}),
			}),
		})
	end)
end

return ShowMoreButton

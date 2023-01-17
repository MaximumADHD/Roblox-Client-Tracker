local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local HeaderBar = UIBlox.App.Bar.HeaderBar

local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled

local NEW_NAV_BAR_SIZE = 56

local FriendsLandingHeaderBarPresentational = Roact.PureComponent:extend("FriendsLandingHeaderBarPresentational")

function FriendsLandingHeaderBarPresentational:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, NEW_NAV_BAR_SIZE),
		LayoutOrder = -1,
		ZIndex = 2,
	}, {
		headerBar = Roact.createElement(HeaderBar, {
			title = self.props.title,
			barHeight = NEW_NAV_BAR_SIZE,
			renderLeft = self.props.renderLeft,
			renderCenter = self.props.renderCenter,
			renderRight = self.props.renderRight,
			isSecondary = if getFFlagAddFriendsSearchbarIXPEnabled() then self.props.isSecondary else nil,
			shouldHideSecondaryLeftItem = if getFFlagAddFriendsSearchbarIXPEnabled()
				then self.props.shouldHideSecondaryLeftItem
				else nil,
		}),
	})
end

return FriendsLandingHeaderBarPresentational

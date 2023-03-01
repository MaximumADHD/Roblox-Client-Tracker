local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle

local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled

local PlayerSearchWrapper = Roact.PureComponent:extend("PlayerSearchWrapper")

PlayerSearchWrapper.defaultProps = {
	layoutOrder = 1,
	onActivated = nil,
	searchText = "",
}

function PlayerSearchWrapper:render()
	return FriendsLandingContext.with(function(context)
		return withStyle(function(style)
			local searchText = self.props.navigation.getParam("searchText", nil)
			local shouldShowEmptyLandingPage = if getFFlagAddFriendsSearchbarIXPEnabled()
				then self.props.navigation.getParam("shouldShowEmptyLandingPage", nil)
				else nil
			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
			}, {
				Roact.createElement(context.playerSearchPage, {
					searchParameters = {
						searchKeyword = searchText,
						isKeywordSuggestionEnabled = true,
					},
					shouldShowEmptyLandingPage = if getFFlagAddFriendsSearchbarIXPEnabled()
						then shouldShowEmptyLandingPage
						else nil,
					addFriendsPageSearchbarEnabled = if getFFlagAddFriendsSearchbarIXPEnabled()
						then context.addFriendsPageSearchbarEnabled
						else nil,
				}),
			})
		end)
	end)
end

return PlayerSearchWrapper

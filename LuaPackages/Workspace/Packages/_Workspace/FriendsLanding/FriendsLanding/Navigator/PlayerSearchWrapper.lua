local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle

local getFFlagFriendsLandingFixSearchPageStylingEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingFixSearchPageStylingEnabled)
local getFFlagAddFriendsFullPlayerSearchbar = dependencies.getFFlagAddFriendsFullPlayerSearchbar

local PlayerSearchWrapper = Roact.PureComponent:extend("PlayerSearchWrapper")

PlayerSearchWrapper.defaultProps = {
	layoutOrder = 1,
	onActivated = nil,
	searchText = "",
}

function PlayerSearchWrapper:render()
	return FriendsLandingContext.with(function(context)
		if getFFlagFriendsLandingFixSearchPageStylingEnabled() then
			return withStyle(function(style)
				local searchText = self.props.navigation.getParam("searchText", nil)
				local showEmptyLandingPage = if getFFlagAddFriendsFullPlayerSearchbar()
					then self.props.navigation.getParam("showEmptyLandingPage", nil)
					else nil
				return Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
					BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				}, {
					Roact.createElement(context.playerSearchPage, {
						searchParameters = {
							searchKeyword = searchText,
							isKeywordSuggestionEnabled = true,
						},
						showEmptyLandingPage = if getFFlagAddFriendsFullPlayerSearchbar()
							then showEmptyLandingPage
							else nil,
					}),
				})
			end)
		else
			local searchText = self.props.navigation.getParam("searchText", nil)
			local showEmptyLandingPage = if getFFlagAddFriendsFullPlayerSearchbar()
				then self.props.navigation.getParam("showEmptyLandingPage", nil)
				else nil
			return Roact.createElement(context.playerSearchPage, {
				searchParameters = {
					searchKeyword = searchText,
					isKeywordSuggestionEnabled = true,
				},
				showEmptyLandingPage = if getFFlagAddFriendsFullPlayerSearchbar() then showEmptyLandingPage else nil,
			})
		end
	end)
end

return PlayerSearchWrapper

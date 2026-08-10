local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local DataHydration = require(CorePackages.Workspace.Packages.DataHydration)

local getAgeRecommendationStore = DataHydration.Game.getAgeRecommendationStore
local DataStatus = DataHydration.DataHydrationTypes.DataStatus

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagShowGameAgeRating = SharedFlags.FFlagShowGameAgeRating
local FFlagEnableSideSheet = SharedFlags.FFlagEnableSideSheet

type Props = {
	position: UDim2,
}

local DEFAULT_AGE_RATING_TEXT = "12+"

return function(props: Props): React.React_Node
	local style = useStyle()

	local position = if FFlagShowGameAgeRating then 
		if FFlagEnableSideSheet then UDim2.fromOffset(-6, -2) else UDim2.fromOffset(0, 2)
	else props.position

	local displayText
	if FFlagShowGameAgeRating then
		local universeId = tostring(game.GameId)
		local getAgeRatingText = React.useCallback(function(scope): string?
			local ageRecommendation = getAgeRecommendationStore(scope).getAndFetchAgeRecommendation(universeId)
			local status = ageRecommendation.status(scope)	

			-- Render default rating if failed, and nothing if not ready to avoid flashing default
			if status == DataStatus.Failed then
				return DEFAULT_AGE_RATING_TEXT
			elseif status == DataStatus.NotReady then
				return nil
			end

			local data = ageRecommendation.data(scope)
			local minimumAgeDisplay = data and data.minimumAgeDisplay
			if minimumAgeDisplay then
				return minimumAgeDisplay
			end
			return DEFAULT_AGE_RATING_TEXT
		end, { universeId })

		displayText = SignalsReact.useSignalState(getAgeRatingText)
		if displayText == nil then
			return nil
		end
	end

	return React.createElement("TextLabel", {
		AnchorPoint = if FFlagShowGameAgeRating then Vector2.new(0.5, 0) else Vector2.new(0, 1),
		Position = position,
		Text = displayText or DEFAULT_AGE_RATING_TEXT,
		Font = if FFlagShowGameAgeRating then AppFonts.default:getBold() else AppFonts.default:getMedium(),
		TextSize = if FFlagShowGameAgeRating then 12 else 9,
		TextColor3 = style.Theme.TextEmphasis.Color,
		BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
		BackgroundTransparency = 0,
		AutomaticSize = Enum.AutomaticSize.XY,
		LineHeight = 1.25,
		ZIndex = 2,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = if FFlagShowGameAgeRating then UDim.new(0, 2) else nil,
			PaddingBottom = if FFlagShowGameAgeRating then UDim.new(0, 2) else nil,
			PaddingLeft = if FFlagShowGameAgeRating then UDim.new(0, 6) else UDim.new(0, 2),
			PaddingRight = if FFlagShowGameAgeRating then UDim.new(0, 6) else UDim.new(0, 2),
		}),
		Shape = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
	})
end

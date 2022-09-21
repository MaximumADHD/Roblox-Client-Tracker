local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Cryo = require(VerifiedBadges.Parent.Cryo)
local React = require(VerifiedBadges.Parent.React)
local ReactRoblox = require(VerifiedBadges.Parent.ReactRoblox)
local RoactAppExperiment = require(VerifiedBadges.Parent.RoactAppExperiment)
local constants = require(VerifiedBadges.constants)
local sendExposureEvent = require(VerifiedBadges.Utils.sendExposureEvent)
local usePrevious = require(VerifiedBadges.Utils.usePrevious)
local getFStringVerifiedBadgeLayer = require(VerifiedBadges.Flags.getFStringVerifiedBadgeLayer)
local getFFlagFixAnalyticsOverfire = require(VerifiedBadges.Flags.getFFlagFixAnalyticsOverfire)
local getExperimentValue = require(VerifiedBadges.Experiments.getExperimentValue)

local defaultProps = {
	anchorPoint = Vector2.new(),
	position = UDim2.new(),
	color = Color3.fromHex("#fff"),
	font = Enum.Font.Gotham,
	size = UDim2.fromScale(1, 0),
	automaticSize = Enum.AutomaticSize.XY,
}

type DefaultProps = typeof(defaultProps)

export type Props = {
	emoji: string,
	color: Color3?,
	font: Enum.Font?,
	anchorPoint: Vector2?,
	position: UDim2?,
	size: UDim2?,
	horizontalAlignment: Enum.HorizontalAlignment?,
	verticalAlignment: Enum.VerticalAlignment?,
	layoutOrder: number?,
	onActivated: (() -> ())?,
	children: React.ReactElement<any, string>?,

	-- Analytics
	analytics: sendExposureEvent.ExposureEvent?,
	analyticsBelowTheFoldTrigger: ((emoji: TextLabel) -> (number))?,

	-- Mocks
	mockIsEnrolled: boolean?,
	mockAnalyticExposureEvent: ((exposureEvent: sendExposureEvent.ExposureEvent?) -> ())?,
}

--[=[
	This component is the primary avenue for setting up text with the Verified
	badge, or any other emoji.

	Outfitting an element with an emoji is easy with the EmojiWrapper. For this
	example we'll use the `userText` element from the SocialTab's ProfileEntry
	component:

	```lua
	userText = Roact.createElement(StyledTextLabel, {
	    TextStyle = theme.TextEmphasis,
	    FontStyle = font.Header1,
	    TextXAlignment = Enum.TextXAlignment.Left,
	    LayoutOrder = 4,
	    Size = UDim2.new(0, 0, 0, CONTAINER_HEIGHT),
	    Text = props.userText,
	    AutomaticSize = Enum.AutomaticSize.X,
	}),
	```

	To setup userText with the Verified badge we flag the change with
	[VerifiedBadges.getFFlagUseVerifiedBadge] and wrap the existing component
	with EmojiWrapper

	```lua
	userText = if VerifiedBadges.getFFlagUseVerifiedBadge()
	    then Roact.createElement(VerifiedBadges.EmojiWrapper, {
	        emoji = VerifiedBadges.emoji.verified,
	        layoutOrder = 4,
	    }, {
	        userText = Roact.createElement(StyledTextLabel, {
	            TextStyle = theme.TextEmphasis,
	            FontStyle = font.Header1,
	            TextXAlignment = Enum.TextXAlignment.Left,
	            LayoutOrder = 4,
	            Size = UDim2.new(0, 0, 0, CONTAINER_HEIGHT),
	            Text = props.userText,
	            AutomaticSize = Enum.AutomaticSize.X,
	        }),
	    })
	    else Roact.createElement(StyledTextLabel, {
	        TextStyle = theme.TextEmphasis,
	        FontStyle = font.Header1,
	        TextXAlignment = Enum.TextXAlignment.Left,
	        LayoutOrder = 4,
	        Size = UDim2.new(0, 0, 0, CONTAINER_HEIGHT),
	        Text = props.userText,
	        AutomaticSize = Enum.AutomaticSize.X,
	    })
	```

	@within VerifiedBadges
	@tag Component
]=]
local function EmojiWrapper(props: Props)
	local joinedProps: DefaultProps & Props = Cryo.Dictionary.join(defaultProps, props)
	local prevAnalytics = usePrevious(props.analytics)

	local sendAnalyticsExposureEvent = React.useCallback(function(exposureEvent: sendExposureEvent.ExposureEvent?)
		if props.mockAnalyticExposureEvent then
			props.mockAnalyticExposureEvent(exposureEvent)
		else
			if getFFlagFixAnalyticsOverfire() then
				if props.emoji == constants.VERIFIED_EMOJI then
					sendExposureEvent(exposureEvent)
				end
			else
				sendExposureEvent(exposureEvent)
			end
		end
	end, { props.mockAnalyticExposureEvent })

	local isEnrolled = RoactAppExperiment.useUserExperiment({
		getFStringVerifiedBadgeLayer(),
	}, getExperimentValue) or props.mockIsEnrolled

	local shouldRenderEmoji = isEnrolled or props.emoji ~= constants.VERIFIED_EMOJI

	if joinedProps.children then
		assert(React.Children.count(joinedProps.children) <= 1, "EmojiWrapper can only contain one child")
	end

	local emojiSize, setEmojiSize = React.useState(0)

	local onSizeChanged = React.useCallback(function(rbx: Frame)
		local newEmojiSize = rbx.AbsoluteSize.Y
		setEmojiSize(newEmojiSize)
	end, {})

	-- Analytics state values, functions and useEffect hook
	local ref = React.useRef(nil)
	local firstRenderFinished, setFirstRenderFinished = React.useState(false)
	local belowTheFoldAnalyticFired, setBelowTheFoldAnalyticFired = React.useState(false)
	local fireAnalyticIfEmojiAboveTheFold = React.useCallback(function(rbx: TextLabel)
		if belowTheFoldAnalyticFired then
			return
		end
		local bottomTrigger = if props.analyticsBelowTheFoldTrigger
			then props.analyticsBelowTheFoldTrigger(rbx)
			else if rbx:FindFirstAncestorOfClass("ScreenGui")
				then (rbx:FindFirstAncestorOfClass("ScreenGui") :: ScreenGui).AbsoluteSize.Y
				else 0

		if rbx.AbsolutePosition.Y < bottomTrigger then
			sendAnalyticsExposureEvent(props.analytics)
			setBelowTheFoldAnalyticFired(true)
		end
	end, { props.analyticsBelowTheFoldTrigger, belowTheFoldAnalyticFired } :: { any })

	local onAbsolutePositionChanged = React.useCallback(function(rbx: TextLabel)
		if firstRenderFinished then
			fireAnalyticIfEmojiAboveTheFold(rbx)
		end
	end, { props.analyticsBelowTheFoldTrigger, belowTheFoldAnalyticFired, firstRenderFinished } :: { any })

	-- analytics for tracking exposure of users to VerifiedBadges experiment if creator had a verified badge
	React.useEffect(function()
		if props.analytics then
			local prevCreatorId = if prevAnalytics then prevAnalytics.creatorId else nil
			local currentCreatorId = props.analytics.creatorId
			if currentCreatorId ~= nil and currentCreatorId ~= prevCreatorId then
				if props.analyticsBelowTheFoldTrigger and ref.current then
					fireAnalyticIfEmojiAboveTheFold(ref.current)
					setFirstRenderFinished(true)
				else
					sendAnalyticsExposureEvent(props.analytics)
				end
			end
		end
	end, { props.analytics })

	return React.createElement("Frame", {
		ref = ref,
		LayoutOrder = joinedProps.layoutOrder,
		AnchorPoint = joinedProps.anchorPoint,
		Position = joinedProps.position,
		Size = joinedProps.size,
		AutomaticSize = joinedProps.automaticSize,
		BackgroundTransparency = 1,
		[React.Change.AbsolutePosition] = if props.analyticsBelowTheFoldTrigger then onAbsolutePositionChanged else nil,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = joinedProps.horizontalAlignment,
			VerticalAlignment = joinedProps.verticalAlignment,
			Padding = UDim.new(0, -emojiSize),
		}),

		ChildrenWrapper = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			[ReactRoblox.Change.AbsoluteSize] = onSizeChanged,
		}, {
			Padding = shouldRenderEmoji and React.createElement("UIPadding", {
				PaddingRight = UDim.new(0, emojiSize),
			}),

			Children = React.createElement(React.Fragment, nil, joinedProps.children),
		}),

		Emoji = shouldRenderEmoji and React.createElement("TextLabel", {
			LayoutOrder = 2,
			Text = joinedProps.emoji,
			Font = joinedProps.font,
			TextColor3 = joinedProps.color,
			TextSize = emojiSize,
			BackgroundTransparency = 1,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextXAlignment = Enum.TextXAlignment.Center,
			Size = UDim2.fromOffset(emojiSize, emojiSize),
		}, {
			Button = props.onActivated and React.createElement("ImageButton", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				[ReactRoblox.Event.Activated] = props.onActivated,
			}),
		}),
	})
end

return EmojiWrapper

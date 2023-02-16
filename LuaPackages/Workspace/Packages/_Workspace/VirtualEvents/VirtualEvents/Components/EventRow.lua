local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local dependencyArray = require(VirtualEvents.Parent.RoactUtils).Hooks.dependencyArray
local formatDate = require(VirtualEvents.Common.formatDate)
local getEventTimerStatus = require(VirtualEvents.Common.getEventTimerStatus)
local getVirtualEventDates = require(VirtualEvents.Common.getVirtualEventDates)
local types = require(VirtualEvents.types)
local EventRowCounter = require(script.Parent.EventRowCounter)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton
local PrimaryContextualButton = UIBlox.App.Button.PrimaryContextualButton
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle
local Images = UIBlox.App.ImageSet.Images

local STAR_ICON = Images["icons/actions/favoriteOn"]
local PLAYING_ICON = Images["icons/status/games/people-playing_small"]
local SEPERATOR = utf8.char(0x2022) -- Bullet •
local PADDING = UDim.new(0, 12)
local PADDING_SMALL = UDim.new(0, 4)
local BUTTON_HEIGHT = 28
local DESCRIPTION_LINE_HEIGHT = 1.4

local defaultProps = {
	shouldTruncateText = true,
	maxDescriptionLines = 2,
}

export type Props = {
	virtualEvent: GraphQLServer.VirtualEvent,
	channel: string?,
	onRsvpChanged: ((newRsvpStatus: types.RsvpStatus) -> ())?,
	onJoinEvent: (() -> ())?,
	onTileActivated: (() -> ())?,

	shouldTruncateText: boolean?,
	maxDescriptionLines: number?,
}

type InternalProps = Props & typeof(defaultProps)

local function EventRow(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)

	if not getFFlagVirtualEventsGraphQL() then
		-- The GraphQL VirtualEvent object uses startUtc and endUtc only, so we
		-- need to inject startTime and endtime to support legacy code when this
		-- flag is false
		props.virtualEvent = Cryo.Dictionary.join(props.virtualEvent, {
			eventTime = Cryo.Dictionary.join(props.virtualEvent.eventTime, {
				startTime = DateTime.fromIsoDate((props.virtualEvent.eventTime :: any).startUtc),
				endTime = DateTime.fromIsoDate((props.virtualEvent.eventTime :: any).endUtc),
			}),
		})
	end

	local eventTimerStatus = getEventTimerStatus(props.virtualEvent :: any, DateTime.now())
	local style = useStyle()

	local text = useLocalization({
		notifyMe = "Feature.VirtualEvents.NotifyMe",
		joinEvent = "Feature.VirtualEvents.JoinEvent",
	})

	local dates = React.useMemo(function()
		return getVirtualEventDates(props.virtualEvent)
	end, dependencyArray(props.virtualEvent))

	local onRsvpChanged = React.useCallback(function()
		local newRsvpStatus: GraphQLServer.RsvpStatus
		if props.virtualEvent.userRsvpStatus ~= "going" then
			newRsvpStatus = "going"
		else
			newRsvpStatus = "notGoing"
		end

		if props.onRsvpChanged then
			props.onRsvpChanged(newRsvpStatus)
		end
	end, dependencyArray(props.onRsvpChanged))

	local onJoinEvent = React.useCallback(function()
		if props.onJoinEvent then
			props.onJoinEvent()
		end
	end, dependencyArray(props.onJoinEvent))

	local titleHeight = style.Font.BaseSize * style.Font.Header2.RelativeSize
	local descriptionHeight = if props.shouldTruncateText
		then props.maxDescriptionLines * style.Font.BaseSize * style.Font.CaptionBody.RelativeSize * DESCRIPTION_LINE_HEIGHT
		else math.huge

	local experienceDetails = props.virtualEvent.experienceDetails
	local rsvpCounters = props.virtualEvent.rsvpCounters

	return React.createElement("ImageButton", {
		Size = UDim2.fromScale(1, 0),
		AutoButtonColor = false,
		AutomaticSize = Enum.AutomaticSize.Y,
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
		BackgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
		[React.Event.Activated] = props.onTileActivated,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = PADDING,
		}),

		Padding = React.createElement("UIPadding", {
			PaddingTop = PADDING,
			PaddingRight = PADDING,
			PaddingBottom = PADDING,
			PaddingLeft = PADDING,
		}),

		BorderRadius = React.createElement("UICorner", {
			CornerRadius = PADDING,
		}),

		BorderColor = React.createElement("UIStroke", {
			Color = style.Theme.Divider.Color,
			Transparency = style.Theme.Divider.Transparency,
			Thickness = 1,
		}),

		Header = React.createElement("Frame", {
			LayoutOrder = 1,
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
		}, {
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = PADDING_SMALL,
			}),

			Title = React.createElement(StyledTextLabel, {
				layoutOrder = 1,
				text = props.virtualEvent.title,
				fontStyle = style.Font.Header2,
				colorStyle = style.Theme.TextEmphasis,
				automaticSize = if props.shouldTruncateText then Enum.AutomaticSize.X else Enum.AutomaticSize.XY,
				size = if props.shouldTruncateText then UDim2.fromOffset(0, titleHeight) else nil,
				textTruncate = Enum.TextTruncate.AtEnd,
				fluidSizing = if props.shouldTruncateText then false else true,
				richText = if props.shouldTruncateText then false else true,
			}),

			Info = React.createElement("Frame", {
				LayoutOrder = 2,
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
			}, {
				Layout = React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = PADDING_SMALL,
				}),

				Date = React.createElement(StyledTextLabel, {
					layoutOrder = 1,
					text = formatDate(dates.startDate),
					automaticSize = Enum.AutomaticSize.XY,
					fontStyle = style.Font.CaptionBody,
					colorStyle = style.Theme.TextDefault,
				}),

				Separator = React.createElement(StyledTextLabel, {
					layoutOrder = 2,
					text = SEPERATOR,
					automaticSize = Enum.AutomaticSize.XY,
					fontStyle = style.Font.CaptionBody,
					colorStyle = style.Theme.TextDefault,
				}),

				InterestedCount = rsvpCounters and React.createElement(EventRowCounter, {
					layoutOrder = 3,
					icon = STAR_ICON,
					counter = if rsvpCounters.going then rsvpCounters.going else 0,
				}),

				PlayCount = if (eventTimerStatus == "Ongoing" or eventTimerStatus == "ElapsedImminent")
						and (experienceDetails and experienceDetails.playing and experienceDetails.playing > 0)
					then React.createElement(EventRowCounter, {
						layoutOrder = 4,
						icon = PLAYING_ICON,
						counter = if experienceDetails.playing then experienceDetails.playing else 0,
					})
					else nil,
			}),
		}),

		Description = React.createElement("Frame", {
			LayoutOrder = 2,
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
		}, {
			SizeConstraint = React.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(math.huge, descriptionHeight),
			}),

			Label = React.createElement(StyledTextLabel, {
				text = props.virtualEvent.description,
				automaticSize = Enum.AutomaticSize.XY,
				size = UDim2.fromScale(1, 0),
				fontStyle = style.Font.CaptionBody,
				colorStyle = style.Theme.TextDefault,
				textTruncate = Enum.TextTruncate.AtEnd,
				textYAlignment = Enum.TextYAlignment.Top,
				fluidSizing = false,
				richText = false,
				lineHeight = DESCRIPTION_LINE_HEIGHT,
			}),
		}),

		CallToAction = if eventTimerStatus == "Ongoing"
			then React.createElement(PrimaryContextualButton, {
				layoutOrder = 3,
				text = text.joinEvent,
				fontStyle = style.Font.CaptionHeader,
				size = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
				onActivated = onJoinEvent,
			})
			else React.createElement(PrimarySystemButton, {
				layoutOrder = 3,
				text = text.notifyMe,
				fontStyle = style.Font.CaptionHeader,
				size = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
				onActivated = onRsvpChanged,
			}),
	})
end

return EventRow

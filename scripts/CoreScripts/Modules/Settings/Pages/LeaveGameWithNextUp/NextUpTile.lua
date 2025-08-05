--!strict

local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")

local LaunchGame = require(CorePackages.Workspace.Packages.GameLaunch).LaunchGame
local React = require(CorePackages.Packages.React)
local DiscoveryAnalytics = require(CorePackages.Workspace.Packages.DiscoveryAnalytics)
local Localization = require(CorePackages.Workspace.Packages.Localization)
local RobloxAppHooks = require(CorePackages.Workspace.Packages.RobloxAppHooks)
local RoactServiceTags = require(CorePackages.Workspace.Packages.RoactServiceTags)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)

local useNextUpSort = require(script.Parent.useNextUpSort)
local leaveGame = require(script.Parent.Parent.Parent.leaveGame)
local ImageOrSkeleton = require(script.Parent.ImageOrSkeleton)
local Telemetry = require(script.Parent.Telemetry)

local FFlagAddSponsoredFooterOnNextUp = game:DefineFastFlag("AddSponsoredFooterOnNextUp", false)
local FFlagEnableNextUpImageLatencyTelemetry = require(script.Parent.Flags.FFlagEnableNextUpImageLatencyTelemetry)
local FFlagEnableNextUpTileLeaveGameOnTileJoin = game:DefineFastFlag("EnableNextUpTileLeaveGameOnTileJoin", false)

local SponsoredFooter = if FFlagAddSponsoredFooterOnNextUp then require(script.Parent.SponsoredFooter) else nil :: never

local AppEventIngestService = RoactServiceTags.AppEventIngestService
local useLocalization = Localization.Hooks.useLocalization
local sendGamePlayIntent = DiscoveryAnalytics.Events.gamePlayIntent
local useRoactService = RobloxAppHooks.useRoactService
local LoadableImage = UIBlox.App.Loading.LoadableImage -- Foundation Image doesn't support shimmer while loading
local View = Foundation.View
local Text = Foundation.Text
local Skeleton = Foundation.Skeleton
local useTokens = Foundation.Hooks.useTokens

local blankRatingText = "--"
local function getRatingText(entry: useNextUpSort.SortEntry?): string
	if not entry then
		return blankRatingText
	end

	local totalVotes = entry.upVotes + entry.downVotes
	if totalVotes == 0 then
		return blankRatingText
	end

	return tostring(math.floor(entry.upVotes / totalVotes * 100))
end

export type Props = {
	entryData: useNextUpSort.SortEntry?,
	topicId: string,
	positionIndex: number,
	attemptPreloadImage: boolean?,
	onTileImageLoaded: (() -> ())?,
}

local function NextUpTile(props: Props)
	local eventIngest = useRoactService(AppEventIngestService)
	local tokens = useTokens()
	local localized = useLocalization({
		RatingText = {
			"Feature.GameDetails.RatingPercentOnly",
			percentRating = getRatingText(props.entryData),
		},
	})
	local footerLayoutOrder = 3

	if not FFlagEnableNextUpImageLatencyTelemetry then
		React.useEffect(function()
			if not (props.entryData and props.attemptPreloadImage) then
				return
			end

			local imageUrl = props.entryData.image
			if imageUrl and imageUrl ~= "" then
				ContentProvider:PreloadAsync({ imageUrl })
			end
		end, { props.entryData, props.attemptPreloadImage } :: { any })
	end

	local function onJoinGame()
		if not props.entryData then
			return
		end

		if FFlagEnableNextUpImageLatencyTelemetry then
			Telemetry.logNextUpExitModalAction(Telemetry.NextUpSortViewActionType.JoinGame)
		end

		local joinAttemptId = HttpService:GenerateGUID(false):lower()
		sendGamePlayIntent(eventIngest, "InGameExitPage", {
			placeId = props.entryData.placeId,
			rootPlaceId = tonumber(props.entryData.placeId),
			universeId = props.entryData.universeId,
			sortEntryIndex = tostring(props.positionIndex),
			gameSetTypeId = props.topicId,
			joinAttemptId = joinAttemptId,
		})

		if FFlagEnableNextUpTileLeaveGameOnTileJoin then
			if not RunService:IsStudio() then
				LaunchGame(props.entryData.placeId, nil, { joinAttemptId = joinAttemptId }, nil :: any)
			end

			-- the message bus that LaunchGame publishes to may not be subscribed to while in experiences depending on device,
			-- so we need to go back to the universal app to ensure the message is read promptly
			leaveGame(false)
		else
			if RunService:IsStudio() then
				leaveGame(true)
				return
			end

			LaunchGame(props.entryData.placeId, nil, { joinAttemptId = joinAttemptId }, nil :: any)
		end
	end

	local onImageStateChanged = if FFlagEnableNextUpImageLatencyTelemetry
		then React.useCallback(function(loaded: boolean)
			if loaded and props.onTileImageLoaded then
				props.onTileImageLoaded()
			end
		end, { props.onTileImageLoaded })
		else nil :: never

	return React.createElement(View, {
		tag = "size-0-0 auto-y col gap-small align-x-center",
		LayoutOrder = props.positionIndex,
	}, {
		thumbnail = if FFlagEnableNextUpImageLatencyTelemetry
			then React.createElement(ImageOrSkeleton, {
				LayoutOrder = 1,
				SizeConstraint = Enum.SizeConstraint.RelativeXX,
				Size = UDim2.fromScale(1, 9 / 16),
				tag = "radius-medium",
				onActivated = onJoinGame,
				Image = if props.entryData then props.entryData.image else nil,
				onImageStateChanged = onImageStateChanged,
			})
			else nil,
		thumbnailContainer = if not FFlagEnableNextUpImageLatencyTelemetry
			then React.createElement(View, {
				LayoutOrder = 1,
				SizeConstraint = Enum.SizeConstraint.RelativeXX,
				Size = UDim2.fromScale(1, 9 / 16),
				onActivated = onJoinGame,
			}, {
				image = if props.entryData
					then React.createElement(LoadableImage, {
						BackgroundTransparency = 1,
						cornerRadius = UDim.new(0, tokens.Radius.Medium),
						Image = props.entryData.image,
						Size = UDim2.fromScale(1, 1),
						useShimmerAnimationWhileLoading = true,
						showFailedStateWhenLoadingFailed = true,
					})
					else React.createElement(Skeleton, {
						tag = "size-full-full radius-medium",
					}),
			})
			else nil,
		titleContainer = React.createElement(View, {
			tag = "size-full-0 auto-y col",
			LayoutOrder = 2,
		}, {
			title = React.createElement(Text, {
				tag = "size-full-0 auto-y text-no-wrap text-title-medium content-emphasis text-align-x-left text-truncate-end",
				LayoutOrder = 2,
				Text = if props.entryData then props.entryData.name else "",
			}),
			rating = if not FFlagAddSponsoredFooterOnNextUp
				then React.createElement(Text, {
					tag = "size-full-0 auto-y text-no-wrap text-body-medium content-default text-align-x-left",
					LayoutOrder = 3,
					Text = if props.entryData then localized.RatingText else "",
				})
				else nil,
			footer = if FFlagAddSponsoredFooterOnNextUp
				then if props.entryData and props.entryData.isSponsored
					then React.createElement(SponsoredFooter, {
						LayoutOrder = footerLayoutOrder,
					})
					else React.createElement(Text, {
						tag = "size-full-0 auto-y text-no-wrap text-body-medium content-default text-align-x-left",
						LayoutOrder = footerLayoutOrder,
						Text = if props.entryData then localized.RatingText else "",
					})
				else nil,
		}),
	})
end

return React.memo(NextUpTile)

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)

local Constants = require(script.Parent.Parent.Parent.Constants)

local CollapsibleSection = require(script.Parent.CollapsibleSection)

local VoiceDebugData = require(script.Parent.VoiceDebugData)
type SubscriptionData = VoiceDebugData.SubscriptionData

local ROW_HEIGHT = 20

local AUDIO_SSRC_COL_WIDTH = UDim.new(0.13, 0)
local FEED_ID_COL_WIDTH = UDim.new(0.11, 0)
local USER_ID_COL_WIDTH = UDim.new(0.11, 0)
local AUDIO_MID_COL_WIDTH = UDim.new(0.12, 0)
local BITRATE_COL_WIDTH = UDim.new(0.11, 0)
local CODEC_COL_WIDTH = UDim.new(0.14, 0)
local CULLED_COL_WIDTH = UDim.new(0.10, 0)
local MUTED_COL_WIDTH = UDim.new(0.09, 0)
local MUTED_LOCALLY_COL_WIDTH = UDim.new(0.09, 0)

local FEED_ID_COL_POS = AUDIO_SSRC_COL_WIDTH
local USER_ID_COL_POS = FEED_ID_COL_POS + FEED_ID_COL_WIDTH
local AUDIO_MID_COL_POS = USER_ID_COL_POS + USER_ID_COL_WIDTH
local BITRATE_COL_POS = AUDIO_MID_COL_POS + AUDIO_MID_COL_WIDTH
local CODEC_COL_POS = BITRATE_COL_POS + BITRATE_COL_WIDTH
local CULLED_COL_POS = CODEC_COL_POS + CODEC_COL_WIDTH
local MUTED_COL_POS = CULLED_COL_POS + CULLED_COL_WIDTH
local MUTED_LOCALLY_COL_POS = MUTED_COL_POS + MUTED_COL_WIDTH

local CULLED_ROW_TINT = Constants.Color.TextBoxGray

local function formatHexSsrc(ssrc: number?): string
	if type(ssrc) ~= "number" or ssrc ~= ssrc or ssrc % 1 ~= 0 then
		return "—"
	end
	return string.format("0x%08X", ssrc)
end

local function formatOrDash(value: any): string
	if value == nil or value == "" then
		return "—"
	end
	return tostring(value)
end

local function formatBool(value: boolean?): string
	if type(value) ~= "boolean" then
		return "—"
	end
	return value and "Yes" or "No"
end

local function formatBitrate(subscription: SubscriptionData): string
	if subscription.culled == true then
		return "—"
	end
	local kbps = subscription.incomingBitrateKbps
	if type(kbps) ~= "number" then
		return "—"
	end
	return string.format("%.2f kbps", kbps)
end

local function formatCodec(subscription: SubscriptionData): string
	if subscription.culled == true then
		return "—"
	end
	return formatOrDash(subscription.codecName)
end

local function HeaderCell(props)
	return Roact.createElement("TextLabel", {
		Text = string.upper(props.text),
		Size = props.size,
		Position = props.pos,
		Font = Constants.Font.MainWindowHeader,
		TextSize = Constants.DefaultFontSize.MainWindowHeader,
		TextColor3 = Constants.Color.BorderGray,
		TextXAlignment = Enum.TextXAlignment.Left,
		BackgroundTransparency = 1,
	})
end

local function SubscriptionsTable(props: { subscriptions: { SubscriptionData }?, layoutOrder: number? })
	local subscriptions = props.subscriptions or {} :: { SubscriptionData }
	local layoutOrder = props.layoutOrder

	local rows: { [string]: any } = {}
	for i, subscription in subscriptions do
		local culled = subscription.culled == true
		local rowKey = "subscription" .. i

		rows[rowKey] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			LayoutOrder = i,
			BackgroundColor3 = CULLED_ROW_TINT,
			BackgroundTransparency = culled and 0.6 or 1,
			BorderSizePixel = 0,
		}, {
			AudioSsrc = Roact.createElement(CellLabel, {
				text = formatHexSsrc(subscription.audioSsrc),
				size = UDim2.new(AUDIO_SSRC_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(0, 0, 0, 0),
			}),
			FeedId = Roact.createElement(CellLabel, {
				text = formatOrDash(subscription.feedReferenceId),
				size = UDim2.new(FEED_ID_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(FEED_ID_COL_POS, UDim.new(0, 0)),
			}),
			UserId = Roact.createElement(CellLabel, {
				text = formatOrDash(subscription.userId),
				size = UDim2.new(USER_ID_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(USER_ID_COL_POS, UDim.new(0, 0)),
			}),
			AudioMid = Roact.createElement(CellLabel, {
				text = formatOrDash(subscription.audioMid),
				size = UDim2.new(AUDIO_MID_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(AUDIO_MID_COL_POS, UDim.new(0, 0)),
				textTruncate = Enum.TextTruncate.AtEnd,
			}),
			Bitrate = Roact.createElement(CellLabel, {
				text = formatBitrate(subscription),
				size = UDim2.new(BITRATE_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(BITRATE_COL_POS, UDim.new(0, 0)),
			}),
			Codec = Roact.createElement(CellLabel, {
				text = formatCodec(subscription),
				size = UDim2.new(CODEC_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(CODEC_COL_POS, UDim.new(0, 0)),
				textTruncate = Enum.TextTruncate.AtEnd,
			}),
			Culled = Roact.createElement(CellLabel, {
				text = formatBool(subscription.culled),
				size = UDim2.new(CULLED_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(CULLED_COL_POS, UDim.new(0, 0)),
			}),
			Muted = Roact.createElement(CellLabel, {
				text = formatBool(subscription.isMuted),
				size = UDim2.new(MUTED_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(MUTED_COL_POS, UDim.new(0, 0)),
			}),
			MutedLocally = Roact.createElement(CellLabel, {
				text = formatBool(subscription.isMutedLocally),
				size = UDim2.new(MUTED_LOCALLY_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(MUTED_LOCALLY_COL_POS, UDim.new(0, 0)),
			}),
		})
	end

	if next(rows) == nil then
		rows.placeholder = Roact.createElement(CellLabel, {
			text = "—",
			layoutOrder = 1,
			size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			pos = UDim2.new(),
		})
	end

	local header = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		LayoutOrder = 1,
		BackgroundTransparency = 1,
	}, {
		AudioSsrc = Roact.createElement(HeaderCell, {
			text = "Audio Ssrc",
			size = UDim2.new(AUDIO_SSRC_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(0, 0, 0, 0),
		}),
		FeedId = Roact.createElement(HeaderCell, {
			text = "Feed ID",
			size = UDim2.new(FEED_ID_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(FEED_ID_COL_POS, UDim.new(0, 0)),
		}),
		UserId = Roact.createElement(HeaderCell, {
			text = "User ID",
			size = UDim2.new(USER_ID_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(USER_ID_COL_POS, UDim.new(0, 0)),
		}),
		AudioMid = Roact.createElement(HeaderCell, {
			text = "Audio Mid",
			size = UDim2.new(AUDIO_MID_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(AUDIO_MID_COL_POS, UDim.new(0, 0)),
		}),
		Bitrate = Roact.createElement(HeaderCell, {
			text = "Bitrate",
			size = UDim2.new(BITRATE_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(BITRATE_COL_POS, UDim.new(0, 0)),
		}),
		Codec = Roact.createElement(HeaderCell, {
			text = "Codec",
			size = UDim2.new(CODEC_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(CODEC_COL_POS, UDim.new(0, 0)),
		}),
		Culled = Roact.createElement(HeaderCell, {
			text = "Culled",
			size = UDim2.new(CULLED_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(CULLED_COL_POS, UDim.new(0, 0)),
		}),
		Muted = Roact.createElement(HeaderCell, {
			text = "Muted",
			size = UDim2.new(MUTED_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(MUTED_COL_POS, UDim.new(0, 0)),
		}),
		MutedLocally = Roact.createElement(HeaderCell, {
			text = "Muted Locally",
			size = UDim2.new(MUTED_LOCALLY_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(MUTED_LOCALLY_COL_POS, UDim.new(0, 0)),
		}),
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Header = header,
		Rows = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 2,
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Rows = Roact.createFragment(rows),
		}),
	})
end

local function SubscriptionsPanel(props: { subscriptions: { SubscriptionData }?, layoutOrder: number? })
	local subscriptions = props.subscriptions
	local layoutOrder = props.layoutOrder

	return Roact.createElement(CollapsibleSection, {
		title = "Subscriptions",
		layoutOrder = layoutOrder,
	}, {
		Table = Roact.createElement(SubscriptionsTable, {
			subscriptions = subscriptions,
			layoutOrder = 1,
		}),
	})
end

return SubscriptionsPanel

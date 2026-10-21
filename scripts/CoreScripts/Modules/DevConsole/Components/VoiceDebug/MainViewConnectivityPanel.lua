local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)

local Constants = require(script.Parent.Parent.Parent.Constants)

local parseIceCandidate = require(script.Parent.IceCandidateParser)
local CollapsibleSection = require(script.Parent.CollapsibleSection)

local VoiceDebugData = require(script.Parent.VoiceDebugData)
type ConnectivityData = VoiceDebugData.ConnectivityData
type IceCandidateData = VoiceDebugData.IceCandidateData

local getFFlagVoiceDebugConsoleV2 = require(script.Parent.GetFFlagVoiceDebugConsoleV2)

local PADDING = Constants.GeneralFormatting.MainRowPadding

local ROW_HEIGHT = 20
local CANDIDATE_COL_WIDTH = UDim.new(0.55, 0)
local MID_COL_WIDTH = UDim.new(0.25, 0)
local MLINE_COL_WIDTH = UDim.new(0.2, 0)
local LABEL_COL_WIDTH = UDim.new(0.4, 0)
local LEG_COL_WIDTH = UDim.new(0.3, 0)

local SUBTITLE_COLOR_HEX = "B8B8B8"
local REDACTED_MARKER_COLOR_HEX = "6B6F75"

local STATUS_DOT_OK = Constants.Color.HoverGreen
local STATUS_DOT_WARN = Constants.Color.WarningYellow
local STATUS_DOT_BAD = Constants.Color.ErrorRed
local STATUS_DOT_DIM = Constants.Color.UnselectedGray

local OK_STATES = { complete = true, completed = true, connected = true, stable = true }
local WARN_STATES = { checking = true, connecting = true, new = true }
local BAD_STATES = { failed = true, disconnected = true, closed = true }

local DOT_SIZE = 7
local DOT_GAP = 5
local CENTER_Y_SCALE = 0.5
local ALERT_ACCENT_WIDTH = 2

local PILL_COLORS = {
	host = { background = Color3.fromRGB(13, 39, 64), text = Color3.fromRGB(95, 184, 255) },
	srflx = { background = Color3.fromRGB(42, 26, 48), text = Color3.fromRGB(176, 122, 240) },
	relay = { background = Color3.fromRGB(42, 32, 16), text = Color3.fromRGB(224, 176, 64) },
	prflx = { background = Color3.fromRGB(16, 42, 32), text = Color3.fromRGB(96, 200, 160) },
}
local PILL_COLOR_DEFAULT = { background = Color3.fromRGB(28, 28, 28), text = Color3.fromRGB(107, 111, 117) }
local PILL_HEIGHT = 16
local PILL_CORNER_RADIUS = 8
local PILL_PADDING = 7

local PARSED_TYPE_COL_WIDTH = UDim.new(0.17, 0)
local PARSED_PROTO_COL_WIDTH = UDim.new(0.14, 0)
local PARSED_PRIORITY_COL_WIDTH = UDim.new(0.25, 0)
local PARSED_COMP_COL_WIDTH = UDim.new(0.14, 0)
local PARSED_MID_COL_WIDTH = UDim.new(0.17, 0)
local PARSED_IDX_COL_WIDTH = UDim.new(0.13, 0)

local SDP_CONTENT_INDENT = 20

local function richTextEscape(text: string): string
	return (
		string.gsub(text, "[<>&\"']", {
			["<"] = "&lt;",
			[">"] = "&gt;",
			["&"] = "&amp;",
			['"'] = "&quot;",
			["'"] = "&apos;",
		})
	)
end

local function GroupHeader(props)
	local title = richTextEscape(props.title)
	local subtitle = props.subtitle

	local text = string.format("<b>%s</b>", title)
	if subtitle then
		text = text .. string.format('  <font color="#%s">%s</font>', SUBTITLE_COLOR_HEX, richTextEscape(subtitle))
	end

	return Roact.createElement(CellLabel, {
		text = text,
		richText = true,
		layoutOrder = props.layoutOrder,
		size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		pos = UDim2.new(),
	})
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

local function formatLegState(value: string?)
	if value == nil or value == "" then
		return "—"
	end
	return value
end

local function statusDotColor(state: string?)
	if state ~= nil then
		if OK_STATES[state] then
			return STATUS_DOT_OK
		elseif WARN_STATES[state] then
			return STATUS_DOT_WARN
		elseif BAD_STATES[state] then
			return STATUS_DOT_BAD
		end
	end
	return STATUS_DOT_DIM
end

local function isAlertColor(color: Color3?): boolean
	return color == STATUS_DOT_WARN or color == STATUS_DOT_BAD
end

local function LegCell(props: { color: Color3?, text: string, size: UDim2, pos: UDim2 })
	local color = props.color
	local text = props.text
	local size = props.size
	local pos = props.pos

	local textOffset = color and (DOT_SIZE + DOT_GAP) or 0

	return Roact.createElement("Frame", {
		Size = size,
		Position = pos,
		BackgroundTransparency = 1,
	}, {
		Dot = color and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, CENTER_Y_SCALE),
			Position = UDim2.new(0, 0, CENTER_Y_SCALE, 0),
			Size = UDim2.new(0, DOT_SIZE, 0, DOT_SIZE),
			BackgroundColor3 = color,
			BorderSizePixel = 0,
		}, {
			Corner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}) or nil,

		Value = Roact.createElement(CellLabel, {
			text = text,
			size = UDim2.new(1, -textOffset, 1, 0),
			pos = UDim2.new(0, textOffset, 0, 0),
		}),
	})
end

local function formatSelectedCandidatePair(localType: string?, remoteType: string?, localProtocol: string?): string?
	if localType == nil or localType == "" or remoteType == nil or remoteType == "" then
		return nil
	end
	if localProtocol and localProtocol ~= "" then
		return string.format("%s ↔ %s (%s)", localType, remoteType, localProtocol)
	end
	return string.format("%s ↔ %s", localType, remoteType)
end

local function TransportStateTable(props: { connectivity: ConnectivityData?, layoutOrder: number? })
	local connectivity: ConnectivityData = props.connectivity or {}
	local layoutOrder = props.layoutOrder
	local isConsoleV2Enabled = getFFlagVoiceDebugConsoleV2()

	local stateRowDefs = {
		{
			label = "ICE gathering",
			publish = connectivity.iceGatheringStatePublish,
			subscribe = connectivity.iceGatheringStateSubscribe,
		},
		{
			label = "ICE connection",
			publish = connectivity.iceConnectionStatePublish,
			subscribe = connectivity.iceConnectionStateSubscribe,
		},
		{
			label = "Signaling",
			publish = connectivity.signalingStatePublish,
			subscribe = connectivity.signalingStateSubscribe,
		},
	}

	local rows: { [string]: any } = {}
	for i, rowDef in stateRowDefs do
		local publishColor = isConsoleV2Enabled and statusDotColor(rowDef.publish) or nil
		local subscribeColor = isConsoleV2Enabled and statusDotColor(rowDef.subscribe) or nil
		local isAlert = isConsoleV2Enabled and (isAlertColor(publishColor) or isAlertColor(subscribeColor))

		rows["row" .. i] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			LayoutOrder = i,
			BackgroundTransparency = 1,
		}, {
			Accent = isConsoleV2Enabled and Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(0, ALERT_ACCENT_WIDTH, 1, 0),
				BackgroundColor3 = Constants.Color.WarningYellow,
				BackgroundTransparency = isAlert and 0 or 1,
				BorderSizePixel = 0,
			}) or nil,

			Label = Roact.createElement(CellLabel, {
				text = rowDef.label,
				size = UDim2.new(LABEL_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(0, 0, 0, 0),
				textTruncate = Enum.TextTruncate.AtEnd,
			}),
			Publish = Roact.createElement(LegCell, {
				text = formatLegState(rowDef.publish),
				color = publishColor,
				size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(LABEL_COL_WIDTH, UDim.new(0, 0)),
			}),
			Subscribe = Roact.createElement(LegCell, {
				text = formatLegState(rowDef.subscribe),
				color = subscribeColor,
				size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(LABEL_COL_WIDTH + LEG_COL_WIDTH, UDim.new(0, 0)),
			}),
		})
	end

	local restartText = connectivity.rebootCount and tostring(connectivity.rebootCount) or nil
	rows.restartRow = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		LayoutOrder = #stateRowDefs + 1,
		BackgroundTransparency = 1,
	}, {
		Label = Roact.createElement(CellLabel, {
			text = "ICE restarts (this session)",
			size = UDim2.new(LABEL_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(0, 0, 0, 0),
			textTruncate = Enum.TextTruncate.AtEnd,
		}),
		Publish = Roact.createElement(LegCell, {
			text = formatLegState(restartText),
			size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(LABEL_COL_WIDTH, UDim.new(0, 0)),
		}),
		Subscribe = Roact.createElement(LegCell, {
			text = formatLegState(restartText),
			size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(LABEL_COL_WIDTH + LEG_COL_WIDTH, UDim.new(0, 0)),
		}),
	})

	local timeToConnectedText: string? = nil
	if connectivity.timeToConnectedMs and connectivity.timeToConnectedMs > 0 then
		timeToConnectedText = string.format("%.0f ms", connectivity.timeToConnectedMs)
	end
	rows.timeToConnectedRow = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		LayoutOrder = #stateRowDefs + 2,
		BackgroundTransparency = 1,
	}, {
		Label = Roact.createElement(CellLabel, {
			text = "Time to connected",
			size = UDim2.new(LABEL_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(0, 0, 0, 0),
			textTruncate = Enum.TextTruncate.AtEnd,
		}),
		Publish = Roact.createElement(LegCell, {
			text = formatLegState(timeToConnectedText),
			size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(LABEL_COL_WIDTH, UDim.new(0, 0)),
		}),
		Subscribe = Roact.createElement(LegCell, {
			text = formatLegState(timeToConnectedText),
			size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(LABEL_COL_WIDTH + LEG_COL_WIDTH, UDim.new(0, 0)),
		}),
	})

	local publishPairText = formatSelectedCandidatePair(
		connectivity.selectedCandidatePairLocalTypePublish,
		connectivity.selectedCandidatePairRemoteTypePublish,
		connectivity.selectedCandidatePairLocalProtocolPublish
	)
	local subscribePairText = formatSelectedCandidatePair(
		connectivity.selectedCandidatePairLocalTypeSubscribe,
		connectivity.selectedCandidatePairRemoteTypeSubscribe,
		connectivity.selectedCandidatePairLocalProtocolSubscribe
	)
	rows.selectedCandidatePairRow = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		LayoutOrder = #stateRowDefs + 3,
		BackgroundTransparency = 1,
	}, {
		Label = Roact.createElement(CellLabel, {
			text = "Selected candidate pair",
			size = UDim2.new(LABEL_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(0, 0, 0, 0),
			textTruncate = Enum.TextTruncate.AtEnd,
		}),
		Publish = Roact.createElement(LegCell, {
			text = formatLegState(publishPairText),
			size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(LABEL_COL_WIDTH, UDim.new(0, 0)),
		}),
		Subscribe = Roact.createElement(LegCell, {
			text = formatLegState(subscribePairText),
			size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
			pos = UDim2.new(LABEL_COL_WIDTH + LEG_COL_WIDTH, UDim.new(0, 0)),
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
		Title = isConsoleV2Enabled and Roact.createElement(GroupHeader, {
			title = "Transport state",
			subtitle = "publish / subscribe compared",
			layoutOrder = 1,
		}) or Roact.createElement(CellLabel, {
			text = "Transport state",
			bold = true,
			layoutOrder = 1,
			size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			pos = UDim2.new(),
		}),
		Header = Roact.createElement(
			"Frame",
			{
				Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
				LayoutOrder = 2,
				BackgroundTransparency = 1,
			},
			if isConsoleV2Enabled
				then {
					Label = Roact.createElement(CellLabel, {
						text = "",
						size = UDim2.new(LABEL_COL_WIDTH, UDim.new(1, 0)),
						pos = UDim2.new(0, 0, 0, 0),
					}),
					Publish = Roact.createElement(HeaderCell, {
						text = "Publish",
						size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
						pos = UDim2.new(LABEL_COL_WIDTH, UDim.new(0, 0)),
					}),
					Subscribe = Roact.createElement(HeaderCell, {
						text = "Subscribe",
						size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
						pos = UDim2.new(LABEL_COL_WIDTH + LEG_COL_WIDTH, UDim.new(0, 0)),
					}),
				}
				else {
					Label = Roact.createElement(CellLabel, {
						text = "",
						size = UDim2.new(LABEL_COL_WIDTH, UDim.new(1, 0)),
						pos = UDim2.new(0, 0, 0, 0),
					}),
					Publish = Roact.createElement(CellLabel, {
						text = "PUBLISH",
						bold = true,
						size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
						pos = UDim2.new(LABEL_COL_WIDTH, UDim.new(0, 0)),
					}),
					Subscribe = Roact.createElement(CellLabel, {
						text = "SUBSCRIBE",
						bold = true,
						size = UDim2.new(LEG_COL_WIDTH, UDim.new(1, 0)),
						pos = UDim2.new(LABEL_COL_WIDTH + LEG_COL_WIDTH, UDim.new(0, 0)),
					}),
				}
		),
		Rows = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 3,
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Rows = Roact.createFragment(rows),
		}),
	})
end

local function formatMLineIndex(candidate: IceCandidateData)
	local mLineIndex = candidate.sdpMLineIndex
	if mLineIndex == nil then
		return "—"
	end
	return tostring(mLineIndex)
end

local function formatOrDash(value: string?): string
	if value == nil or value == "" then
		return "—"
	end
	return value
end

local function TypePill(props)
	local candidateType = props.candidateType
	local colors = (candidateType and PILL_COLORS[candidateType]) or PILL_COLOR_DEFAULT

	return Roact.createElement("Frame", {
		Size = props.size,
		Position = props.pos,
		BackgroundTransparency = 1,
	}, {
		Pill = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, CENTER_Y_SCALE),
			Position = UDim2.new(0, 0, CENTER_Y_SCALE, 0),
			Size = UDim2.new(0, 0, 0, PILL_HEIGHT),
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundColor3 = colors.background,
			BorderSizePixel = 0,
		}, {
			Corner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, PILL_CORNER_RADIUS),
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, PILL_PADDING),
				PaddingRight = UDim.new(0, PILL_PADDING),
			}),
			Label = Roact.createElement("TextLabel", {
				Text = formatOrDash(candidateType),
				Size = UDim2.new(0, 0, 1, 0),
				AutomaticSize = Enum.AutomaticSize.X,
				Font = Constants.Font.MainWindow,
				TextSize = Constants.DefaultFontSize.MainWindow - 2,
				TextColor3 = colors.text,
				TextXAlignment = Enum.TextXAlignment.Center,
				BackgroundTransparency = 1,
			}),
		}),
	})
end

-- ICE candidates are stable for the life of a call, so the same candidate string gets re-parsed on
-- every stats tick for as long as the panel is mounted. Memoize by the (already-redacted) string
-- rather than converting these to PureComponents, since candidates/tab-state/props change together
-- on every tick anyway -- a prop-equality check wouldn't skip re-renders here, only re-parsing would.
local parseIceCandidateCache: { [string]: any } = {}
local function parseIceCandidateCached(candidate: string?)
	if not candidate then
		return parseIceCandidate(candidate)
	end
	local cached = parseIceCandidateCache[candidate]
	if cached == nil then
		cached = parseIceCandidate(candidate)
		parseIceCandidateCache[candidate] = cached
	end
	return cached
end

local function CandidateTable(props: { title: string, candidates: { IceCandidateData }?, layoutOrder: number? })
	local title = props.title
	local candidates: { IceCandidateData } = props.candidates or {}
	local layoutOrder = props.layoutOrder
	local isConsoleV2Enabled = getFFlagVoiceDebugConsoleV2()

	local rows: { [string]: any } = {}
	for i, candidate in candidates do
		if isConsoleV2Enabled then
			local parsed = parseIceCandidateCached(candidate.candidate)
			rows["candidate" .. i] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
				LayoutOrder = i,
				BackgroundTransparency = 1,
			}, {
				Type = Roact.createElement(TypePill, {
					candidateType = parsed.candidateType,
					size = UDim2.new(PARSED_TYPE_COL_WIDTH, UDim.new(1, 0)),
					pos = UDim2.new(0, 0, 0, 0),
				}),
				Proto = Roact.createElement(CellLabel, {
					text = formatOrDash(parsed.protocol),
					size = UDim2.new(PARSED_PROTO_COL_WIDTH, UDim.new(1, 0)),
					pos = UDim2.new(PARSED_TYPE_COL_WIDTH, UDim.new(0, 0)),
				}),
				Priority = Roact.createElement(CellLabel, {
					text = formatOrDash(parsed.priority),
					size = UDim2.new(PARSED_PRIORITY_COL_WIDTH, UDim.new(1, 0)),
					pos = UDim2.new(PARSED_TYPE_COL_WIDTH + PARSED_PROTO_COL_WIDTH, UDim.new(0, 0)),
				}),
				Comp = Roact.createElement(CellLabel, {
					text = formatOrDash(parsed.component),
					size = UDim2.new(PARSED_COMP_COL_WIDTH, UDim.new(1, 0)),
					pos = UDim2.new(PARSED_TYPE_COL_WIDTH + PARSED_PROTO_COL_WIDTH + PARSED_PRIORITY_COL_WIDTH, UDim.new(0, 0)),
				}),
				Mid = Roact.createElement(CellLabel, {
					text = formatOrDash(candidate.sdpMid),
					size = UDim2.new(PARSED_MID_COL_WIDTH, UDim.new(1, 0)),
					pos = UDim2.new(
						PARSED_TYPE_COL_WIDTH + PARSED_PROTO_COL_WIDTH + PARSED_PRIORITY_COL_WIDTH + PARSED_COMP_COL_WIDTH,
						UDim.new(0, 0)
					),
					textTruncate = Enum.TextTruncate.AtEnd,
				}),
				Idx = Roact.createElement(CellLabel, {
					text = formatMLineIndex(candidate),
					size = UDim2.new(PARSED_IDX_COL_WIDTH, UDim.new(1, 0)),
					pos = UDim2.new(
						PARSED_TYPE_COL_WIDTH
							+ PARSED_PROTO_COL_WIDTH
							+ PARSED_PRIORITY_COL_WIDTH
							+ PARSED_COMP_COL_WIDTH
							+ PARSED_MID_COL_WIDTH,
						UDim.new(0, 0)
					),
				}),
			})
		else
			rows["candidate" .. i] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
				LayoutOrder = i,
				BackgroundTransparency = 1,
			}, {
				Candidate = Roact.createElement(CellLabel, {
					text = candidate.candidate,
					size = UDim2.new(CANDIDATE_COL_WIDTH, UDim.new(1, 0)),
					pos = UDim2.new(0, 0, 0, 0),
					textTruncate = Enum.TextTruncate.AtEnd,
				}),
				SdpMid = Roact.createElement(CellLabel, {
					text = candidate.sdpMid,
					size = UDim2.new(MID_COL_WIDTH, UDim.new(1, 0)),
					pos = UDim2.new(CANDIDATE_COL_WIDTH, UDim.new(0, 0)),
					textTruncate = Enum.TextTruncate.AtEnd,
				}),
				SdpMLineIndex = Roact.createElement(CellLabel, {
					text = formatMLineIndex(candidate),
					size = UDim2.new(MLINE_COL_WIDTH, UDim.new(1, 0)),
					pos = UDim2.new(CANDIDATE_COL_WIDTH + MID_COL_WIDTH, UDim.new(0, 0)),
				}),
			})
		end
	end

	if next(rows) == nil then
		rows.placeholder = Roact.createElement(CellLabel, {
			text = "—",
			layoutOrder = 1,
			size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			pos = UDim2.new(),
		})
	end

	local header
	if isConsoleV2Enabled then
		header = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			LayoutOrder = 2,
			BackgroundTransparency = 1,
		}, {
			Type = Roact.createElement(HeaderCell, {
				text = "Type",
				size = UDim2.new(PARSED_TYPE_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(0, 0, 0, 0),
			}),
			Proto = Roact.createElement(HeaderCell, {
				text = "Proto",
				size = UDim2.new(PARSED_PROTO_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(PARSED_TYPE_COL_WIDTH, UDim.new(0, 0)),
			}),
			Priority = Roact.createElement(HeaderCell, {
				text = "Priority",
				size = UDim2.new(PARSED_PRIORITY_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(PARSED_TYPE_COL_WIDTH + PARSED_PROTO_COL_WIDTH, UDim.new(0, 0)),
			}),
			Comp = Roact.createElement(HeaderCell, {
				text = "Comp",
				size = UDim2.new(PARSED_COMP_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(PARSED_TYPE_COL_WIDTH + PARSED_PROTO_COL_WIDTH + PARSED_PRIORITY_COL_WIDTH, UDim.new(0, 0)),
			}),
			Mid = Roact.createElement(HeaderCell, {
				text = "Mid",
				size = UDim2.new(PARSED_MID_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(
					PARSED_TYPE_COL_WIDTH + PARSED_PROTO_COL_WIDTH + PARSED_PRIORITY_COL_WIDTH + PARSED_COMP_COL_WIDTH,
					UDim.new(0, 0)
				),
			}),
			Idx = Roact.createElement(HeaderCell, {
				text = "Idx",
				size = UDim2.new(PARSED_IDX_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(
					PARSED_TYPE_COL_WIDTH
						+ PARSED_PROTO_COL_WIDTH
						+ PARSED_PRIORITY_COL_WIDTH
						+ PARSED_COMP_COL_WIDTH
						+ PARSED_MID_COL_WIDTH,
					UDim.new(0, 0)
				),
			}),
		})
	else
		header = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			LayoutOrder = 2,
			BackgroundTransparency = 1,
		}, {
			Candidate = Roact.createElement(CellLabel, {
				text = "CANDIDATE",
				bold = true,
				size = UDim2.new(CANDIDATE_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(0, 0, 0, 0),
			}),
			SdpMid = Roact.createElement(CellLabel, {
				text = "SDP MID",
				bold = true,
				size = UDim2.new(MID_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(CANDIDATE_COL_WIDTH, UDim.new(0, 0)),
			}),
			SdpMLineIndex = Roact.createElement(CellLabel, {
				text = "SDP MLINE INDEX",
				bold = true,
				size = UDim2.new(MLINE_COL_WIDTH, UDim.new(1, 0)),
				pos = UDim2.new(CANDIDATE_COL_WIDTH + MID_COL_WIDTH, UDim.new(0, 0)),
			}),
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Title = isConsoleV2Enabled and Roact.createElement(GroupHeader, {
			title = title,
			subtitle = string.format("%d local", #candidates),
			layoutOrder = 1,
		}) or Roact.createElement(CellLabel, {
			text = title,
			bold = true,
			layoutOrder = 1,
			size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			pos = UDim2.new(),
		}),
		Header = header,
		Rows = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 3,
			BackgroundTransparency = 1,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Rows = Roact.createFragment(rows),
		}),
	})
end

local function toRichTextSdp(sdp: string?): string?
	if sdp == nil then
		return nil
	end
	return (
		string.gsub(
			richTextEscape(sdp),
			"redacted",
			string.format('<font color="#%s">redacted</font>', REDACTED_MARKER_COLOR_HEX)
		)
	)
end

local SdpSection = Roact.PureComponent:extend("SdpSection")

function SdpSection:init()
	self.state = {
		expanded = false,
	}

	self.onButtonPress = function()
		self:setState(function(oldState)
			return {
				expanded = not oldState.expanded,
			}
		end)
	end
end

function SdpSection:render()
	local label = self.props.label
	-- Already redacted natively before it ever reaches Lua -- see lastVoiceChatConnectivity()'s
	-- implementation -- no client-side redaction needed here.
	local sdp = self.props.sdp
	local layoutOrder = self.props.layoutOrder
	local isConsoleV2Enabled = getFFlagVoiceDebugConsoleV2()
	local hasSdp = sdp ~= nil and sdp ~= ""
	local displaySdp = (isConsoleV2Enabled and hasSdp) and toRichTextSdp(sdp) or sdp

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Button = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			isExpanded = self.state.expanded,
			isExpandable = hasSdp,
			hideLines = true,
			onButtonPress = hasSdp and self.onButtonPress or nil,
			layoutOrder = 1,
		}, {
			Label = Roact.createElement(CellLabel, {
				text = hasSdp and label or string.format("%s: —", label),
				size = UDim2.new(1, -SDP_CONTENT_INDENT, 1, 0),
				pos = UDim2.new(0, SDP_CONTENT_INDENT, 0, 0),
			}),
		}),

		Content = (hasSdp and self.state.expanded) and Roact.createElement("TextLabel", {
			Text = displaySdp,
			RichText = isConsoleV2Enabled,
			TextSize = isConsoleV2Enabled and (Constants.DefaultFontSize.MainWindow - 3)
				or Constants.DefaultFontSize.MainWindow,
			TextColor3 = Constants.Color.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextWrapped = true,
			Font = Constants.Font.MainWindow,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = UDim2.new(1, -SDP_CONTENT_INDENT, 0, 0),
			Position = UDim2.new(0, SDP_CONTENT_INDENT, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
		}) or nil,
	})
end

local function ConnectivityPanel(props: { connectivity: ConnectivityData?, layoutOrder: number? })
	local connectivity: ConnectivityData = props.connectivity or {}
	local layoutOrder = props.layoutOrder
	local isConsoleV2Enabled = getFFlagVoiceDebugConsoleV2()

	local children = {
		TransportState = isConsoleV2Enabled and Roact.createElement(TransportStateTable, {
			connectivity = connectivity,
			layoutOrder = 1,
		}) or nil,

		PublishCandidates = Roact.createElement(CandidateTable, {
			title = "Publish ICE candidates",
			candidates = connectivity.icePublishCandidates,
			layoutOrder = 2,
		}),

		SubscribeCandidates = Roact.createElement(CandidateTable, {
			title = "Subscribe ICE candidates",
			candidates = connectivity.iceSubscribeCandidates,
			layoutOrder = 3,
		}),

		SessionDescriptionsHeader = isConsoleV2Enabled and Roact.createElement(GroupHeader, {
			title = "Session descriptions",
			subtitle = "addresses redacted",
			layoutOrder = 4,
		}) or nil,

		PublishOffer = Roact.createElement(SdpSection, {
			label = "Publish offer",
			sdp = connectivity.sdpPublishOffer,
			layoutOrder = 5,
		}),

		PublishRemoteAnswer = Roact.createElement(SdpSection, {
			label = "Publish remote answer",
			sdp = connectivity.sdpPublishRemoteAnswer,
			layoutOrder = 6,
		}),

		SubscribeRemoteOffer = Roact.createElement(SdpSection, {
			label = "Subscribe remote offer",
			sdp = connectivity.sdpSubscribeRemoteOffer,
			layoutOrder = 7,
		}),

		SubscribeAnswer = Roact.createElement(SdpSection, {
			label = "Subscribe answer",
			sdp = connectivity.sdpSubscribeAnswer,
			layoutOrder = 8,
		}),
	}

	if isConsoleV2Enabled then
		return Roact.createElement(CollapsibleSection, {
			title = "Connectivity",
			layoutOrder = layoutOrder,
		}, children)
	end

	-- The V2 path above already returned, so `children` is safe to extend in place here --
	-- no need to clone it just to add two more keys.
	children.UIListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, PADDING),
	})
	children.SectionHeader = Roact.createElement(CellLabel, {
		text = "CONNECTIVITY",
		bold = true,
		layoutOrder = 0,
		size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		pos = UDim2.new(),
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, children)
end

return ConnectivityPanel

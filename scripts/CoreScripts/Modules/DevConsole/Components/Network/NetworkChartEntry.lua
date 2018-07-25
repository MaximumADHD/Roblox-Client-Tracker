local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)
local ENTRY_HEIGHT = Constants.NetworkFormatting.EntryFrameHeight
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor

local RESPONSE_STR_TEXT_HEIGHT = Constants.NetworkFormatting.ResponseStrHeight
local RESPONSE_WIDTH_RATIO = Constants.NetworkFormatting.ResponseWidthRatio
local RESPONSE_X_OFFSET = (1 - RESPONSE_WIDTH_RATIO) / 2
local RESPONSE_STR_X_OFFSET = (1 - RESPONSE_WIDTH_RATIO) / 4
local RESPONSE_STR_TEXT = "Response Body:"

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local HeaderButton = require(Components.HeaderButton)
local BannerButton = require(Components.BannerButton)

return function(props)
	local size = props.size
	local entry = props.entry
	local entryCellSize = props.entryCellSize
	local cellOffset = props.cellOffset
	local verticalOffsets = props.verticalOffsets
	local layoutOrder = props.layoutOrder
	local showResponse = props.showResponse
	local responseBodyHeight = props.responseBodyHeight


	local onButtonPress = props.onButtonPress

	local row = {}
	row["Num"] = Roact.createElement(CellLabel, {
		text = entry.Num,
		size = entryCellSize[1],
		pos = cellOffset[1],
	})
	row["Method"] = Roact.createElement(CellLabel, {
		text = entry.Method,
		size = entryCellSize[2],
		pos = cellOffset[2],
	})
	row["Status"] = Roact.createElement(CellLabel, {
		text = entry.Status,
		size = entryCellSize[3],
		pos = cellOffset[3],
	})
	row["Time"] = Roact.createElement(CellLabel, {
		text = string.format("%.3f", entry.Time),
		size = entryCellSize[4],
		pos = cellOffset[4],
	})
	row["RequestType"] = Roact.createElement(CellLabel, {
		text = entry.RequestType,
		size = entryCellSize[5],
		pos = cellOffset[5],
	})
	row["Url"] = Roact.createElement(CellLabel, {
		text = entry.Url,
		size = entryCellSize[6],
		pos = cellOffset[6],
	})
	row["LowerHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 1),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	for i = 2, #verticalOffsets do
		local key = string.format("VerticalLine_%d",i)
		row[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 0, ENTRY_HEIGHT),
			Position = verticalOffsets[i],
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		})
	end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		-- to make room for the windowing padding
		LayoutOrder = layoutOrder,
	}, {
		Button = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
			pos = UDim2.new(),
			isExpanded = showResponse,

			onButtonPress = onButtonPress,
		}, row),

		Response = showResponse and Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, responseBodyHeight),
			Position = UDim2.new(RESPONSE_X_OFFSET, 0, 0, ENTRY_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			Text = Roact.createElement(HeaderButton, {
				text = RESPONSE_STR_TEXT,
				size = UDim2.new(1, 0, 0, RESPONSE_STR_TEXT_HEIGHT),
				pos = UDim2.new(-RESPONSE_STR_X_OFFSET, 0, 0, 0),
			}),
			ResponseBody = Roact.createElement(CellLabel, {
				text = entry.Response,
				size = UDim2.new(.8, 0, 1, -RESPONSE_STR_TEXT_HEIGHT),
				pos = UDim2.new(0, 0, 0, RESPONSE_STR_TEXT_HEIGHT),
			})
		})
	})
end

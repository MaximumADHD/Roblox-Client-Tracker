export type CallstackRow = {
	frameColumn: string,
	functionColumn: string,
	lineColumn: string,
	sourceColumn: string,
}

-- TODO: Shift to MakeTheme.lua
local ICON_FRAME_TOP = {
	["LeftIcon"] = {
		["Image"] = "rbxasset://textures/Debugger/debugger_arrow.png",
		["Size"] = UDim2.new(0, 14, 0, 14),
	},
	["Value"] = "",
}

-- TODO: Shift to MakeTheme.lua
local ICON_CURRENT_FRAME = {
	["LeftIcon"] = {
		["Image"] = "rbxasset://textures/Debugger/debugger_arrow_curve_left.png",
		["Size"] = UDim2.new(0, 14, 0, 14),
	},
	["Value"] = "",
}

local function new(): CallstackRow
	return {
		frameColumn = "",
		functionColumn = "",
		lineColumn = "",
		sourceColumn = "",
	}
end

local function fromData(data): CallstackRow
	return {
		frameColumn = data.frameColumn,
		functionColumn = data.functionColumn,
		lineColumn = data.lineColumn,
		sourceColumn = data.sourceColumn,
	}
end

return {
	new = new,
	fromData = fromData,
	ICON_FRAME_TOP = ICON_FRAME_TOP,
	ICON_CURRENT_FRAME = ICON_CURRENT_FRAME,
}

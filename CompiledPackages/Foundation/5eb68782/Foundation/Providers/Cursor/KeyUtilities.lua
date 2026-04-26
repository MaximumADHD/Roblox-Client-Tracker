local Foundation = script:FindFirstAncestor("Foundation")

local ColorMode = require(Foundation.Enums.ColorMode)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
type ColorMode = ColorMode.ColorMode
type Tokens = Tokens.Tokens

local function encodeKey(
	tokens: Tokens,
	radius: UDim?,
	offset: number?,
	borderWidth: number?,
	colorMode: ColorMode?
): string
	local pRadius = radius or UDim.new(0, 0)
	local defaultBorderWidth = tokens.Stroke.Thicker
	local pBorderWidth = borderWidth or defaultBorderWidth
	local pOffset = (offset or tokens.Size.Size_150) - pBorderWidth
	local pColorMode = colorMode or ColorMode.Color

	return pRadius.Scale .. " " .. pRadius.Offset .. " " .. pOffset .. " " .. pBorderWidth .. " " .. pColorMode
end

local decodeKey = function(key: string | { string }): (UDim, number, number, ColorMode)
	local parts = if typeof(key) == "string" then string.split(key, " ") else key
	local radius1 = tonumber(parts[1]) :: number
	local radius2 = tonumber(parts[2]) :: number
	local offset = tonumber(parts[3]) :: number
	local borderWidth = tonumber(parts[4]) :: number
	local colorMode: ColorMode = parts[5] :: ColorMode

	local cornerRadius = UDim.new(radius1, math.max(0, radius2 + offset))

	return cornerRadius, offset, borderWidth, colorMode
end

local function encodeCursorTypeKey(cursorType: CursorType.CursorType, colorMode: ColorMode?)
	local pColorMode = colorMode or ColorMode.Color
	return cursorType .. " " .. pColorMode
end

local function decodeCursorTypeKey(key: string | { string }): (CursorType, ColorMode)
	local parts = if typeof(key) == "string" then string.split(key, " ") else key
	local cursorType: CursorType = parts[1] :: CursorType
	local colorMode: ColorMode = parts[2] :: ColorMode
	return cursorType, colorMode
end

local function migrateCursorType(cursor: Types.Cursor?)
	local stringType = tostring(cursor)
	local typeKey = string.gsub(stringType, if stringType:find("Kind") then "CursorKind%." else "CursorType%.", "")
	return CursorType[typeKey]
end

local function mapCursorToKey(cursor: Types.Cursor?, tokens)
	local key
	if typeof(cursor) == "table" then
		key = encodeKey(tokens, cursor.radius, cursor.offset, cursor.borderWidth)
	elseif cursor == nil then
		key = encodeKey(tokens)
	elseif typeof(cursor) == "userdata" then -- for migrating from prior UIBlox Cursor types (would like a cleaner condition than userdata type check)
		key = encodeCursorTypeKey(migrateCursorType(cursor))
	else
		key = encodeCursorTypeKey(cursor)
	end

	return key
end

return {
	encodeKey = encodeKey,
	decodeKey = decodeKey,
	encodeCursorTypeKey = encodeCursorTypeKey,
	decodeCursorTypeKey = decodeCursorTypeKey,
	migrateCursorType = migrateCursorType,
	mapCursorToKey = mapCursorToKey,
}

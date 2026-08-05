local Foundation = script:FindFirstAncestor("Foundation")

local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(Foundation.Components.Types)
type ColorNamespace = ColorNamespace.ColorNamespace
type Tokens = Tokens.Tokens

local function encodeKey(
	tokens: Tokens,
	radius: UDim?,
	offset: number?,
	borderWidth: number?,
	colorNamespace: ColorNamespace?
): string
	local pRadius = radius or UDim.new(0, 0)
	local defaultBorderWidth = tokens.Stroke.Thicker
	local pBorderWidth = borderWidth or defaultBorderWidth
	local pOffset = (offset or tokens.Size.Size_150) - pBorderWidth
	local pColorNamespace = colorNamespace or ColorNamespace.Color

	return pRadius.Scale .. " " .. pRadius.Offset .. " " .. pOffset .. " " .. pBorderWidth .. " " .. pColorNamespace
end

local decodeKey = function(key: string | { string }): (UDim, number, number, ColorNamespace)
	local parts = if typeof(key) == "string" then string.split(key, " ") else key
	local radius1 = tonumber(parts[1]) :: number
	local radius2 = tonumber(parts[2]) :: number
	local offset = tonumber(parts[3]) :: number
	local borderWidth = tonumber(parts[4]) :: number
	local colorNamespace: ColorNamespace = parts[5] :: ColorNamespace

	local cornerRadius = UDim.new(radius1, math.max(0, radius2 + offset))

	return cornerRadius, offset, borderWidth, colorNamespace
end

local function encodeCursorTypeKey(cursorType: CursorType.CursorType, colorNamespace: ColorNamespace?)
	local pColorNamespace = colorNamespace or ColorNamespace.Color
	return cursorType .. " " .. pColorNamespace
end

local function decodeCursorTypeKey(key: string | { string }): (CursorType, ColorNamespace)
	local parts = if typeof(key) == "string" then string.split(key, " ") else key
	local cursorType: CursorType = parts[1] :: CursorType
	local colorNamespace: ColorNamespace = parts[2] :: ColorNamespace
	return cursorType, colorNamespace
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

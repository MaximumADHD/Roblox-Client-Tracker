local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
local CursorType = require(Foundation.Enums.CursorType)
local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local function encodeKey(tokens: Tokens, radius: UDim?, offset: number?, borderWidth: number?): string
	local pRadius = radius or UDim.new(0, 0)
	local defaultBorderWidth = tokens.Stroke.Thicker
	local pBorderWidth = borderWidth or defaultBorderWidth
	local pOffset = (offset or tokens.Size.Size_150) - pBorderWidth

	return pRadius.Scale .. " " .. pRadius.Offset .. " " .. pOffset .. " " .. pBorderWidth
end

local decodeKey = function(key: string): (UDim, number, number)
	local parts = string.split(key, " ")

	local radius1 = tonumber(parts[1]) :: number
	local radius2 = tonumber(parts[2]) :: number
	local offset = tonumber(parts[3]) :: number
	local borderWidth = tonumber(parts[4]) :: number

	local cornerRadius = UDim.new(radius1, math.max(0, radius2 + offset))

	return cornerRadius, offset, borderWidth
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
		key = migrateCursorType(cursor)
	else
		key = cursor
	end

	return key
end

return {
	encodeKey = encodeKey,
	decodeKey = decodeKey,
	migrateCursorType = migrateCursorType,
	mapCursorToKey = mapCursorToKey,
}

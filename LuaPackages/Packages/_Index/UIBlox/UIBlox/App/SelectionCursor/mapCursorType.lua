local Packages = script.Parent.Parent.Parent.Parent
local Foundation = require(Packages.Foundation)
local FoundationCursorType = Foundation.Enums.CursorType

local function mapCursorType(cursorType, cursorKind: boolean?)
	-- extract the enum key, use to return equivalent Foundation cursor type
	local stringType = tostring(cursorType)
	local typeKey = string.gsub(stringType, if cursorKind then "CursorKind%." else "CursorType%.", "")
	return FoundationCursorType[typeKey]
end

return mapCursorType

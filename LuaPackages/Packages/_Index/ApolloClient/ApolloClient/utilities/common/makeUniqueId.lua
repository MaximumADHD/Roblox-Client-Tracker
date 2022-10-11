-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/makeUniqueId.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
type Map<K, V> = LuauPolyfill.Map<K, V>

-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
local prefixCounts = Map.new(nil) :: Map<string, number>
local alphabet = {
	"0",
	"1",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8",
	"9",
	"a",
	"b",
	"c",
	"d",
	"e",
	"f",
	"g",
	"h",
	"i",
	"j",
	"k",
	"l",
	"m",
	"n",
	"o",
	"p",
	"q",
	"r",
	"s",
	"t",
	"u",
	"v",
	"w",
	"x",
	"y",
	"z",
}

math.randomseed(os.clock())

local function uuid()
	local suffix = ""
	for i = 1, 11, 1 do
		suffix ..= alphabet[math.random(1, 36)]
	end

	return suffix
end

local function makeUniqueId(prefix: string)
	--ROBLOX deviation: suffix replaces Math.random().toString(36).slice(2) that returns a string with eleven chars from "alphabet"
	local suffix = uuid()
	local count = Boolean.toJSBoolean(prefixCounts:get(prefix)) and prefixCounts:get(prefix) or 1
	prefixCounts:set(prefix, count + 1)
	return ("%s:%s:%s"):format(prefix, tostring(count), suffix)
end
exports.uuid = uuid
exports.makeUniqueId = makeUniqueId
return exports

-- Roblox-written
-- Java's Integer constants that commonmark-java uses as sentinels. MAX_VALUE is Java's exact
-- 2^31 - 1, not math.huge, so a comparison against it (`maxInlineNesting != Integer.MAX_VALUE`)
-- treats every value exactly as Java does, including a caller passing 2147483647 itself.

local Integer = table.freeze({
	MAX_VALUE = 2147483647,
})

return Integer

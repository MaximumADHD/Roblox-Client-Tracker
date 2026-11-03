-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/BulletList.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local ListBlock = require(Root.node.ListBlock)

type ListBlock = ListBlock.ListBlock

export type BulletList = ListBlock & {
	marker: string?,
}

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitBulletList.
-- PORT NOTE: the deprecated getBulletMarker/setBulletMarker are dropped. They are a char view of
-- marker (its first character, '\0' for nil or empty) that nothing in commonmark-java calls, so
-- marker keeps everything they read or write.
local function BulletList(): BulletList
	local bulletList: BulletList = ListBlock.new("BulletList") :: any
	bulletList.marker = nil
	return bulletList
end

return BulletList

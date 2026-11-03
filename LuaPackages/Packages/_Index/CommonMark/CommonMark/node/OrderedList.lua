-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/node/OrderedList.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local ListBlock = require(Root.node.ListBlock)

type ListBlock = ListBlock.ListBlock

export type OrderedList = ListBlock & {
	markerDelimiter: string?,
	markerStartNumber: number?,
}

-- PORT NOTE: accept is Node's kind dispatch (ROACTCHAT-2833), which calls visitOrderedList.
-- PORT NOTE: the deprecated getStartNumber/setStartNumber and getDelimiter/setDelimiter are
-- dropped. They are int and char views of markerStartNumber and markerDelimiter (0 and '\0'
-- standing for nil) that nothing in commonmark-java calls, so the two fields keep everything they
-- read or write.
local function OrderedList(): OrderedList
	local orderedList: OrderedList = ListBlock.new("OrderedList") :: any
	orderedList.markerDelimiter = nil
	orderedList.markerStartNumber = nil
	return orderedList
end

return OrderedList

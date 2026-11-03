-- Adapted from commonmark-java's Strikethrough (BSD-2-Clause, Copyright (c) 2015, Robin Stocker); see modules/markdown/LICENSE-commonmark-java.
-- Underline (ROACTCHAT-2831 #9): `__x__`, which CommonMark parses as StrongEmphasis.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)

type CustomNode = CommonMark.CustomNode
type Delimited = CommonMark.Delimited

export type Underline = CustomNode & Delimited

local function Underline(delimiter: string): Underline
	local underline: Underline = CommonMark.Node.CustomNode.new("Underline") :: any
	underline.openingDelimiter = delimiter
	underline.closingDelimiter = delimiter
	return underline
end

return Underline

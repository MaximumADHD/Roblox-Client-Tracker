-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/parser/beta/LinkInfo.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Position = require(Root.parser.beta.Position)
local Text = require(Root.node.Text)

type Position = Position.Position
type Text = Text.Text

-- A parsed link/image. There are different types of links.
--
-- Inline links:
--
--     [text](destination)
--     [text](destination "title")
--
-- Reference links, which have different subtypes. Full::
--
--     [text][label]
--
-- Collapsed (label is ""):
--
--     [text][]
--
-- Shortcut (label is null):
--
--     [text]
--
-- Images use the same syntax as links but with a `!` marker front, e.g. `![text](destination)`.
export type LinkInfo = {
	-- The marker if present, or null. A marker is e.g. `!` for an image, or a custom marker as
	-- specified in Parser.Builder.linkMarker.
	marker: (self: LinkInfo) -> Text?,
	-- The text node of the opening bracket `[`.
	openingBracket: (self: LinkInfo) -> Text,
	-- The text between the first brackets, e.g. `foo` in `[foo][bar]`.
	text: (self: LinkInfo) -> string,
	-- The label, or null for inline links or for shortcut links (in which case text should be used
	-- as the label).
	label: (self: LinkInfo) -> string?,
	-- The destination if available, e.g. in `[foo](destination)`, or null
	destination: (self: LinkInfo) -> string?,
	-- The title if available, e.g. in `[foo](destination "title")`, or null
	title: (self: LinkInfo) -> string?,
	-- The position after the closing text bracket, e.g.:
	--
	--     [foo][bar]
	--          ^
	afterTextBracket: (self: LinkInfo) -> Position,
}

return {}

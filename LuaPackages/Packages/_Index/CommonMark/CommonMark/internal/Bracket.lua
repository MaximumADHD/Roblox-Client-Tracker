-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/internal/Bracket.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Delimiter = require(Root.internal.Delimiter)
local Position = require(Root.parser.beta.Position)
local Text = require(Root.node.Text)

type Delimiter = Delimiter.Delimiter
type Position = Position.Position
type Text = Text.Text

-- Opening bracket for links (`[`), images (`![`), or links with other markers.
local Bracket = {}
Bracket.__index = Bracket

type BracketFields = {
	-- The node of a marker such as `!` if present, null otherwise.
	markerNode: Text?,
	-- The position of the marker if present, null otherwise.
	markerPosition: Position?,
	-- The node of `[`.
	bracketNode: Text,
	-- The position of `[`.
	bracketPosition: Position,
	-- The position of the content (after the opening bracket)
	contentPosition: Position,
	-- Previous bracket.
	previous: Bracket?,
	-- Previous delimiter (emphasis, etc) before this bracket.
	previousDelimiter: Delimiter?,
	-- Whether this bracket is allowed to form a link/image (also known as "active").
	allowed: boolean,
	-- Whether there is an unescaped bracket (opening or closing) after this opening bracket in the
	-- text parsed so far.
	bracketAfter: boolean,
	-- How deeply nested the most deeply nested node in the content of this bracket is, updated as
	-- nodes are added. Used to limit nesting when this bracket forms a link/image, without having
	-- to look at the content nodes (of which there can be many).
	contentNestingDepth: number,
}

export type Bracket = typeof(setmetatable({} :: BracketFields, Bracket))

-- PORT NOTE: the private constructor is the local `new`, above the static factories that call it.
-- The field initializers (allowed, bracketAfter, contentNestingDepth) are set in it.
local function new(
	markerNode: Text?,
	markerPosition: Position?,
	bracketNode: Text,
	bracketPosition: Position,
	contentPosition: Position,
	previous: Bracket?,
	previousDelimiter: Delimiter?
): Bracket
	return setmetatable({
		markerNode = markerNode,
		markerPosition = markerPosition,
		bracketNode = bracketNode,
		bracketPosition = bracketPosition,
		contentPosition = contentPosition,
		previous = previous,
		previousDelimiter = previousDelimiter,
		allowed = true,
		bracketAfter = false,
		contentNestingDepth = 0,
	}, Bracket) :: any
end

function Bracket.link(
	bracketNode: Text,
	bracketPosition: Position,
	contentPosition: Position,
	previous: Bracket?,
	previousDelimiter: Delimiter?
): Bracket
	return new(nil, nil, bracketNode, bracketPosition, contentPosition, previous, previousDelimiter)
end

function Bracket.withMarker(
	markerNode: Text,
	markerPosition: Position,
	bracketNode: Text,
	bracketPosition: Position,
	contentPosition: Position,
	previous: Bracket?,
	previousDelimiter: Delimiter?
): Bracket
	return new(markerNode, markerPosition, bracketNode, bracketPosition, contentPosition, previous, previousDelimiter)
end

return Bracket

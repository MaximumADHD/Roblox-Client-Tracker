-- The profile's block quotes (ROACTCHAT-2831 #6/#7): a quote may contain any block except another
-- quote, so `> > x` is one quote whose paragraph is `> x`. The core factory can't be dropped
-- separately for nested quotes (ROACTCHAT-2824), so this wraps it and refuses any start inside a
-- quote.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)

type BlockParserFactory = CommonMark.BlockParserFactory
type BlockStart = CommonMark.BlockStart
type Extension = CommonMark.Extension
type MatchedBlockParser = CommonMark.MatchedBlockParser
type Node = CommonMark.Node
type ParserBuilder = CommonMark.ParserBuilder
type ParserState = CommonMark.ParserState

local blockQuoteFactory: BlockParserFactory = CommonMark.Internal.BlockQuoteParser.Factory.new()

-- The matched block parser is the innermost open container this line reached (or a paragraph in
-- it), and every open block's ancestors are open too, so a quote among them is one the new block
-- would sit inside.
local function isInsideBlockQuote(block: Node?): boolean
	while block ~= nil do
		if block.kind == "BlockQuote" then
			return true
		end
		block = block:getParent()
	end
	return false
end

local NoNestedQuote = {}

local Factory = {}
Factory.__index = Factory

function Factory.new(): BlockParserFactory
	return setmetatable({}, Factory) :: any
end

function Factory.tryStart(
	_self: BlockParserFactory,
	state: ParserState,
	matchedBlockParser: MatchedBlockParser
): BlockStart?
	local blockStart = blockQuoteFactory:tryStart(state, matchedBlockParser)
	if blockStart == nil or isInsideBlockQuote(matchedBlockParser:getMatchedBlockParser():getBlock()) then
		return nil
	end
	return blockStart
end

NoNestedQuote.Factory = Factory

-- Custom block factories run before the enabled core ones, in registration order.
function NoNestedQuote.extension(): Extension
	return {
		extendParser = function(parserBuilder: ParserBuilder)
			parserBuilder:customBlockParserFactory(Factory.new())
		end,
	}
end

return NoNestedQuote

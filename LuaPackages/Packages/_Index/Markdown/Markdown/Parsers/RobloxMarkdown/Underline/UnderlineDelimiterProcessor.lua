local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)
local Underline = require(script.Parent.Underline)

type DelimiterProcessor = CommonMark.DelimiterProcessor

local UNDERSCORE = string.byte("_")

-- `_` with minimum length 2, making Underline where the core makes StrongEmphasis
-- (ROACTCHAT-2831 #9). InlineParserImpl's addDelimiterProcessors combines it with the core `_`
-- processor (minimum length 1) in a StaggeredDelimiterProcessor, which dispatches on the opener's
-- length alone, so a closer shorter than 2 (`__foo_`) still reaches this processor and gets the
-- same Emphasis the core would make.
local UnderlineDelimiterProcessor = {}

function UnderlineDelimiterProcessor.new(): DelimiterProcessor
	return CommonMark.Parser.Delimiter.EmphasisLikeDelimiterProcessor.new(UNDERSCORE, {
		minLength = 2,
		createStrongEmphasis = Underline,
	})
end

return UnderlineDelimiterProcessor

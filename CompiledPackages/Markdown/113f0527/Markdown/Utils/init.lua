local Utils = script:FindFirstAncestor("Utils")

return {
	SplitText = require(Utils.SplitText),
	IsCli = require(Utils.IsCli),
	IsInlineElement = require(Utils.IsInlineElement),
	InlineElementType = require(Utils.InlineElementType),
	TextSplitByEnum = require(Utils.TextSplitByEnum),
	TestUtils = require(Utils.TestUtils),
}

-- The nodes of the inline formatting tags (ROACTCHAT-2959): a FormattingTag is a matched pair,
-- holding the inlines between its tags, and a FormattingTagText is a tag the Roblox profile's `<`
-- parser read that didn't pair, which stays literal text.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)

type CustomNode = CommonMark.CustomNode

export type TagName = "b" | "i" | "u" | "s"

export type FormattingTag = CustomNode & {
	tagName: TagName,
}

export type FormattingTagText = CustomNode & {
	literal: string,
}

local FormattingTag = {}

function FormattingTag.new(tagName: TagName): FormattingTag
	local tag: FormattingTag = CommonMark.Node.CustomNode.new("FormattingTag") :: any
	tag.tagName = tagName
	return tag
end

function FormattingTag.text(literal: string): FormattingTagText
	local text: FormattingTagText = CommonMark.Node.CustomNode.new("FormattingTagText") :: any
	text.literal = literal
	return text
end

-- The eight recognized forms: exactly these, lowercase, with no attributes or spaces
FormattingTag.TAGS = table.freeze({
	["<b>"] = table.freeze({ name = "b" :: TagName, closing = false }),
	["</b>"] = table.freeze({ name = "b" :: TagName, closing = true }),
	["<i>"] = table.freeze({ name = "i" :: TagName, closing = false }),
	["</i>"] = table.freeze({ name = "i" :: TagName, closing = true }),
	["<u>"] = table.freeze({ name = "u" :: TagName, closing = false }),
	["</u>"] = table.freeze({ name = "u" :: TagName, closing = true }),
	["<s>"] = table.freeze({ name = "s" :: TagName, closing = false }),
	["</s>"] = table.freeze({ name = "s" :: TagName, closing = true }),
})

return FormattingTag

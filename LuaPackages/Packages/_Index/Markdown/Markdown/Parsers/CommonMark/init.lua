-- The plain CommonMark profile: the core parser with no options (so raw HTML, indented code and
-- every core block type are on), adapted by the default rules and fallbacks. With
-- FFlagMarkdownFormattingTags it has one extension, the inline formatting tags (ROACTCHAT-2959),
-- which pair the core's HtmlInline tags. MarkdownViewer uses it for `ParserProfile = "CommonMark"`.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local Adapter = require(Root.Adapter)
local CommonMark = require(Packages.CommonMark)
local Flags = require(Root.Flags)
local FormattingTagsExtension = require(Root.Parsers.FormattingTags.FormattingTagsExtension)
local Types = require(Root.Types)
local createParser = require(Root.Adapter.createParser)

type Document = CommonMark.Document
type EntryOptions = Adapter.EntryOptions
type Extension = Adapter.Extension
type Gap = Adapter.Gap
type Node = CommonMark.Node
type RenderOptions = CommonMark.RenderOptions
type RendererNode = Types.Node

-- Inline HTML is on, so the core reads the tags as HtmlInline and the extension only pairs them.
-- The profile leaves maxInlineNesting at the core's default, 100 (CommonMark's Parser.Builder).
local FORMATTING_TAGS: Extension = table.freeze(FormattingTagsExtension.create({ maxNesting = 100 }))

local EXTENSIONS: { Extension } = table.freeze(if Flags.FFlagMarkdownFormattingTags then { FORMATTING_TAGS } else {})

local parser = createParser({ extensions = EXTENSIONS })

-- Frozen because CommonMark caches the built renderer per options table and reads it only once.
local RENDER_OPTIONS: RenderOptions = table.freeze({
	extensions = EXTENSIONS :: { any },
})

local CommonMarkProfile = {}

CommonMarkProfile.parseOptions = parser.parseOptions
CommonMarkProfile.renderOptions = RENDER_OPTIONS
-- The formatting tags extension as the profile configures it, whether or not the flag adds it
CommonMarkProfile.formattingTagsExtension = FORMATTING_TAGS

function CommonMarkProfile.parse(source: string): Document
	return parser.parseDocument(source)
end

function CommonMarkProfile.toRendererAst(document: Node, options: EntryOptions?): (RendererNode, { Gap })
	return parser.toRendererAst(document, options)
end

-- Like RobloxMarkdown.safeParse: plain pcall, the raised value comes back unchanged.
function CommonMarkProfile.safeParse(source: string): (boolean, any)
	return pcall(CommonMarkProfile.parse, source)
end

function CommonMarkProfile.renderHtml(document: Node): string
	return CommonMark.renderHtml(document, RENDER_OPTIONS)
end

return CommonMarkProfile

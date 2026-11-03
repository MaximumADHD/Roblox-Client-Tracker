-- The plain CommonMark profile: the core parser with no extensions and no options (so raw HTML,
-- indented code and every core block type are on), adapted by the default rules and fallbacks.
-- MarkdownViewer uses it for `ParserProfile = "CommonMark"`.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local Adapter = require(Root.Adapter)
local CommonMark = require(Packages.CommonMark)
local Types = require(Root.Types)
local createParser = require(Root.Adapter.createParser)

type Document = CommonMark.Document
type EntryOptions = Adapter.EntryOptions
type Gap = Adapter.Gap
type Node = CommonMark.Node
type RendererNode = Types.Node

local parser = createParser()

local CommonMarkProfile = {}

CommonMarkProfile.parseOptions = parser.parseOptions

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
	return CommonMark.renderHtml(document)
end

return CommonMarkProfile

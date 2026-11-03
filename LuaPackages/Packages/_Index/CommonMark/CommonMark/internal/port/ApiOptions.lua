-- Roblox-written
-- The options layer behind CommonMark.parse and CommonMark.renderHtml (ROACTCHAT-2829): it turns
-- an options table into a built Parser or HtmlRenderer and caches it. The exposed options are
-- ROACTCHAT-2833's first cut.
--
-- PORT NOTE: Parser.Builder.inlineParserFactory, HtmlRenderer.Builder.urlSanitizer and
-- HtmlRenderer.Builder.omitSingleParagraphP aren't options (ROACTCHAT-2833); extensions can still
-- reach all three through their builders. Builder methods that register custom parts
-- (customBlockParserFactory, nodeRendererFactory and the like) are for extensions only.
--
-- PORT NOTE: each built Parser and HtmlRenderer is cached in a weak-keyed table under its options
-- table's identity (ROACTCHAT-2833 specifies this for parse; renderHtml does the same). Options
-- are read once, when first used, so mutating an options table afterwards has no effect; pass a
-- new table instead. Calls without options share one default instance.

local Root = script:FindFirstAncestor("CommonMark")
local DocumentParser = require(Root.internal.DocumentParser)
local Extension = require(Root.Extension)
local IncludeSourceSpans = require(Root.parser.IncludeSourceSpans)
local Parser = require(Root.parser.Parser)

type Extension = Extension.Extension
type HtmlRenderer = Extension.HtmlRenderer
type IncludeSourceSpans = IncludeSourceSpans.IncludeSourceSpans
type Parser = Parser.Parser

export type ParseOptions = {
	-- Applied in list order, before the other options.
	extensions: { Extension }?,
	-- Block kinds, iterated in canonical core order whatever their order here.
	enabledBlockTypes: { string }?,
	-- PORT NOTE: added after ROACTCHAT-2833's first cut, mirroring enabledBlockTypes; see
	-- Parser.Builder.enabledInlineTypes. nil enables every core inline type.
	enabledInlineTypes: { string }?,
	-- PORT NOTE: added for Roblox spec v15; see Parser.Builder.linkReferenceDefinitions. nil means
	-- true, as in Java.
	linkReferenceDefinitions: boolean?,
	includeSourceSpans: IncludeSourceSpans?,
	maxOpenBlockParsers: number?,
	maxInlineNesting: number?,
}

export type RenderOptions = {
	-- Applied in list order, before the other options.
	extensions: { Extension }?,
	softbreak: string?,
	escapeHtml: boolean?,
	sanitizeUrls: boolean?,
	percentEncodeUrls: boolean?,
}

local ApiOptions = {}

-- Orders block kinds as DocumentParser.getDefaultBlockParserTypes() does, dropping duplicates, as
-- Java's Set would. A kind that isn't a core block type is kept, after the core ones and in the
-- caller's order, so Parser.Builder.enabledBlockTypes still rejects it.
function ApiOptions.inCanonicalOrder(enabledBlockTypes: { string }): { string }
	local requested: { [string]: true } = {}
	for _, blockType in ipairs(enabledBlockTypes) do
		requested[blockType] = true
	end
	local ordered = {}
	for _, blockType in ipairs(DocumentParser.getDefaultBlockParserTypes()) do
		if requested[blockType] then
			table.insert(ordered, blockType)
			requested[blockType] = nil
		end
	end
	for _, blockType in ipairs(enabledBlockTypes) do
		if requested[blockType] then
			table.insert(ordered, blockType)
			requested[blockType] = nil
		end
	end
	return ordered
end

local function buildParser(options: ParseOptions): Parser
	local builder = Parser.builder()
	if options.extensions ~= nil then
		builder:extensions(options.extensions)
	end
	if options.enabledBlockTypes ~= nil then
		builder:enabledBlockTypes(ApiOptions.inCanonicalOrder(options.enabledBlockTypes))
	end
	if options.enabledInlineTypes ~= nil then
		builder:enabledInlineTypes(options.enabledInlineTypes)
	end
	if options.linkReferenceDefinitions ~= nil then
		builder:linkReferenceDefinitions(options.linkReferenceDefinitions)
	end
	if options.includeSourceSpans ~= nil then
		builder:includeSourceSpans(options.includeSourceSpans)
	end
	if options.maxOpenBlockParsers ~= nil then
		builder:maxOpenBlockParsers(options.maxOpenBlockParsers)
	end
	if options.maxInlineNesting ~= nil then
		builder:maxInlineNesting(options.maxInlineNesting)
	end
	return builder:build()
end

local function buildHtmlRenderer(options: RenderOptions): HtmlRenderer
	-- Required here so that parsing doesn't load the HTML renderer
	local builder = require(Root.renderer.html.HtmlRenderer).builder()
	if options.extensions ~= nil then
		builder:extensions(options.extensions)
	end
	if options.softbreak ~= nil then
		builder:softbreak(options.softbreak)
	end
	if options.escapeHtml ~= nil then
		builder:escapeHtml(options.escapeHtml)
	end
	if options.sanitizeUrls ~= nil then
		builder:sanitizeUrls(options.sanitizeUrls)
	end
	if options.percentEncodeUrls ~= nil then
		builder:percentEncodeUrls(options.percentEncodeUrls)
	end
	return builder:build()
end

local WEAK_KEYS = table.freeze({ __mode = "k" })
local NO_OPTIONS = table.freeze({})

local parsers: { [ParseOptions]: Parser } = setmetatable({}, WEAK_KEYS) :: any
local htmlRenderers: { [RenderOptions]: HtmlRenderer } = setmetatable({}, WEAK_KEYS) :: any

function ApiOptions.getParser(options: ParseOptions?): Parser
	local key: ParseOptions = if options ~= nil then options else NO_OPTIONS
	local parser = parsers[key]
	if parser == nil then
		parser = buildParser(key)
		parsers[key] = parser
	end
	return parser
end

function ApiOptions.getHtmlRenderer(options: RenderOptions?): HtmlRenderer
	local key: RenderOptions = if options ~= nil then options else NO_OPTIONS
	local htmlRenderer = htmlRenderers[key]
	if htmlRenderer == nil then
		htmlRenderer = buildHtmlRenderer(key)
		htmlRenderers[key] = htmlRenderer
	end
	return htmlRenderer
end

return ApiOptions

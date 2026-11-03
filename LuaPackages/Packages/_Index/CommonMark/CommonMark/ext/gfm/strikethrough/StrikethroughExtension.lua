-- Ported from commonmark-java commonmark-ext-gfm-strikethrough/src/main/java/org/commonmark/ext/gfm/strikethrough/StrikethroughExtension.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local Extension = require(Root.Extension)
local StrikethroughDelimiterProcessor = require(Root.ext.gfm.strikethrough.internal.StrikethroughDelimiterProcessor)

type Extension = Extension.Extension
type HtmlNodeRendererContext = typeof(require(Root.internal.port.RendererTypes).HtmlNodeRendererContext)
type HtmlNodeRendererFactory = typeof(require(Root.internal.port.RendererTypes).HtmlNodeRendererFactory)
type HtmlRendererBuilder = Extension.HtmlRendererBuilder
type NodeRenderer = typeof(require(Root.internal.port.RendererTypes).NodeRenderer)
type ParserBuilder = Extension.ParserBuilder

-- Extension for GFM strikethrough using `~` or `~~` (GitHub Flavored Markdown).
--
-- Example input: `~foo~ or ~~bar~~`
--
-- Example output (HTML): `<del>foo</del> or <del>bar</del>`
--
-- Create the extension with create() and then add it to the parser and renderer builders
-- (Parser.Builder.extensions, HtmlRenderer.Builder.extensions).
--
-- The parsed strikethrough text regions are turned into Strikethrough nodes.
--
-- If you have another extension that only uses a single tilde (`~`) syntax, you will have to
-- configure this StrikethroughExtension to only accept the double tilde syntax, like this:
--
--     StrikethroughExtension.builder():requireTwoTildes(true):build()
--
-- If you don't do that, there's a conflict between the two extensions and you will get an error
-- when constructing the parser.
--
-- PORT NOTE: the class is an Extension table (see Extension.lua): Parser.ParserExtension's and
-- HtmlRenderer.HtmlRendererExtension's extend overloads are its extendParser and
-- extendHtmlRenderer fields. Those hooks take no self (ROACTCHAT-2833), so the private final
-- requireTwoTildes field is a local the hooks close over. TextContentRenderer and MarkdownRenderer
-- are out of scope, so their two extend overloads, and the StrikethroughTextContentNodeRenderer
-- and StrikethroughMarkdownNodeRenderer they register, aren't ported.
local StrikethroughExtension = {}

-- PORT NOTE: declared here so that builder() can reference it; its methods follow Java's order,
-- at the end of the file.
local Builder = {}
Builder.__index = Builder

type BuilderFields = {
	_requireTwoTildes: boolean,
	requireTwoTildes: (self: Builder, requireTwoTildes: boolean) -> Builder,
	build: (self: Builder) -> Extension,
}

export type Builder = typeof(setmetatable({} :: BuilderFields, Builder))

-- PORT NOTE: the private constructor is a local function rather than StrikethroughExtension.new,
-- so only Builder.build can call it.
local function new(builder: Builder): Extension
	local requireTwoTildes = builder._requireTwoTildes
	return {
		extendParser = function(parserBuilder: ParserBuilder)
			parserBuilder:customDelimiterProcessor(StrikethroughDelimiterProcessor.new(requireTwoTildes))
		end,
		extendHtmlRenderer = function(rendererBuilder: HtmlRendererBuilder)
			-- PORT NOTE: StrikethroughHtmlNodeRenderer is required here, not at module scope, and
			-- the renderer types come through internal/port/RendererTypes, so that parsing doesn't
			-- load the HTML renderer.
			local StrikethroughHtmlNodeRenderer =
				require(Root.ext.gfm.strikethrough.internal.StrikethroughHtmlNodeRenderer)
			-- PORT NOTE: the method reference StrikethroughHtmlNodeRenderer::new is a table
			-- implementing HtmlNodeRendererFactory.
			local factory: HtmlNodeRendererFactory = {
				create = function(_self: HtmlNodeRendererFactory, context: HtmlNodeRendererContext): NodeRenderer
					return StrikethroughHtmlNodeRenderer.new(context)
				end,
			}
			rendererBuilder:nodeRendererFactory(factory)
		end,
	}
end

-- Returns the extension with default options
function StrikethroughExtension.create(): Extension
	return StrikethroughExtension.builder():build()
end

function StrikethroughExtension.builder(): Builder
	return Builder.new()
end

-- PORT NOTE: Java's implicit default constructor, with the field initializer
-- `requireTwoTildes = false`.
function Builder.new(): Builder
	return setmetatable({ _requireTwoTildes = false }, Builder) :: any
end

-- requireTwoTildes: Whether two tilde characters (`~~`) are required for strikethrough or
-- whether one is also enough. Default is false; both a single tilde and two tildes can be used
-- for strikethrough.
function Builder.requireTwoTildes(self: Builder, requireTwoTildes: boolean): Builder
	self._requireTwoTildes = requireTwoTildes
	return self
end

function Builder.build(self: Builder): Extension
	return new(self)
end

StrikethroughExtension.Builder = Builder

return StrikethroughExtension

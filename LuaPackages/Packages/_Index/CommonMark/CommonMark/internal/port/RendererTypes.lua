-- Roblox-written
-- The renderer-side types the parse path names. Never executed: modules read it only inside
-- `typeof(require(...))` in type positions, which the analyzer resolves and the runtime never
-- evaluates, so naming these types doesn't load the HTML renderer. Each field is a typed nil
-- whose type its readers take with typeof.

local Root = script:FindFirstAncestor("CommonMark")
local AttributeProvider = require(Root.renderer.html.AttributeProvider)
local AttributeProviderContext = require(Root.renderer.html.AttributeProviderContext)
local AttributeProviderFactory = require(Root.renderer.html.AttributeProviderFactory)
local DefaultUrlSanitizer = require(Root.renderer.html.DefaultUrlSanitizer)
local HtmlNodeRendererContext = require(Root.renderer.html.HtmlNodeRendererContext)
local HtmlNodeRendererFactory = require(Root.renderer.html.HtmlNodeRendererFactory)
local HtmlWriter = require(Root.renderer.html.HtmlWriter)
local NodeRenderer = require(Root.renderer.NodeRenderer)
local UrlSanitizer = require(Root.renderer.html.UrlSanitizer)

local typed: any = nil

return {
	AttributeProvider = typed :: AttributeProvider.AttributeProvider,
	AttributeProviderContext = typed :: AttributeProviderContext.AttributeProviderContext,
	AttributeProviderFactory = typed :: AttributeProviderFactory.AttributeProviderFactory,
	DefaultUrlSanitizer = typed :: DefaultUrlSanitizer.DefaultUrlSanitizer,
	HtmlNodeRendererContext = typed :: HtmlNodeRendererContext.HtmlNodeRendererContext,
	HtmlNodeRendererFactory = typed :: HtmlNodeRendererFactory.HtmlNodeRendererFactory,
	HtmlWriter = typed :: HtmlWriter.HtmlWriter,
	NodeRenderer = typed :: NodeRenderer.NodeRenderer,
	UrlSanitizer = typed :: UrlSanitizer.UrlSanitizer,
}

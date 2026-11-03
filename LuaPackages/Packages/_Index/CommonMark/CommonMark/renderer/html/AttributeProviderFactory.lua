-- Ported from commonmark-java commonmark/src/main/java/org/commonmark/renderer/html/AttributeProviderFactory.java @ commonmark-parent-0.30.0
-- Copyright (c) 2015, Robin Stocker. BSD-2-Clause; see LICENSE-commonmark-java.

local Root = script:FindFirstAncestor("CommonMark")
local AttributeProvider = require(Root.renderer.html.AttributeProvider)
local AttributeProviderContext = require(Root.renderer.html.AttributeProviderContext)

type AttributeProvider = AttributeProvider.AttributeProvider
type AttributeProviderContext = AttributeProviderContext.AttributeProviderContext

-- Factory for instantiating new attribute providers when rendering is done.
export type AttributeProviderFactory = {
	-- Create a new attribute provider.
	create: (self: AttributeProviderFactory, context: AttributeProviderContext) -> AttributeProvider,
}

return {}

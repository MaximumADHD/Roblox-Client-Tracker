local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent

local Types = require(Root.Types)
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local InlineLayoutPackage = require(Packages.InlineLayout)
local Flags = require(Packages.MarkdownCore).Flags

local InlineLayout = InlineLayoutPackage.Components.InlineLayout
local mergeContexts = require(Root.Utils.mergeContexts)
local isInlineElement = InlineLayoutPackage.Utils.isInlineElement

local function renderInline(
	node: Types.Node,
	context: Types.Context,
	horizontalAlignment: Enum.HorizontalAlignment?
): React.ReactElement
	return React.createElement(InlineLayout, {
		HorizontalAlignment = if Flags.FFlagMarkdownTables then horizontalAlignment else nil,
		VerticalPadding = UDim.new(0, 0),
		Elements = Dash.filter(
			context.processChildren(node, mergeContexts(context, { isInline = true })),
			isInlineElement
		),
	})
end
return renderInline

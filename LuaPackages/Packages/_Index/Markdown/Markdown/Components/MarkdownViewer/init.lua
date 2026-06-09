--[[
	MarkdownViewer takes a markdown string as input and displays the rich content using a combination of RichText and inline UI components.

	Required Props (One of the following):
		string Markdown: Markdown string to be displayed
		table Ast: A Markdown AST to be displayed

	Optional Props:
		table Renderers: Specifies components to draw markdown nodes
		callback LinkCallback: A function to call when a link is clicked (url: string) -> ()
		table WrapperProps: A table of props to pass to the View that wraps the whole markdown content
		table MarkdownRendererProps: A table of props to pass to text elements
		table ColorScheme: A table of token colors to use for code highlighting
		any Fallback: A ReactNode that will be displayed if there is an error parsing markdown
		callback OnError: A callback that will be called when there is an error parsing markdown with the error as a single argument
]]

local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local Text = Foundation.Text
local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens
local MarkdownCore = require(Packages.MarkdownCore)

local Parser = require(Root.Parsers.CommonMarkComplianceParser)
local Types = require(Root.Types)
local MarkdownRenderer = require(script.MarkdownRenderer)

export type Props = {
	Markdown: string?,
	Ast: Types.Node?,
	Renderers: Types.RenderersType?,
	LinkCallback: Types.LinkCallbackType?,
	MarkdownRendererProps: Types.MarkdownRendererPropsType?,
	WrapperProps: { [string]: any }?,
	ColorScheme: MarkdownCore.TokenColors?,
	Fallback: React.Node?,
	OnError: ((error: any) -> ())?,
	AdditionalFeatureRenderers: Types.AdditionalFeatureRenderersType?,
}

local function MarkdownViewer(props: Props)
	local tokens = useTokens()
	if not props.Markdown and not props.Ast then
		warn("MarkdownViewer requires either a Markdown string or an Ast in props")
		return nil
	end

	local renderers = React.useMemo(function()
		return Dash.join(
			MarkdownRenderer.defaultRenderers,
			props.Renderers or {},
			props.AdditionalFeatureRenderers or {}
		)
	end, { props.Renderers })

	-- selene: allow(shadowing)
	local ok, astOrError = React.useMemo(function()
		-- We guarded against both being nil at the start of the function,
		-- but the typechecker still complains about the possibility of both being nil.
		if props.Ast then
			return true, props.Ast
		end
		if props.Markdown then
			local ok, astOrError = Parser.safeParse(props.Markdown)
			if not ok then
				if props.OnError then
					props.OnError(astOrError)
				else
					warn("MarkdownViewer: Error parsing markdown.", astOrError)
				end
			end
			return ok, astOrError
		end
		return true, nil
	end, { props.Markdown, props.Ast })

	local children = React.useMemo(function()
		if not ok then
			return nil
		end
		return MarkdownRenderer.render(astOrError, {
			userRenderers = renderers,
			linkCallback = props.LinkCallback,
			markdownRendererProps = props.MarkdownRendererProps,
			colorScheme = props.ColorScheme,
			tokens = tokens,
		})
	end, { ok, astOrError, props.LinkCallback, props.MarkdownRendererProps, props.ColorScheme, renderers })

	if not ok then
		return props.Fallback
			or React.createElement(
				View,
				Dash.join(
					{ tag = "size-full-0 auto-y", backgroundStyle = {
						Transparency = 1,
					} },
					props.WrapperProps or {}
				),
				React.createElement(Text, { Text = "Failed to parse the provided markdown" })
			)
	else
		return React.createElement(
			View,
			Dash.join({
				tag = "col size-full-0 auto-y",
				backgroundStyle = {
					Transparency = 1,
				},
				BorderSizePixel = 0,
			}, props.WrapperProps or {}),
			children
		)
	end
end

return MarkdownViewer

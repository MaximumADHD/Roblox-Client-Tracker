--[[
	MarkdownViewer takes a markdown string as input and displays the rich content using a combination of RichText and inline UI components.

	Required Props (One of the following):
		string Markdown: Markdown string to be displayed
		table Ast: A Markdown AST to be displayed

	Optional Props:
		table Renderers: Specifies components to draw markdown nodes
		callback LinkCallback: A function to call when a link is clicked (url: string) -> ()
		table WrapperProps: A table of props to pass to the Frame that wraps the whole markdown content
		table MarkdownRendererProps: A table of props to pass to text elements
		table ColorScheme: A table of token colors to use for code highlighting
		any Fallback: A ReactNode that will be displayed if there is an error parsing markdown
		callback OnError: A callback that will be called when there is an error parsing markdown with the error as a single argument
]]

local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local Dash = require(Framework.Parent.Dash)

local Parser = require(Framework.Util.Markdown.MarkdownParser)
local HighlighterTypes = require(Framework.Util.Highlighter.Types)
local MarkdownTypes = require(Framework.Util.Markdown.Types)
local MarkdownRenderer = require(script.MarkdownRenderer)
local TextLabel = require(Framework.UI.Components.TextLabel)

export type Props = {
	Markdown: string?,
	Ast: MarkdownTypes.Node?,
	Renderers: MarkdownRenderer.RenderersType?,
	LinkCallback: MarkdownRenderer.LinkCallbackType?,
	MarkdownRendererProps: MarkdownRenderer.MarkdownRendererPropsType?,
	WrapperProps: { [string]: any }?,
	ColorScheme: HighlighterTypes.TokenColors?,
	Fallback: React.Node?,
	OnError: ((error: any) -> ())?,
}

local function MarkdownViewer(props: Props)
	if not props.Markdown and not props.Ast then
		warn("MarkdownViewer requires either a Markdown string or an Ast in props")
		return nil
	end

	local renderers = React.useMemo(function()
		return Dash.join(MarkdownRenderer.defaultRenderers, props.Renderers or {})
	end, { props.Renderers })

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
		})
	end, { ok, astOrError, props.LinkCallback, props.MarkdownRendererProps, props.ColorScheme, renderers })

	if not ok then
		return props.Fallback
			or React.createElement(
				"Frame",
				Dash.join({ [React.Tag] = "X-FitY X-Transparent" }, props.WrapperProps or {}),
				React.createElement(TextLabel, { Text = "Failed to parse the provided markdown" })
			)
	else
		return React.createElement(
			"Frame",
			Dash.join({
				[React.Tag] = "X-Column X-FitY X-Transparent Component-Markdown",
			}, props.WrapperProps or {}),
			children
		)
	end
end

return MarkdownViewer

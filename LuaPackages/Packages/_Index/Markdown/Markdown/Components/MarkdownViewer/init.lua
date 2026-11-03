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
		boolean IsStreaming: Whether more Markdown is still arriving, so content left incomplete at the end may still finish
		string ParserProfile: "RobloxMarkdown" or "CommonMark", the new parser's profile to parse Markdown with, or
			"Legacy" for CommonMarkComplianceParser. Temporary cutover config, not long-term API: honored only while
			FFlagMarkdownUseRobloxProfileParser or FFlagMarkdownDefaultRobloxProfile is on. When nil, Markdown is parsed
			with Parsers.RobloxMarkdown if FFlagMarkdownDefaultRobloxProfile is on, else with CommonMarkComplianceParser
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
local MarkdownFlags = require(Root.Flags)
local Types = require(Root.Types)
local MarkdownRenderer = require(script.MarkdownRenderer)
local Flags = MarkdownCore.Flags

export type ParserProfile = "RobloxMarkdown" | "CommonMark" | "Legacy"

-- A type only: the profiles share this shape
type ProfileParser = typeof(require(Root.Parsers.RobloxMarkdown.RendererParser))

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
	IsStreaming: boolean?,
	ParserProfile: ParserProfile?,
}

-- Required on first use, so a viewer loads only the profile it names
local function profileParser(profile: ParserProfile?): ProfileParser?
	if profile == "RobloxMarkdown" then
		return require(Root.Parsers.RobloxMarkdown.RendererParser)
	elseif profile == "CommonMark" then
		return require(Root.Parsers.CommonMark.RendererParser)
	end
	return nil
end

local function MarkdownViewer(props: Props)
	local tokens = useTokens()

	if not Flags.FFlagMarkdownAssistantParity and not props.Markdown and not props.Ast then
		warn("MarkdownViewer requires either a Markdown string or an Ast in props")
		return nil
	end

	local renderers = React.useMemo(
		function()
			return Dash.join(
				MarkdownRenderer.defaultRenderers,
				props.Renderers or {},
				props.AdditionalFeatureRenderers or {}
			)
		end,
		if Flags.FFlagMarkdownAssistantParity
			then { props.Renderers, props.AdditionalFeatureRenderers }
			else { props.Renderers }
	)

	local parserOptions = if (Flags.FFlagMarkdownTables or Flags.FFlagMarkdownTagFallbacks) and props.IsStreaming
		then {
			isStreaming = true,
		}
		else nil
	local parseDependencies = if Flags.FFlagMarkdownTables or Flags.FFlagMarkdownTagFallbacks
		then { props.Markdown, props.Ast, props.IsStreaming, props.ParserProfile }
		else { props.Markdown, props.Ast, props.ParserProfile }

	local ok, astOrError = React.useMemo(function()
		-- We guarded against both being nil at the start of the function,
		-- but the typechecker still complains about the possibility of both being nil.
		if props.Ast then
			return true, props.Ast
		end
		if props.Markdown then
			local parseOk, parseResult
			local defaultsToProfile = MarkdownFlags.FFlagMarkdownDefaultRobloxProfile
			local profile = if MarkdownFlags.FFlagMarkdownUseRobloxProfileParser or defaultsToProfile
				then profileParser(props.ParserProfile or if defaultsToProfile then "RobloxMarkdown" else nil)
				else nil
			if profile ~= nil then
				parseOk, parseResult = profile.safeParse(props.Markdown, parserOptions)
			else
				parseOk, parseResult = Parser.safeParse(props.Markdown, parserOptions)
			end
			if not parseOk then
				if props.OnError then
					props.OnError(parseResult)
				else
					warn("MarkdownViewer: Error parsing markdown.", parseResult)
				end
			end
			return parseOk, parseResult
		end
		return true, nil
	end, parseDependencies)

	local children = React.useMemo(
		function()
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
		end,
		if Flags.FFlagMarkdownAssistantParity
			then {
				ok,
				astOrError,
				props.LinkCallback,
				props.MarkdownRendererProps,
				props.ColorScheme,
				renderers,
				tokens,
			}
			else { ok, astOrError, props.LinkCallback, props.MarkdownRendererProps, props.ColorScheme, renderers }
	)

	if Flags.FFlagMarkdownAssistantParity and not props.Markdown and not props.Ast then
		warn("MarkdownViewer requires either a Markdown string or an Ast in props")
		return nil
	end

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

local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent
local Foundation = require(Packages.Foundation)
local View = Foundation.View

local React = require(Packages.React)
local MarkdownViewer = require(Root.Components.MarkdownViewer)
local Parser = require(Root.Parsers.CommonMarkComplianceParser)
local unindentTags = require(Root.Parsers.UnindentTags)
local tokenize = require(Root.Parsers.CommonMarkComplianceParser.Tokenize)

local function customTextStory()
	local text, setText = React.useState("")

	local okTokens, tokensOrError = React.useMemo(function()
		return pcall(function()
			return tokenize(unindentTags(text), { inlineTags = { font = true, img = true }, nodeConfiguration = {} })
		end)
	end, { text })
	print("Tokens:", tokensOrError)

	local okAst, astOrError = React.useMemo(function()
		return Parser.safeParse(text)
	end, { text })
	print("Ast:", astOrError)

	if not okTokens then
		warn("Error tokenizing markdown", tokensOrError)
		return nil
	end
	if not okAst then
		warn("Error parsing markdown", astOrError)
		return nil
	end

	return React.createElement(
		View,
		{ tag = "size-full-0 auto-y col gap-medium" },
		React.createElement("TextBox", {
			Text = text,
			MultiLine = true,
			[React.Change.Text] = function(rbx: TextBox)
				setText(rbx.Text)
			end,
			Font = Enum.Font.BuilderSans,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextXAlignment = Enum.TextXAlignment.Left,
			BorderSizePixel = 1,
			BorderColor3 = Color3.fromRGB(27, 42, 53),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 0,
			TextSize = 18,
			Size = UDim2.new(1, 0, 0, 200),
			LayoutOrder = 1,
			ClearTextOnFocus = false,
			PlaceholderText = "Your custom text",
			TextWrapped = true,
		}),
		React.createElement(MarkdownViewer, { Ast = astOrError, WrapperProps = { LayoutOrder = 2 } })
	)
end

return {
	name = "Type text to see how it displays, is tokenized, and the generated AST",
	story = customTextStory,
}

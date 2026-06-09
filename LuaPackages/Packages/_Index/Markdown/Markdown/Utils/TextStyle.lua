local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local Dash = require(Packages.Dash)
local Types = require(Root.Types)
local InlineLayout = require(Packages.InlineLayout)
local InlineEngineTag = require(Packages.MarkdownCore).Enums.InlineEngineTag

local function getCodeTextStyles(context: Types.Context): Types.CodeStyles
	return Dash.joinDeep(context.textStyles, context.codeStyles)
end

local function getBaseTextElementEngineTags(props: Types.TextStyles?): { InlineLayout.BaseTextElementEngineTag }?
	if not props then
		return nil
	end

	local engineTags = {}
	if props.bold then
		table.insert(engineTags, {
			name = InlineEngineTag.BOLD,
			attributes = {},
		})
	end
	if props.italic then
		table.insert(engineTags, {
			name = InlineEngineTag.ITALIC,
			attributes = {},
		})
	end
	if props.strike then
		table.insert(engineTags, {
			name = InlineEngineTag.STRIKE,
			attributes = {},
		})
	end
	if props.color then
		table.insert(engineTags, {
			name = InlineEngineTag.FONT,
			attributes = {
				color = props.color,
			},
		})
	end
	return engineTags
end

return {
	getCodeTextStyles = getCodeTextStyles,
	getBaseTextElementEngineTags = getBaseTextElementEngineTags,
}

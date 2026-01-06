local MarkdownCore = require(script.Parent.Parent.MarkdownCore)

export type BaseTextElementEngineTag = {
	name: MarkdownCore.InlineEngineTag,
	attributes: {
		[string]: string,
	},
}

return {}

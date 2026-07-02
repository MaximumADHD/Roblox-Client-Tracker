local Components = script.Components
local SharedFlags = script.SharedFlags

return {
	Components = {
		InlineLayout = require(Components.InlineLayout),
		MarkdownViewer = require(Components.MarkdownViewer),
		BulletList = require(Components.BulletList),
	},
	SharedFlags = require(SharedFlags),
}

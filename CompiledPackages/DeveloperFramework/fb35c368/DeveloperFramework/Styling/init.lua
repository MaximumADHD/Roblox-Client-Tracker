local types = require(script.types)

export type StyleProperties = types.StyleProperties

return {
	createDesign = require(script.createDesign),
	createStudioDesign = require(script.createStudioDesign),
	createStyleLink = require(script.createStyleLink),
	createStyleRule = require(script.createStyleRule),
	createStyleSheet = require(script.createStyleSheet),
	joinTags = require(script.joinTags),
	hasTag = require(script.hasTag),
	omitTags = require(script.omitTags),
	registerPluginStyles = require(script.registerPluginStyles),
	printStyleSheetHierarchy = require(script.printStyleSheetHierarchy),
}

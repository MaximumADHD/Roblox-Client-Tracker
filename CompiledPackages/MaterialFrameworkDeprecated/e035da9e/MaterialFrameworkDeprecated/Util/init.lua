return {
	Constants = require(script.Constants),

	applyToBasePart = require(script.applyToBasePart),
	applyToInstances = require(script.applyToInstances),
	getMaterialColor = require(script.getMaterialColor),
	getMaterialName = require(script.getMaterialName),
	getSerializedMaterialIdentifier = require(script.getSerializedMaterialIdentifier),
	levenshteinDistance = require(script.levenshteinDistance),
	parseMaterial = require(script.parseMaterial),
}

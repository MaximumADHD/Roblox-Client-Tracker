local Packages = script.Parent
local TestUtils = require(Packages.TestUtils)

return {
	findFirstInstance = TestUtils.findFirstInstance,
	testOnActivated = require(script.testOnActivated),
	findFirstElement = require(script.findFirstElement),
	countInstances = require(script.countInstances),
	typeTextIntoElement = require(script.typeTextIntoElement),
	typeTextIntoInstance = require(script.typeTextIntoInstance),
	clickInstance = require(script.clickInstance),
}

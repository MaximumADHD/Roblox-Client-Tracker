local strict = require(script.Parent.Util.strict)

return strict({
	deepOverwrite = require(script.deepOverwrite),
	getInstanceSnapshot = require(script.getInstanceSnapshot),
	Instances = require(script.Instances),
	makeSettableValue = require(script.makeSettableValue),
	provideMockContext = require(script.provideMockContext),
	setEquals = require(script.setEquals),
	testImmutability = require(script.testImmutability),
	ServiceWrapper = require(script.ServiceWrapper),
})

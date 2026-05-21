--!strict
return {
	isReactComponent = require(script.isReactComponent),
	trackMemberAccess = require(script.trackMemberAccess),

	getFileInfo = require(script.getFileInfo),
	getUsageGraph = require(script.UsageGraph).getUsageGraph,
}

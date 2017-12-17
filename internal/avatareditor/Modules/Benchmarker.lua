	
--To view benchmark prints, set AvatarEditorPrintsBenchmarkTest to true

local flagManager = require(script.Parent.FlagManager)

local module = {}
local runningTests = {}
module.runningTests = runningTests

module.set = function(id)
	runningTests[id] = tick()
end

module.check = function(id, preface)
	local result = tick()-(runningTests[id] or tick())
	if flagManager.AvatarEditorPrintsBenchmarkTest then
		print('Benchmark', preface or id, ':', result)
	end
	return result
end

return module

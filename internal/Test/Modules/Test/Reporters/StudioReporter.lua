local TextReporter = require(script.Parent.TextReporter)
local GuiReporter = require(script.Parent.GuiReporter)

local StudioReporter = {}

function StudioReporter.report(results, config)
	TextReporter.report(results, config)
	GuiReporter.report(results, {
		hideSkipped = true
	})
end

return StudioReporter
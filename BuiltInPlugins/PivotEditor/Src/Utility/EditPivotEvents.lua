local Plugin = script.Parent.Parent.Parent
local Framework = Plugin.Packages.Framework

local Signal = require(Framework.Util.Signal)

local EditPivotEvents = {}

function EditPivotEvents.new()
	return setmetatable({
		onClearPivot = Signal.new(),
		onSelectGeometry = Signal.new(),
		onSelectSurface = Signal.new(),
		onSelectPart = Signal.new(),
		onSelectModel = Signal.new(),
	}, EditPivotEvents)
end

return EditPivotEvents

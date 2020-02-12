local Plugin = script.Parent.Parent.Parent
local Signal = require(Plugin.Src.Util.Signal)

local MockSelectionService = {}
MockSelectionService.__index = MockSelectionService

function MockSelectionService.new()
	local self = setmetatable({
		_selection = {},
		SelectionChanged = Signal.new(),
	}, MockSelectionService)

	return self
end

function MockSelectionService:Get()
	return self._selection
end

function MockSelectionService:Set(selection)
	self._selection = selection
	self.SelectionChanged:fire()
end

return MockSelectionService

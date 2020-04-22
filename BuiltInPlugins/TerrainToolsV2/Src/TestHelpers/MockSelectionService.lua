local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and require(Framework.Util) or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or require(Plugin.Src.Util.Signal)

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
	self.SelectionChanged:Fire()
end

return MockSelectionService

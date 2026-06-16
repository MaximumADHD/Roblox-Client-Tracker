--!nonstrict
local Signal = require(script.Parent.Parent.Parent.Signal)

local Constants = require(script.Parent.Parent.Parent.Constants)
local HEADER_NAMES = Constants.DebugVisualizationsFormatting.ChartHeaderNames

local DebugVisualizationsContent = require(script.Parent.DebugVisualizationsStaticContent)
local FFlagSlimDevConsole = game:DefineFastFlag("SlimDevConsole", false)

local SORT_COMPARATOR = {
	[HEADER_NAMES[1]] = function(a, b) -- "Name"
		return a.name < b.name
	end,
	[HEADER_NAMES[2]] = function(a, b) -- "Value"
		return if (a.settingInfo.Value ~= b.settingInfo.Value) then a.settingInfo.Value else
			a.name < b.name
	end,
	[HEADER_NAMES[3]] = function(a, b) -- "Type"
		return if (a.settingInfo.Type ~= b.settingInfo.Type) then a.settingInfo.Type < b.settingInfo.Type else
			a.name < b.name
	end,
	[HEADER_NAMES[4]] = function(a, b) -- "Tags"
		return a.name < b.name
	end,
}

local DebugVisualizationsData = {}
DebugVisualizationsData.__index = DebugVisualizationsData

function DebugVisualizationsData.new()
	local self = {}
	setmetatable(self, DebugVisualizationsData)

	self._visualizationsUpdated = Signal.new()
	self._visualizationsData = {}
	self._visualizationCounter = 0
	self._sortedVisualizationData = {}
	self._sortType = HEADER_NAMES[3] -- Type
	self._isRunning = false
	return self
end

function DebugVisualizationsData:setSortType(sortType)
	if SORT_COMPARATOR[sortType] then
		self._sortType = sortType
		table.sort(self._sortedVisualizationData, SORT_COMPARATOR[self._sortType])
		self._visualizationsUpdated:Fire(self._sortedVisualizationData)
	else
		error(string.format("attempted to pass invalid sortType: %s", tostring(sortType)), 2)
	end
end

function DebugVisualizationsData:getSortType()
	return self._sortType
end

function DebugVisualizationsData:Signal()
	return self._visualizationsUpdated
end

function DebugVisualizationsData:getCurrentData()
	return self._sortedVisualizationData
end

-- this funciton will require some extra work to handle  the
-- case a entry insert occurs during the end of the list
function DebugVisualizationsData:updateDebugVisualizationDataEntry(name, info)
	if info == nil then
		--remove element and clean up sorted
		self._visualizationsData[name] = nil
		for i, v in pairs(self._sortedVisualizationData) do
			if v.name == name then
				table.remove(self._sortedVisualizationData, i)
				return
			end
		end

	elseif not self._visualizationsData[name] then
		self._visualizationCounter = self._visualizationCounter + 1
		self._visualizationsData[name] = info
		local newEntry = {
			name = name,
			settingInfo = self._visualizationsData[name],
			valueChangeCallback = function(name, value)
				self:_toggleValue(name, value)
			end,
			counter = self._visualizationCounter,
		}
		table.insert(self._sortedVisualizationData, newEntry)
	else
		self._visualizationsData[name] = info
	end
end

function DebugVisualizationsData:isRunning()
	return self._isRunning
end

function DebugVisualizationsData:_toggleValue(name, value)
	if FFlagSlimDevConsole then
		local info = self._visualizationsData[name]
		if info and info["Kind"] == "Dropdown" then
			local svc = (settings() :: any):GetService(info["Service"])
			svc[info["Setter"]](svc, value)
			info["Value"] = value
			table.sort(self._sortedVisualizationData, SORT_COMPARATOR[self._sortType])
			self._visualizationsUpdated:Fire(self._sortedVisualizationData)
			return
		end
	end

	-- bounding box draw types are mutually exlusive
	local physicsSettings = settings().Physics
	if physicsSettings[name] ~= nil then
		if value and self._visualizationsData[name]["Type"] == "Box" then
			for _, entry in pairs(self._visualizationsData) do
				if entry["Type"] == "Box" and physicsSettings[entry.Name] ~= nil then
					physicsSettings[entry.Name] = false
					self._visualizationsData[entry.Name]["Value"] = false
				end
			end
		end

		physicsSettings[name] = value
		self._visualizationsData[name]["Value"] = value

		table.sort(self._sortedVisualizationData, SORT_COMPARATOR[self._sortType])
		self._visualizationsUpdated:Fire(self._sortedVisualizationData)
	end
end

function _constructInfo(name, info)
	local value
	local dropDownList
	local enumItems

	if FFlagSlimDevConsole and info.kind == "Dropdown" then
		local ok, svc = pcall(function()
			return (settings() :: any):GetService(info.service)
		end)
		if ok and svc then
			value = svc[info.getter](svc)
			enumItems = value.EnumType:GetEnumItems()
			dropDownList = {}
			for i, item in ipairs(enumItems) do
				dropDownList[i] = item.Name
			end
		end
	else
		local physicsSettings = settings().Physics
		value = false
		if physicsSettings[name] ~= nil then
			value = physicsSettings[name]
		end
	end

	local tagstring = ""
	for index, value in ipairs(info.tags) do
		tagstring = tagstring .. value
		tagstring = tagstring .. if index ~= #info.tags then ", " else ""
	end

	local result = {
		Name = info.name,
		Value = value,
		Type = info.type,
		Kind = if FFlagSlimDevConsole then info.kind else nil,
		Tags = info.tags,
		Tagstring = tagstring,
		Description = info.description,
	}

	if FFlagSlimDevConsole and info.kind == "Dropdown" then
		result.DropDownList = dropDownList
		result.EnumItems = enumItems
		result.Service = info.service
		result.Setter = info.setter
	end

	return result
end

function DebugVisualizationsData:start()
	for settingName, settingInfo in pairs(DebugVisualizationsContent) do
		self:updateDebugVisualizationDataEntry(settingName, _constructInfo(settingName, settingInfo))
	end
	table.sort(self._sortedVisualizationData, SORT_COMPARATOR[self._sortType])
	self._isRunning = true
end

function DebugVisualizationsData:stop()
	self._isRunning = false
end

return DebugVisualizationsData

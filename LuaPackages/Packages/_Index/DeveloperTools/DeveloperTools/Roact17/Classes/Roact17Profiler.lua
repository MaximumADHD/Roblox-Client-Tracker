--[[
	The Roact17Profiler aggregates events from Roact components as they mount, render and update.
]]
local Source = script.Parent.Parent.Parent
local Packages = Source.Parent

local Dash = require(Packages.Dash)
local class = Dash.class
local slice = Dash.slice
local filter = Dash.filter
local forEach = Dash.forEach
local pretty = Dash.pretty
local reverse = Dash.reverse
local some = Dash.some
local find = Dash.find

local concat = table.concat
local insert = table.insert
local sort = table.sort

local Types = require(Source.Types)
local Roact17Types = require(Source.Roact17.types)

type Array<T> = { [number]: T }

local Roact17Profiler = class("Roact17Profiler", function(worker)
	local self = {
		active = false,
		-- The React devtools
		devtools = worker.devtools,
		-- The ID of the root fiber
		root = worker.root,
		-- Events are aggregated into rows, one per instance
		rows = {} :: Array<Types.ProfileComponentRow>,
		-- A map of instance ids to corresponding event list
		instanceEvents = {} :: Types.Record<number, Types.ProfileEvent>,
		-- The event list of the currently selected instance
		selectedEvents = {} :: Array<Types.ProfileEvent>,
		-- The total number of commit entries
		commitCount = 0,
		-- The total number of events processed since profiling began
		eventCount = 0,
		-- A reference to the parent worker
		worker = worker,
		-- A list of events currently being processed
		currentEvents = {},
		-- An array of strings to exclude components by a name substring
		filter = {},
		-- The search term to select component names by (case insensitive)
		searchTerm = nil,
		-- The TableData for the components table
		profileComponents = {
			sortIndex = nil,
			sortOrder = nil,
			columns = {"instanceName", "depth", "count", "renderTime", "time"},
		},
		-- The TableData for the events table
		profileEvents = {
			sortIndex = nil,
			sortOrder = nil,
			columns = {"startTime", "renderTime", "time", "cause", "details"}
		},
		slices = {
			componentSliceStart = -1,
			componentSliceEnd = -1,
			eventSliceStart = -1,
			eventSliceEnd = -1
		}
	}
	return self
end)

function Roact17Profiler:_init()
	self.devtools.bridge:addListener('profilingData', function(input)
		self:updateRows(input)
	end)
end

--[[
	Store the sort request from the inspector plugin for future use when the data is re-fetched.
]]
function Roact17Profiler:sortData(tableName: string, index: number, order: Enum.SortDirection)
	self[tableName].sortIndex = index
	self[tableName].sortOrder = order
end

--[[
	Return specific slices of the component & event rows for their respective tables.
]]
function Roact17Profiler:getData(slices: Types.Slices)
	self.slices = slices
	local ok, err = pcall(function()
		self.devtools.agent:getProfilingData({
			rendererID = self.devtools.store:getRendererIDForElement(self.root)
		})
	end)
	if not ok and not err:find("getProfilingData%(%) called before any profiling data was recorded") then
		warn(err)
	end
end



--[[
	Process all the events we recorded live in a delayed cycle.
]]
function Roact17Profiler:updateRows(input: Roact17Types.ProfilerData)
	local rootData = find(input.dataForRoots, function(data)
		return data.rootID == self.root
	end)
	if not rootData then
		return
	end
	local rootInstance = self.worker:getHostInstance(self.root)
	local commitData = rootData.commitData
	while self.commitCount < #commitData do
		self.commitCount += 1
		local commit = commitData[self.commitCount]
		forEach(commit.changeDescriptions, function(changeDescription)
			local nodeId = changeDescription[1]
			local node = self.devtools.store:getElementByID(nodeId)
			local descriptionData = changeDescription[2]
			local hostNode = self.worker:getHostNode(nodeId)
			local instance = if hostNode then self.worker:getHostInstance(hostNode.id) else nil
			local path = if instance then self.worker:getPath(instance) else nil
			local pathString
			if path then
				local pathParts: Array<string> = {}
				while instance ~= nil and instance ~= rootInstance do
					insert(pathParts, instance.Name)
					instance = instance.Parent
				end
				insert(pathParts, rootInstance.Name)
				pathString = concat(reverse(pathParts), ".")
			else
				pathString = "Unknown"
			end
			local instanceName = if node then node.displayName else "Unknown"
			if node and #node.key > 0 and node.key ~= node.displayName then
				instanceName = ("%s: %s"):format(node.key, instanceName)
			end
			local row: Types.ProfileComponentRow = self.rows[nodeId] or {
				instanceId = nodeId,
				count = 0,
				depth = if path then #path else 0,
				path = path or {},
				pathString = pathString,
				instanceName = instanceName,
				time = 0,
				renderTime = 0,
			}
			self.rows[nodeId] = row
			self.eventCount += 1
			row.count += 1
			if not self.instanceEvents[nodeId] then
				self.instanceEvents[nodeId] = {}
			end
			local cause: Array<string> = {}
			if descriptionData.isFirstMount then
				insert(cause, "mount")
			else
				if descriptionData.props then
					insert(cause, "props")
				end
				if descriptionData.state then
					insert(cause, "state")
				end
			end
			local propsString = if descriptionData.props then pretty(descriptionData.props) else ""
			local stateString = if descriptionData.state then pretty(descriptionData.state) else ""
			local details = propsString .. " " .. stateString
			local event = {
				startTime = commit.timestamp,
				renderTime = 0,
				time = 0,
				cause = concat(cause, ", "),
				updateTrace = "",
				log = "",
				details = details,
				detailsTip = details,
			}
			self.currentEvents[nodeId] = event
			insert(self.instanceEvents[nodeId], event)
		end)
		forEach(commit.fiberActualDurations, function(pair: Types.Pair<number, number>)
			local instanceId = pair[1]
			local event = self.currentEvents[instanceId]
			if not event then
				return
			end
			event.time += pair[2]
			self.rows[instanceId].time += pair[2]
		end)
		forEach(commit.fiberSelfDurations, function(pair: Types.Pair<number, number>)
			local instanceId = pair[1]
			local event = self.currentEvents[instanceId]
			if not event then
				return
			end
			event.renderTime += pair[2]
			self.rows[instanceId].renderTime += pair[2]
		end)
		-- Clear the current events until next time
		for key in pairs(self.currentEvents) do
			self.currentEvents[key] = nil
		end
	end
	
	local componentRows = self:getComponentRows()
	local eventRows = self:getEventRows()
	local eventRowsSlice = slice(eventRows, self.slices.eventSliceStart, self.slices.eventSliceEnd)
	self.worker:showProfileData({
		componentRows = slice(componentRows, self.slices.componentSliceStart, self.slices.componentSliceEnd),
		eventRows = eventRowsSlice,
		rowCount = #componentRows,
		eventCount = self.eventCount,
		instanceEventCount = #self.selectedEvents
	})
end

--[[
	Store the select request from the inspector plugin for future use when the data is re-fetched
]]
function Roact17Profiler:selectInstance(instanceId: number)
	self.instanceEvents[instanceId] = self.instanceEvents[instanceId] or {}
	self.selectedEvents = self.instanceEvents[instanceId]
end

--[[
	For the component data being recorded, filter out any excluded components & select on search
	criteria, before sorting & returning the data.
]]
function Roact17Profiler:getComponentRows(): Array<Types.ProfileComponentRow>
	local rowValues: Array<Types.ProfileEvent> = {}
	for _, row in pairs(self.rows) do
		insert(rowValues, row)
	end
	if self.filter or self.searchTerm then
		rowValues = filter(rowValues, function(row)
			if self.searchTerm and not row.instanceName:lower():find(self.searchTerm) then
				return false
			end
			return not some(self.filter, function(filterTerm: string)
				return row.instanceName:find(filterTerm)
			end)
		end)
	end
	return self:getSortedData(rowValues, self.profileComponents)
end

function Roact17Profiler:getEventRows(): Array<Types.ProfileEvent>
	return self:getSortedData(self.selectedEvents, self.profileEvents)
end

--[[
	Sort the data array that has been collected based on a particular column and order.
	TODO Luau - support generic functions
]]
function Roact17Profiler:getSortedData(data: Array<any>, tableSort: Types.TableSort): Array<any>
	if tableSort.sortIndex then
		sort(data, function(a, b)
			local column = tableSort.columns[tableSort.sortIndex]
			if self.profileComponents.sortOrder == Enum.SortDirection.Descending then
				return a[column] < b[column]
			else
				return a[column] > b[column]
			end
		end)
	end
	return data
end

function Roact17Profiler:setSearchTerm(searchTerm: string)
	-- Perform case insensitive search
	self.searchTerm = searchTerm:lower()
end

--[[
	Reset all the profile data back to the initial state.
]]
function Roact17Profiler:clearData()
	self.events = {}
	self.eventCount = 0
	self.commitCount = 0
	self.rows = {}
	self.instanceEvents = {}
	self.selectedEvents = {}
end

--[[
	Enable/disable if the profiler is active.
]]
function Roact17Profiler:setActive(active: boolean)
	if self.active == active then
		return
	end
	self.active = active
	if active then
		self.devtools.agent:startProfiling(true)
	else
		self.devtools.agent:stopProfiling(true)
	end
end

--[[
	Destroy the profiler to prevent any new data being collected
]]
function Roact17Profiler:destroy()
	self:setActive(false)
	self:clearData()
end

return Roact17Profiler

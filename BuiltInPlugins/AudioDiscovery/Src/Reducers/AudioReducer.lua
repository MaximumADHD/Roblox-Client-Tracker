local FFlagStudioAudioDiscoveryPluginV2 = game:GetFastFlag("StudioAudioDiscoveryPluginV2")
local FFlagStudioAudioDiscoveryPluginV3 = game:GetFastFlag("StudioAudioDiscoveryPluginV3")
local FFlagStudioAudioDiscoveryPluginV4 = game:GetFastFlag("StudioAudioDiscoveryPluginV4")

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)

local Dash = Framework.Dash
local append = Dash.append
local join = Dash.join
local findIndex = Dash.findIndex
local None = Dash.None

local sort = table.sort

local Actions = Plugin.Src.Actions
local SetDialog = require(Actions.SetDialog)
local SelectRow = require(Actions.SelectRow)
local Unpause = require(Actions.Unpause)
local UpdateRows = require(Actions.UpdateRows)
local UpdateLocations = require(Actions.UpdateLocations)
local SortTable = require(Actions.SortTable)

local columns = {
	Left = {"OK", "Id", "Name", "Time", "Creator"},
	Right = {"Instance", "Path"}
}

local function sanitize(columnName: string, row, locations)
	local value = row[columnName]
	if FFlagStudioAudioDiscoveryPluginV3 then
		if columnName == "Id" then
			return tonumber(value)
		end
	end
	if FFlagStudioAudioDiscoveryPluginV2 and locations and columnName == "OK" then
		if locations[row.Id] and #locations[row.Id] == 0 then
			return "fixed"
		else
			return value
		end
	else
		return if type(value) == "userdata" then tostring(value) else value
	end
end

local function sortRows(rows, columnName: string, order: Enum.SortDirection, locations)
	local result = join({}, rows)
	sort(result, function(a, b)
		if order == Enum.SortDirection.Descending then
			return sanitize(columnName, a, locations) < sanitize(columnName, b, locations)
		else
			return sanitize(columnName, a, locations) > sanitize(columnName, b, locations)
		end
	end)
	return result
end

return Rodux.createReducer({
	Dialog = false,
	Paused = true,
	Rows = {},
	SelectedRow = nil,
	Left = {
		SortIndex = 1,
		SortOrder = Enum.SortDirection.Descending,
	},
	Right = {},
}, {
	[SetDialog.name] = function(state, action)
		return join(state, {
			Dialog = action.Open,
		})
	end,
	[UpdateRows.name] = function(state, action)
		local columnName = columns.Left[state.Left.SortIndex]
		local rows = append({}, state.Rows, action.Rows)
		local selectedRow
		if FFlagStudioAudioDiscoveryPluginV4 then
			local sortedRows = sortRows(rows, columnName, state.Left.SortOrder, state.Locations)
			if state.SelectedRow then
				local assetId = state.Rows[state.SelectedRow].Id
				selectedRow = findIndex(sortedRows, function(row)
					return row.Id == assetId
				end) or None
			end
			return join(state, {
				SelectedRow = selectedRow,
				Rows = sortedRows,
			})
		else
			if FFlagStudioAudioDiscoveryPluginV2 and state.SelectedRow then
				local assetId = state.Rows[state.SelectedRow].Id
				selectedRow = findIndex(rows, function(row)
					return row.Id == assetId
				end) or None
			end
			return join(state, {
				SelectedRow = selectedRow,
				Rows = sortRows(rows, columnName, state.Left.SortOrder, state.Locations),
			})
		end
	end,
	[Unpause.name] = function(state)
		return join(state, {
			Paused = false
		})
	end,
	[SelectRow.name] = function(state, action)
		local locations = state.locations
		if state.Right.SortIndex and state.SelectedRow then
			local assetId = state.Rows[state.SelectedRow].Id
			local columnName = columns.Right[state.Right.SortIndex]
			locations = join({}, state.Locations, {
				[assetId] = sortRows(state.Locations[assetId], columnName, state.Right.SortOrder)
			})
		end
		return join(state, {
			Locations = locations,
			SelectedRow = action.SelectedRow,
		})
	end,
	[UpdateLocations.name] = function(state, action)
		local rows
		local locations = join({}, state.Locations, action.Locations)
		if FFlagStudioAudioDiscoveryPluginV2 then
			local columnName = columns.Left[state.Left.SortIndex]
			rows = sortRows(state.Rows, columnName, state.Left.SortOrder, locations)
		end
		return join(state, {
			Rows = rows,
			Locations = locations,
		})
	end,
	[SortTable.name] = function(state, action)
		local columnName = columns[action.TableName][action.SortIndex]
		local selectedRow = state.SelectedRow
		local rows = state.Rows
		local locations = state.Locations
		local assetId = if state.SelectedRow then state.Rows[state.SelectedRow].Id else nil
		if action.TableName == "Left" then
			rows = sortRows(state.Rows, columnName, action.SortOrder, locations)
			if state.SelectedRow then
				selectedRow = findIndex(rows, function(row)
					return row.Id == assetId
				end)
				if FFlagStudioAudioDiscoveryPluginV2 and not selectedRow then
					selectedRow = None
				end
			end
		end
		if action.TableName == "Right" and assetId then
			locations = join({}, state.Locations, {
				[assetId] = sortRows(state.Locations[assetId], columnName, action.SortOrder)
			})
		end
		return join(state, {
			SelectedRow = selectedRow,
			Rows = rows,
			Locations = locations,
			[action.TableName] = {
				SortIndex = action.SortIndex,
				SortOrder = action.SortOrder,
			}
		})
	end
})

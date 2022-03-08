local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)

local Dash = Framework.Dash
local append = Dash.append
local join = Dash.join
local findIndex = Dash.findIndex

local sort = table.sort

local Actions = Plugin.Src.Actions
local SelectRow = require(Actions.SelectRow)
local UpdateRows = require(Actions.UpdateRows)
local UpdateLocations = require(Actions.UpdateLocations)
local SortTable = require(Actions.SortTable)

local columns = {
	Left = {"OK", "Id", "Name", "Time", "Creator"},
	Right = {"Instance", "Path"}
}

local function sanitize(value)
	return if type(value) == "userdata" then tostring(value) else value
end

local function sortRows(rows, column: string, order: Enum.SortDirection)
	local result = join({}, rows)
	sort(result, function(a, b)
		if order == Enum.SortDirection.Descending then
			return sanitize(a[column]) < sanitize(b[column])
		else
			return sanitize(a[column]) > sanitize(b[column])
		end
	end)
	return result
end

return Rodux.createReducer({
	Rows = {},
	SelectedRow = nil,
	Left = {
		SortIndex = 1,
		SortOrder = Enum.SortDirection.Descending,
	},
	Right = {},
}, {
	[UpdateRows.name] = function(state, action)
		local column = columns.Left[state.Left.SortIndex]
		local rows = append({}, state.Rows, action.Rows)
		return join(state, {
			Rows = sortRows(rows, column, state.Left.SortOrder),
		})
	end,
	[SelectRow.name] = function(state, action)
		local locations = state.locations
		if state.Right.SortIndex and state.SelectedRow then
			local assetId = state.Rows[state.SelectedRow].Id
			local column = columns.Right[state.Right.SortIndex]
			locations = join({}, state.Locations, {
				[assetId] = sortRows(state.Locations[assetId], column, state.Right.SortOrder)
			})
		end
		return join(state, {
			Locations = locations,
			SelectedRow = action.SelectedRow,
		})
	end,
	[UpdateLocations.name] = function(state, action)
		return join(state, {
			Locations = join({}, state.Locations, action.Locations),
		})
	end,
	[SortTable.name] = function(state, action)
		local column = columns[action.TableName][action.SortIndex]
		local selectedRow = state.SelectedRow
		local rows = state.Rows
		local locations = state.Locations
		local assetId = if state.SelectedRow then state.Rows[state.SelectedRow].Id else nil
		if action.TableName == "Left" then
			rows = sortRows(state.Rows, column, action.SortOrder)
			if state.SelectedRow then
				selectedRow = findIndex(rows, function(row)
					return row.Id == assetId
				end)
			end
		end
		if action.TableName == "Right" and assetId then
			locations = join({}, state.Locations, {
				[assetId] = sortRows(state.Locations[assetId], column, action.SortOrder)
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

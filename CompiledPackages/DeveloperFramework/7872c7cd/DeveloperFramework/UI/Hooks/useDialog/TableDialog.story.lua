--!strict

local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)
local React = require(Framework.Util.React)

local Components = Framework.UI.Components
local IconButton = require(Components.IconButton)
local PaginatedTable = require(Components.PaginatedTable)

local DialogAction = require(Framework.Util.DialogAction)

local useDialog = require(script.Parent)

type Row = {
	name: string,
	owner: string,
	id: number,
	type: string,
}

local COLUMNS = {
	{
		Name = "Asset Name",
		Key = "name",
	},
	{
		Name = "Owner",
		Key = "owner",
	},
	{
		Name = "Asset ID",
		Key = "id",
	},
	{
		Name = "Asset Type",
		Key = "type",
	},
}

local PAGE_SIZE = 4
local ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
local NUMBER = "1234567890"
local ASSET_TYPES = { "Audio", "Video", "Image", "Mesh" }

local function generateRandomString(minLength: number, maxLength: number, characterBank: string)
	local result = ""
	local length = math.random(minLength, maxLength)
	for _ = 1, length do
		local idx = math.random(1, #characterBank)
		result ..= characterBank:sub(idx, idx)
	end
	return result
end

type Props = {
	Rows: { Row },
}
local function PaginatedTableWrapper(props: Props)
	local pageIdx, setPageIdx = React.useState(1)
	local sortState, setSortState = React.useState({
		index = 1,
		order = Enum.SortDirection.Descending,
	})

	local sortedRows = React.useMemo(function()
		local sorted = table.clone(props.Rows)
		table.sort(sorted, function(rowA, rowB)
			local key = COLUMNS[sortState.index].Key
			local valueA = rowA[key]
			local valueB = rowB[key]
			if typeof(valueA) == "string" then
				valueA = string.upper(valueA)
				valueB = string.upper(valueB)
			end
			-- Seems like Table has ascending/descending mixed up for the icons
			-- and the default starting order when clicking a new column
			if sortState.order == Enum.SortDirection.Ascending then
				return valueA > valueB
			else
				return valueA < valueB
			end
		end)
		return sorted
	end, { props.Rows, sortState })

	local slicedRows = React.useMemo(function()
		return Dash.slice(sortedRows, (pageIdx - 1) * PAGE_SIZE + 1, pageIdx * PAGE_SIZE)
	end, { sortedRows, pageIdx } :: { unknown })

	return React.createElement(PaginatedTable, {
		Rows = slicedRows,
		Columns = COLUMNS,
		PageIndex = pageIdx,
		PageCount = math.floor((#props.Rows + PAGE_SIZE - 1) / PAGE_SIZE),
		PageSize = PAGE_SIZE,
		SortIndex = sortState.index,
		SortOrder = sortState.order,
		OnPageChange = setPageIdx,
		OnSortChange = function(index, order)
			setSortState({
				index = index,
				order = order,
			})
		end,
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
	})
end

local function TableDialogStory()
	local promptRows = React.useMemo(function()
		local result: { Row } = {}

		for _ = 1, 20 do
			table.insert(result, {
				name = generateRandomString(10, 20, ALPHA),
				owner = generateRandomString(6, 10, ALPHA),
				id = tonumber(generateRandomString(8, 10, NUMBER)) :: number,
				type = ASSET_TYPES[math.random(1, #ASSET_TYPES)],
			})
		end

		return result
	end, {})

	local failedRows = React.useMemo(function()
		local result = {}

		for _, row in promptRows do
			if math.random() < 0.5 then
				table.insert(result, row)
			end
		end

		return result
	end, { promptRows })

	local showFailed = useDialog({
		Intent = "Error",

		Heading = "Can't share access to assets",
		Body = "You don't have access to share the listed assets. Please get access from the asset "
			.. "owners. The listed assets will not be available if you proceed without sharing "
			.. "access to this experience.",
		Contents = React.createElement(PaginatedTableWrapper, {
			Rows = failedRows,
		}),

		ActionPrimary = DialogAction.OK,

		Width = 727,
	})

	local showPrompt = useDialog({
		Intent = "Warning",

		Heading = "Experience needs access to assets",
		Body = "This experience needs access to the listed assets. You can only share access to "
			.. "assets that you have access to. The listed assets will not be available in this "
			.. "experience if you proceed without sharing access to this experience.",
		Contents = React.createElement(PaginatedTableWrapper, {
			Rows = promptRows,
		}),

		ActionPrimary = {
			Label = "Share access",
			HidesDialog = true,
			OnActivated = showFailed,
		},
		ActionSecondary = DialogAction.CLOSE,

		Width = 727,
	})

	return React.createElement(IconButton, {
		OnClick = showPrompt,
		Text = "Show Table Dialog",
	})
end

return {
	story = React.createElement(TableDialogStory),
}

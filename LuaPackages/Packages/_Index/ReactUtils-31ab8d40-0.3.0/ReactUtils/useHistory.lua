--!strict
local ChangeHistoryService = game:GetService("ChangeHistoryService")

local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

local LUAU_ANALYZE_ERROR = ReactUtils.LUAU_ANALYZE_ERROR

local function useHistory<T>(item: T, setItem: (item: T) -> (), dependencies: {}): (string, T) -> ()
	local lastItemRef = React.useRef(item)
	local undoRef = React.useRef({})
	local redoRef = React.useRef({})

	React.useEffect(function()
		local onUndo = ChangeHistoryService.OnUndo:Connect(function(event)
			local undo = undoRef.current
			local redo = redoRef.current

			assert(undo ~= nil, LUAU_ANALYZE_ERROR)
			assert(redo ~= nil, LUAU_ANALYZE_ERROR)

			-- Check if action was tracked
			if not undo[event] or #undo[event] == 0 then
				return
			end

			-- Create space on the redo stack
			if not redo[event] then
				redo[event] = {}
			end

			-- Transfer undo item to current and place current on the redo stack
			local index = #undo[event]
			local latestItem = undo[event][index]

			table.insert(redo[event], lastItemRef.current)
			table.remove(undo[event], index)

			lastItemRef.current = latestItem
			setItem(latestItem)

			undoRef.current = undo
			redoRef.current = redo
		end)

		local onRedo = ChangeHistoryService.OnRedo:Connect(function(event)
			local undo = undoRef.current
			local redo = redoRef.current

			assert(undo ~= nil, LUAU_ANALYZE_ERROR)
			assert(redo ~= nil, LUAU_ANALYZE_ERROR)

			-- Check if action was tracked
			if not redo[event] or #redo[event] == 0 then
				return
			end

			-- Push the current item back onto the undo stack and redo action
			local index = #redo[event]
			local latestItem = redo[event][index]

			table.insert(undo[event], lastItemRef.current)
			table.remove(redo[event], index)

			assert(latestItem ~= nil, LUAU_ANALYZE_ERROR)

			lastItemRef.current = latestItem
			setItem(latestItem)

			undoRef.current = undo
			redoRef.current = redo
		end)

		return function()
			onUndo:Disconnect()
			onRedo:Disconnect()
		end
	end, dependencies)

	React.useEffect(function()
		undoRef.current = {}
		redoRef.current = {}
	end, dependencies)

	local callback = React.useCallback(function(waypoint: string, savedItem: T)
		local undo = undoRef.current

		assert(undo ~= nil, LUAU_ANALYZE_ERROR)

		-- Create undo/redo trackers for the specific waypoint name
		if not undo[waypoint] then
			undo[waypoint] = {}
		end

		redoRef.current = {}

		ChangeHistoryService:SetWaypoint(waypoint)

		if typeof(lastItemRef.current) == "table" then
			table.insert(undo[waypoint], table.clone(lastItemRef.current))
		else
			table.insert(undo[waypoint], lastItemRef.current :: any)
		end

		lastItemRef.current = savedItem
		undoRef.current = undo
	end, dependencies)

	return callback
end

return useHistory

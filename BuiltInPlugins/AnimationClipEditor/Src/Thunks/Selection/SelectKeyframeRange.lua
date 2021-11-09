--[[
	Selects a keyframe range.
	The selection structure is as follows:
	{
		<Instance> = {
			<Path[1]> = {
				Selection = { <tick> = true, <tick> = true, ... }
				Components = {
					<Path[2]> = { ... }
				}
			}
		}
	}
	The Selection field of composite (non-leaf) levels (e.g. CFrame, Position, Rotation, ...) is optional.
	It is only present when the user explicitly selects keys at that level. Selecting all components of
	a composite track is not enough to select the composite track.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local AnimationData = require(Plugin.Src.Util.AnimationData)
local deepCopy = require(Plugin.Src.Util.deepCopy)

local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

return function(instanceName, path, minTick, maxTick, multiSelect)
	return function(store)
		local state = store:getState()
		local status = state.Status
		if not status then
			return
		end

		local animationData = state.AnimationData
		if not animationData then
			return
		end

		local track = AnimationData.getTrack(animationData, instanceName, path)
		if track == nil then
			return
		end

		-- Quickly recurse through the track components to make sure that there are
		-- keys within the range. If not, we don't want to waste time/memory
		-- (re)allocating the SelectedKeyframes store variable
		local function hasSelectedTicks(track)
			for _, tick in pairs(track.Keyframes or {}) do
				if tick >= minTick and tick <= maxTick then
					return true
				end
			end
			for _, componentTrack in pairs(track.Components or {}) do
				if hasSelectedTicks(componentTrack) then
					return true
				end
			end
			return false
		end

		if not hasSelectedTicks(track) then
			return
		end

		-- We know that we have ticks that are selected.
		-- If multiSelect is false, we can create a new SelectedKeyframes structure from scratch.
		local selectedKeyframes = status.SelectedKeyframes
		if not selectedKeyframes or not multiSelect then
			selectedKeyframes = {
				[instanceName] = {}
			}
		else
			-- Make a shallow copy of selectedKeyframes and selectedKeyframes[instanceName]
			-- Make a deepCopy of the first part of the path (track). This might be too broad (if only
			-- some components of the track are selected), but this is a trade-off between complexity and
			-- surgically calling deepcopy on as few dictionaries as possible.
			selectedKeyframes = Cryo.Dictionary.join(selectedKeyframes, {})
			selectedKeyframes[instanceName] = Cryo.Dictionary.join(selectedKeyframes[instanceName] or {}, {})
			selectedKeyframes[instanceName][path[1]] = deepCopy(selectedKeyframes[instanceName][path[1]] or {})
		end

		-- Add the hierarchy needed to store the components
		-- current is then pointing to the top of the hierarchy where the new selection needs
		-- to be added
		local current = selectedKeyframes[instanceName]
		for i, part in ipairs(path) do
			current[part] = current[part] or {}
			if i < #path then
				if not current[part].Components then
					current[part].Components = {}
				end
				current = current[part].Components
			else
				current = current[part]
			end
		end

		-- We have prepared the hierarchy down to the selected track.
		-- Now we need to fill that track (and add its possible components)
		-- with the selected ticks
		local function traverse(track, current)
			local keyframes = {}

			for _, tick in pairs(track.Keyframes or {}) do
				if tick >= minTick and tick <= maxTick then
					keyframes[tick] = true
				end
			end

			for componentName, componentTrack in pairs(track.Components or {}) do
				if not current.Components then
					current.Components = { [componentName] = {} }
				elseif not current.Components[componentName] then
					current.Components[componentName] = {}
				end

				local componentKeyframes = traverse(componentTrack, current.Components[componentName])
				keyframes = Cryo.Dictionary.join(keyframes, componentKeyframes)
			end

			current.Selection = Cryo.Dictionary.join(current.Selection or {}, keyframes)
			return keyframes
		end

		traverse(track, current)
		store:dispatch(SetSelectedKeyframes(selectedKeyframes))
	end
end
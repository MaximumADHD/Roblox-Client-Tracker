--[[
	Utility functions for dope sheet tracks to use to help
	create Keyframe components and place them onscreen.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local PathUtils = require(Plugin.Src.Util.PathUtils)

local Constants = require(Plugin.Src.Util.Constants)
local Templates = require(Plugin.Src.Util.Templates)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local CurveUtils = require(Plugin.Src.Util.CurveUtils)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagFacsUiChanges = require(Plugin.LuaFlags.GetFFlagFacsUiChanges)
local GetFFlagFixClampValuesForFacs = require(Plugin.LuaFlags.GetFFlagFixClampValuesForFacs)
local GetFFlagNilCheckAnimationDataInTrackUtils = require(Plugin.LuaFlags.GetFFlagNilCheckAnimationDataInTrackUtils)
local GetFFlagQuaternionChannels = require(Plugin.LuaFlags.GetFFlagQuaternionChannels)
local GetFFlagFacsAsFloat = require(Plugin.LuaFlags.GetFFlagFacsAsFloat)

local TrackUtils = {}

local function removeNegativeZero(val)
	if val == 0 then
		return math.abs(val)
	else
		return val
	end
end

-- Performs a visiting function on each component track (i.e. Position and Rotation
-- tracks of a CFrame track). func is called with the track, the path to that
-- track (as an array of track names), and a flag telling if it's a leaf track.
-- If leavesOnly is true, then func is only called for tracks that don't have components
function TrackUtils.traverseTracks(trackName, track, func, leavesOnly)
	assert(func ~= nil)

	local function traverse(track, trackName, path)
		if track ~= nil then
			if trackName then
				path = Cryo.List.join(path, {trackName})
			end

			local isLeaf = track.Components == nil or isEmpty(track.Components)

			if isLeaf or not leavesOnly then
				func(track, trackName, path, isLeaf)
			end

			if track.Components ~= nil then
				for componentName, componentTrack in pairs(track.Components) do
					traverse(componentTrack, componentName, path)
				end
			end
		end
	end

	traverse(track, trackName, {})
end

-- Performs a visiting function on each keyframe between the range
-- startTick and endTick, inclusive. For each keyframe within the range,
-- visitFunc provides the tick and the keyframe at that tick.
function TrackUtils.traverseKeyframeRange(keyframes, startTick, endTick, func)
	local first, first2 = KeyframeUtils.findNearestKeyframes(keyframes, startTick)
	local last = KeyframeUtils.findNearestKeyframes(keyframes, endTick)
	local firstIndex = first2 and first2 or first
	local lastIndex = last

	for keyIndex = firstIndex, lastIndex do
		local tick = keyframes[keyIndex]
		if tick >= startTick and tick <= endTick then
			func(tick, keyframes[keyIndex])
		end
	end
end

-- Gets the next keyframe of the animation (for navigation)
function TrackUtils.getNextKeyframe(tracks, playhead)
	local minFrame = nil
	for trackName, track in pairs(tracks) do
		TrackUtils.traverseTracks(nil, track, function(track)
			local keyframes = track.Keyframes
			local exactIndex, _, nextIndex = KeyframeUtils.findNearestKeyframesProperly(keyframes, playhead+1)
			nextIndex = exactIndex or nextIndex
			local nextFrame = nextIndex and keyframes[nextIndex] or nil
			if nextFrame then
				minFrame = minFrame and math.min(minFrame, nextFrame) or nextFrame
			end
		end, true)
	end
	return minFrame or playhead
end

-- Gets the previous keyframe of the animation (for navigation)
function TrackUtils.getPreviousKeyframe(tracks, playhead)
	local maxFrame = nil
	for trackName, track in pairs(tracks) do
		TrackUtils.traverseTracks(nil, track, function(track)
			local keyframes = track.Keyframes
			local exactIndex, prevIndex = KeyframeUtils.findNearestKeyframesProperly(keyframes, playhead-1)
			prevIndex = exactIndex or prevIndex
			local prevFrame = prevIndex and keyframes[prevIndex] or nil
			if prevFrame and prevFrame < playhead then
				maxFrame = maxFrame and math.max(maxFrame, prevFrame) or prevFrame
			end
		end, true)
	end
	return maxFrame or playhead
end

-- Gets the summary keyframes between startTick and endTick for tracks.
-- selectedKeyframes and previewing are optional parameters.
-- selectedKeyframes is used to find which summary keyframes are selected, and
-- previewing is used to determine if the user is currently moving keyframes.
function TrackUtils.getSummaryKeyframes(tracks, startTick, endTick, selectedKeyframes, previewing)
	local foundTicks = {}
	local selectedTicks = {}

	if GetFFlagChannelAnimations() then
		for trackName, track in pairs(tracks) do
			local instance = track.Instance
			-- Sometimes, tracks is passed as an array of tracks without a name
			local name = track.Name or trackName

			TrackUtils.traverseTracks(name, track, function(track, _, path)
				local keyframes = track.Keyframes

				local selectedTrack = selectedKeyframes and selectedKeyframes[instance] or nil
				for _, part in ipairs(path) do
					selectedTrack = selectedTrack and (selectedTrack.Components and selectedTrack.Components[part] or selectedTrack[part])
						or nil
				end

				local selection = selectedTrack and selectedTrack.Selection or {}
				if keyframes and not isEmpty(keyframes) then
					TrackUtils.traverseKeyframeRange(keyframes, startTick, endTick, function(tick)

						foundTicks[tick] = true
						if selection[tick] then
							selectedTicks[tick] = true
						end
					end)
				end
			end, true)
		end
	else
		for _, track in pairs(tracks) do
			local instance = track.Instance
			local name = track.Name
			local keyframes = track.Keyframes

			if keyframes then
				TrackUtils.traverseKeyframeRange(keyframes, startTick, endTick, function(tick)
					local selected = selectedKeyframes and selectedKeyframes[instance]
						and selectedKeyframes[instance][name]
						and selectedKeyframes[instance][name][tick]

					if not (selected and previewing) then
						foundTicks[tick] = true
						if selected then
							selectedTicks[tick] = true
						end
					end
				end)
			end
		end
	end

	local ticks = Cryo.Dictionary.keys(foundTicks)
	return ticks, selectedTicks
end

function TrackUtils.getScaledKeyframePosition(tick, startTick, endTick, width)
	return math.floor((tick - startTick) * width / (endTick - startTick))
end

function TrackUtils.getKeyframeFromPosition(position, startTick, endTick, trackLeft, trackWidth)
	local timelineScale = trackWidth / (endTick - startTick)
	local xposInTimeline = position.X - trackLeft
	local tick = startTick + xposInTimeline / timelineScale
	return KeyframeUtils.getNearestTick(tick)
end

function TrackUtils.countVisibleKeyframes(keyframes, startTick, endTick)
	local startIndex, endIndex = TrackUtils.getKeyframesExtents(keyframes, startTick, endTick)
	if startIndex == endIndex then
		local hasKeyframe = KeyframeUtils.findKeyframe(keyframes, startTick)
			or KeyframeUtils.findKeyframe(keyframes, endTick)
		return hasKeyframe ~= nil and 1 or 0
	else
		return endIndex - startIndex + 1
	end
end

function TrackUtils.getKeyframesExtents(keyframes, startTick, endTick)
	local first, second = KeyframeUtils.findNearestKeyframes(keyframes, startTick)
	local startIndex, endIndex
	if second ~= nil then
		startIndex = second
	else
		startIndex = first
	end
	endIndex = KeyframeUtils.findNearestKeyframes(keyframes, endTick)

	if startIndex and endIndex and keyframes[startIndex] >= startTick and keyframes[endIndex] >= startTick then
		return startIndex, endIndex
	end
end

-- Returns the expanded size of a track based on its type.
function TrackUtils.getExpandedSize(track)
	if GetFFlagChannelAnimations() and track.Components then
		-- If the track has components, rely on them
		local function recGetExpandedSize(track)
			local total = 1
			if track.Expanded then
				for _, component in pairs(track.Components) do
					total = total + recGetExpandedSize(component)
				end
			end
			return total
		end

		return recGetExpandedSize(track)
	else
		local trackType = track.Type
		if trackType == Constants.TRACK_TYPES.CFrame then
			return 3
		else
			return 2
		end
	end
end

if not GetFFlagChannelAnimations() then
	-- This is moved to KeyframeUtils
	-- Returns the default value for a new keyframe based on a track type.
	function TrackUtils.getDefaultValueByType(trackType)
		if trackType == Constants.TRACK_TYPES.CFrame then
			return CFrame.new()
		elseif trackType == Constants.TRACK_TYPES.Facs then
			return 0
		end

		assert(false, "No default value defined for type " .. trackType)
	end
end

if GetFFlagFacialAnimationSupport() or GetFFlagChannelAnimations() then
	function TrackUtils.getDefaultValue(track)
		if track and track.Type then
			if GetFFlagChannelAnimations() then
				return KeyframeUtils.getDefaultValue(track.Type)
			else
				return TrackUtils.getDefaultValueByType(track.Type)
			end
		end
	end
else
	function TrackUtils.getDefaultValue(track)
		if track and track.Type then
			local trackType = track.Type
			if trackType == Constants.TRACK_TYPES.CFrame then
				return CFrame.new()
			end
		else
			return CFrame.new()
		end
	end
end

-- Given a track name and a list of trackEntries, find the
-- type of the corresponding track
function TrackUtils.getTrackTypeFromName(trackName, tracks)
	for _, track in pairs(tracks) do
		if track.Name == trackName then
			return track.Type
		end
	end
end

-- Given a full path and a list of trackEntries, find the
-- type of the corresponding component
function TrackUtils.getComponentTypeFromPath(path, tracks)
	for _, track in pairs(tracks) do
		if track.Name == path[1] then
			local relPath = PathUtils.getRelativePath(path)
			local currentComponent = track
			for _, pathPart in ipairs(relPath) do
				if currentComponent.Components and currentComponent.Components[pathPart] then
					currentComponent = currentComponent.Components[pathPart]
				end
			end
			return currentComponent.Type
		end
	end
end

-- Given a track, return the type of rotation used (if relevant)
function TrackUtils.getRotationType(track)
	local rotationTrack = track.Components and track.Components[Constants.PROPERTY_KEYS.Rotation]
	return rotationTrack and rotationTrack.Type or nil
end

-- Given a track name and a list of trackEntries, find the
-- type of rotation used by the track
function TrackUtils.getRotationTypeFromName(trackName, tracks)
	for _, track in pairs(tracks) do
		if track.Name == trackName then
			return TrackUtils.getRotationType(track)
		end
	end
end

-- Given a vertical position yPos in the dope sheet, finds which track
-- is at that position.
function TrackUtils.getTrackFromPosition(tracks, topTrackIndex, yPos)
	local trackIndex = math.max(0, topTrackIndex - 1)
	yPos = yPos - Constants.SUMMARY_TRACK_HEIGHT
	local numTracks = #tracks

	for index, track in ipairs(tracks) do
		if index >= topTrackIndex then
			if yPos <= 0 then
				break
			end

			trackIndex = trackIndex + 1

			if track.Expanded then
				yPos = yPos - Constants.TRACK_HEIGHT * TrackUtils.getExpandedSize(track)
			else
				yPos = yPos - Constants.TRACK_HEIGHT
			end
		end
	end

	-- If yPos is still positive after passing all tracks, it is off
	-- the bottom of the dope sheet.
	if yPos / Constants.TRACK_HEIGHT > 0 then
		return numTracks + 1
	elseif trackIndex == topTrackIndex - 1 then
		-- Summary track
		return 0
	else
		return math.max(0, trackIndex)
	end
end

-- Given a vertical position yPos in the dope sheet, finds which track
-- is at that position. Returns the track index, the path, and the track
-- type
function TrackUtils.getTrackInfoFromPosition(tracks, topTrackIndex, yPos)
	if yPos < Constants.SUMMARY_TRACK_HEIGHT then
		return 0, {}, nil, nil
	end

	yPos = yPos - Constants.SUMMARY_TRACK_HEIGHT

	local function recurse(track, y, path)
		if y < Constants.SUMMARY_TRACK_HEIGHT then
			return path, y, track.Type, TrackUtils.getRotationType(track)
		end

		y = y - Constants.SUMMARY_TRACK_HEIGHT
		if track.Expanded then
			for _, componentName in ipairs(Constants.COMPONENT_TRACK_TYPES[track.Type]._Order) do
				local resPath, trackType
				if track.Components[componentName] then
					resPath, y, trackType = recurse(track.Components[componentName], y, Cryo.List.join(path, {componentName}))
					if resPath then
						return resPath, y, trackType, nil
					end
				end
			end
		end
		return nil, y, nil, nil
	end

	local trackIndex = math.max(0, topTrackIndex - 1)
	local trackType, rotationType

	for index, track in ipairs(tracks) do
		if index >= topTrackIndex then
			local relPath
			relPath, yPos, trackType, rotationType = recurse(track, yPos, {track.Name})
			trackIndex = trackIndex + 1

			if relPath then
				return trackIndex, relPath, trackType, rotationType
			end
		end
	end

	return #tracks + 1, {}, nil, nil
end

function TrackUtils.getTrackIndex(tracks, trackName)
	for index, track in ipairs(tracks) do
		if trackName == track.Name then
			return index
		end
	end
end

function TrackUtils.getTrackYPosition(tracks, topTrackIndex, trackIndex)
	local yPos = Constants.SUMMARY_TRACK_HEIGHT

	local index = topTrackIndex
	while index < trackIndex do
		local currentTrack = tracks[index]
		if currentTrack.Expanded then
			yPos = yPos + Constants.TRACK_HEIGHT * TrackUtils.getExpandedSize(currentTrack)
		else
			yPos = yPos + Constants.TRACK_HEIGHT
		end
		index = index + 1
	end

	return yPos
end

function TrackUtils.getCurrentValue(track, tick, animationData)
	local name = track.Name
	local instance = track.Instance

	local currentValue
	if GetFFlagNilCheckAnimationDataInTrackUtils() and animationData == nil then
		currentValue = TrackUtils.getDefaultValue(track)
		return currentValue
	end

	local currentTrack = animationData.Instances[instance].Tracks[name]
	if currentTrack then
		currentValue = KeyframeUtils.getValue(currentTrack, tick)
	else
		currentValue = TrackUtils.getDefaultValue(track)
	end
	return currentValue
end

-- Return the value of the track identified by path, at the specified tick. If the track is not
-- found, return the default value based on trackType
function TrackUtils.getCurrentValueForPath(path, instance, tick, animationData, trackType)
	local currentTrack = animationData.Instances[instance]

	-- Follow the path, through Tracks for the first part, or through Components for the next parts
	for index, name in ipairs(path) do
		currentTrack = (index == 1 and currentTrack.Tracks or currentTrack.Components)[name]
		if not currentTrack then
			return KeyframeUtils.getDefaultValue(trackType)
		end
	end

	return KeyframeUtils.getValue(currentTrack, tick)
end

function TrackUtils.getItemsForProperty(track, value, name)
	local trackType = track.Type
	local properties = Constants.PROPERTY_KEYS
	local items

	local function makeVectorItems(x, y, z, componentType)
		return {
			{ Name = Constants.PROPERTY_KEYS.X, Key = "X", Value = x, Type = componentType },
			{ Name = Constants.PROPERTY_KEYS.Y, Key = "Y", Value = y, Type = componentType },
			{ Name = Constants.PROPERTY_KEYS.Z, Key = "Z", Value = z, Type = componentType },
		}
	end

	if trackType == Constants.TRACK_TYPES.CFrame then
		-- This is only used for animations that have not been promoted to channels
		local position = value.Position
		local xRot, yRot, zRot = value:ToEulerAnglesXYZ()
		if GetFFlagChannelAnimations() then
			xRot = removeNegativeZero(math.deg(xRot))
			yRot = removeNegativeZero(math.deg(yRot))
			zRot = removeNegativeZero(math.deg(zRot))
		end
		items = {
			Position = GetFFlagChannelAnimations() and makeVectorItems(position.X, position.Y, position.Z, Constants.TRACK_TYPES.Number) or {
				{
					Name = properties.X,
					Key = "X",
					Value = position.X,
					Type = Constants.TRACK_TYPES.Number,
				},
				{
					Name = properties.Y,
					Key = "Y",
					Value = position.Y,
					Type = Constants.TRACK_TYPES.Number,
				},
				{
					Name = properties.Z,
					Key = "Z",
					Value = position.Z,
					Type = Constants.TRACK_TYPES.Number,
				},
			},
			Rotation = GetFFlagChannelAnimations() and makeVectorItems(xRot, yRot, zRot, Constants.TRACK_TYPES.Angle) or {
				{
					Name = properties.X,
					Key = "X",
					Value = removeNegativeZero(math.deg(xRot)),
					Type = Constants.TRACK_TYPES.Angle,
				},
				{
					Name = properties.Y,
					Key = "Y",
					Value = removeNegativeZero(math.deg(yRot)),
					Type = Constants.TRACK_TYPES.Angle,
				},
				{
					Name = properties.Z,
					Key = "Z",
					Value = removeNegativeZero(math.deg(zRot)),
					Type = Constants.TRACK_TYPES.Angle,
				},
			},
		}
	elseif GetFFlagChannelAnimations() and trackType == Constants.TRACK_TYPES.Position then
		items = makeVectorItems(value.X, value.Y, value.Z, Constants.TRACK_TYPES.Number)
	elseif GetFFlagChannelAnimations() and trackType == (GetFFlagQuaternionChannels() and Constants.TRACK_TYPES.EulerAngles or Constants.TRACK_TYPES.Rotation) then
		items = makeVectorItems(removeNegativeZero(math.deg(value.X)),
			removeNegativeZero(math.deg(value.Y)),
			removeNegativeZero(math.deg(value.Z)),
			Constants.TRACK_TYPES.Angle)
	elseif GetFFlagQuaternionChannels() and trackType == Constants.TRACK_TYPES.Quaternion then
		local xRot, yRot, zRot = value:ToEulerAnglesXYZ()
		items = makeVectorItems(removeNegativeZero(math.deg(xRot)),
			removeNegativeZero(math.deg(yRot)),
			removeNegativeZero(math.deg(zRot)),
			Constants.TRACK_TYPES.Angle)
	elseif trackType == Constants.TRACK_TYPES.Facs then
		if GetFFlagFacsUiChanges() and GetFFlagChannelAnimations() then
			if GetFFlagFacsAsFloat() then
				value = math.clamp(value, 0, 1)
			elseif GetFFlagFixClampValuesForFacs() then
				value = math.floor(0.5 + math.clamp(value, 0, 1) * 100)
			else
				value = math.floor(0.5 + (value * 100))
			end
		end
		items = {
			{
				Name = "V",
				Key = "Value",
				Value = value,
				Type = Constants.TRACK_TYPES.Facs,
			},
		}
	elseif GetFFlagChannelAnimations() and trackType == Constants.TRACK_TYPES.Angle then
		items = {
			{
				Name = name,
				Key = name,
				Value = removeNegativeZero(math.deg(value)),
				Type = Constants.TRACK_TYPES.Angle,
			},
		}
	else
		items = {
			{
				Name = name,
				Key = name,
				Value = value,
				Type = Constants.TRACK_TYPES.Number,
			},
		}
	end

	return items
end

function TrackUtils.getPropertyForItems(track, items)
	local trackType = track.Type
	local value

	if trackType == Constants.TRACK_TYPES.CFrame then
		local position = items.Position
		local rotation = items.Rotation
		local xRot = math.rad(rotation[1].Value)
		local yRot = math.rad(rotation[2].Value)
		local zRot = math.rad(rotation[3].Value)
		value = CFrame.new(position[1].Value, position[2].Value, position[3].Value)
			* CFrame.fromEulerAnglesXYZ(xRot, yRot, zRot)
	elseif GetFFlagChannelAnimations() and trackType == Constants.TRACK_TYPES.Position then
		value = Vector3.new(items[1].Value, items[2].Value, items[3].Value)
	elseif GetFFlagChannelAnimations() and trackType == (GetFFlagQuaternionChannels() and Constants.TRACK_TYPES.EulerAngles or Constants.TRACK_TYPES.Rotation) then
		value = Vector3.new(math.rad(items[1].Value), math.rad(items[2].Value), math.rad(items[3].Value))
	elseif GetFFlagQuaternionChannels() and trackType == Constants.TRACK_TYPES.Quaternion then
		value = CFrame.fromEulerAnglesXYZ(math.rad(items[1].Value), math.rad(items[2].Value), math.rad(items[3].Value))
	elseif GetFFlagChannelAnimations() and trackType == Constants.TRACK_TYPES.Number then
		value = items[1].Value
	elseif GetFFlagChannelAnimations() and trackType == Constants.TRACK_TYPES.Angle then
		value = math.rad(items[1].Value)
	elseif GetFFlagChannelAnimations() and trackType == Constants.TRACK_TYPES.Facs then
		value = items[1].Value
		if GetFFlagFacsUiChanges() then
			if GetFFlagFacsAsFloat() then
				value = math.clamp(value, 0, 1)
			else
				value = math.clamp(value / 100, 0, 1)
			end
		end
	end

	return value
end

function TrackUtils.getZoomRange(animationData, scroll, zoom, editingLength)
	local range = {}
	local startTick = animationData.Metadata.StartTick
	local endTick = math.max(animationData.Metadata.EndTick, editingLength)

	local length = endTick - startTick
	local lengthWithPadding = length * Constants.LENGTH_PADDING
	lengthWithPadding = math.min(lengthWithPadding, Constants.MAX_ANIMATION_LENGTH)

	local zoomedLength = lengthWithPadding * (1 - zoom)
	zoomedLength = math.max(zoomedLength, 1)

	range.Start = startTick + (lengthWithPadding - zoomedLength) * scroll
	range.End = range.Start + zoomedLength

	return range
end

function TrackUtils.adjustCurves(track)
	if not track.Keyframes then
		return
	end

	-- Make a copy, because we're possibly going to add new keyframes (cubic/bounce/elastic interpolation)
	local keyframesCopy = Cryo.List.join({}, track.Keyframes)

	for index, tick in pairs(keyframesCopy) do
		local data = track.Data[tick]
		local easingStyle = data.EasingStyle
		local easingDirection = data.EasingDirection

		if index < #keyframesCopy then
			local nextTick = keyframesCopy[index+1]
			local nextData = track.Data[nextTick]

			local newKeyframes = CurveUtils.generateCurve(track.Type, easingStyle, easingDirection, tick, data, nextTick, nextData)
			if newKeyframes and not isEmpty(newKeyframes) then
				track.Keyframes = Cryo.List.join(track.Keyframes, Cryo.Dictionary.keys(newKeyframes))
				track.Data = Cryo.Dictionary.join(track.Data, newKeyframes)
			end
		else
			data.EasingStyle = nil
			data.EasingDirection = nil
			data.InterpolationMode = Constants.POSE_EASING_STYLE_TO_KEY_INTERPOLATION[easingStyle]
		end
	end

	table.sort(track.Keyframes)
	track.IsCurveTrack = true
end

function TrackUtils.splitTrackComponents(track, rotationType)
	if track.Type == Constants.TRACK_TYPES.CFrame then
		-- Creates the components hierarchy for a track
		local function createTrackComponents(_track)
			local componentTypes = Constants.COMPONENT_TRACK_TYPES[_track.Type]

			if componentTypes then
				-- If there are children, create them and their descendants
				_track.Components = {}
				for _, componentName in pairs(componentTypes._Order) do
					local componentType = componentTypes[componentName]
					if componentName == Constants.PROPERTY_KEYS.Rotation and rotationType then
						componentType = rotationType
					end

					_track.Components[componentName] = Templates.track(componentType)
					createTrackComponents(_track.Components[componentName])
				end
			else
				-- We can already duplicate the keyframes from the top track and prepare the data array
				_track.Keyframes = track.Keyframes and Cryo.List.join({}, track.Keyframes) or {}
				_track.Data = {}
			end
		end

		createTrackComponents(track)

		for _, tick in pairs(track.Keyframes or {}) do
			local cFrame = track.Data[tick].Value

			if rotationType == Constants.TRACK_TYPES.Quaternion then
				local position = cFrame.Position
				local quaternion = cFrame - cFrame.Position

				local positionTrack = track.Components.Position
				local rotationTrack = track.Components.Rotation

				for _, componentName in ipairs(Constants.COMPONENT_TRACK_TYPES[Constants.TRACK_TYPES.Position]._Order) do
					positionTrack.Components[componentName].Data[tick] = Cryo.Dictionary.join(track.Data[tick], { Value = position[componentName] })
				end

				rotationTrack.Data[tick] = Cryo.Dictionary.join(track.Data[tick], { Value = quaternion })
			else
				-- Decompose the CFrame into two Vectors so they can both be accessed by .X, .Y, .Z
				local position = cFrame.Position
				local rotation = Vector3.new(cFrame:ToEulerAnglesXYZ())

				for componentName, componentTrack in pairs(track.Components) do
					local values = componentName == Constants.PROPERTY_KEYS.Position and position or rotation

					for grandchildName, grandchild in pairs(componentTrack.Components) do
						grandchild.Data[tick] = Cryo.Dictionary.join(track.Data[tick], {
							Value = values[grandchildName]
						})
					end
					componentTrack.Keyframes = nil
					componentTrack.Data = nil
				end
			end
		end

		-- Adjust tangents, add intermediate nodes (bouncing/elastic), etc
		for _, componentTrack in pairs(track.Components) do
			TrackUtils.adjustCurves(componentTrack)
			for _, grandchild in pairs(componentTrack.Components or {}) do
				TrackUtils.adjustCurves(grandchild)
			end
		end

		-- Delete top track data
		track.Keyframes = nil
		track.Data = nil
	elseif track.Type == Constants.TRACK_TYPES.Facs then
		track.Keyframes = track.Keyframes or {}
		track.Data = track.Data or {}
		TrackUtils.adjustCurves(track)
	end
end

function TrackUtils.createTrackListEntryComponents(track, instanceName, rotationType)
	local componentTypes = Constants.COMPONENT_TRACK_TYPES[track.Type]
	track.Instance = instanceName

	if componentTypes then
		-- If there are children, create them and their descendants
		track.Components = {}
		for _, componentName in ipairs(componentTypes._Order) do
			local componentType = componentTypes[componentName]
			if componentName == Constants.PROPERTY_KEYS.Rotation then
				componentType = rotationType
			end

			track.Components[componentName] = Templates.trackListEntry(componentType)
			track.Components[componentName].Name = componentName
			TrackUtils.createTrackListEntryComponents(track.Components[componentName], instanceName, rotationType)
		end
	end
end

-- For each tick between startTick and endTick, return a table that contains:
-- Count: The number of component leaves that are defined
-- Complete: Whether all expected components are defined
-- EasingStyle: The easing style shared by all components, or nil if there's a mismatch

function TrackUtils.getComponentsInfo(track: any, startTick: number, endTick: number?)
	endTick = endTick or startTick

	local info = {}
	local expectedComponents = 0
	TrackUtils.traverseTracks(nil, track, function()
		expectedComponents = expectedComponents + 1
	end, true)

	TrackUtils.traverseTracks(nil, track, function(track)
		if track.Data then
			for tick, data in pairs(track.Data) do
				if tick >= startTick and tick <= endTick then
					if info[tick] then
						info[tick].Count = info[tick].Count + 1
						info[tick].Complete = info[tick].Count == expectedComponents
						if info[tick].EasingStyle ~= data.EasingStyle then
							info[tick].EasingStyle = nil
						end
						if info[tick].InterpolationMode ~= data.InterpolationMode then
							info[tick].InterpolationMode = nil
						end
					else
						info[tick] = {
							Count = 1,
							Complete = expectedComponents == 1,
							EasingStyle = data.EasingStyle,
							InterpolationMode = data.InterpolationMode
						}
					end
				end
			end
		end
	end, true)
	return info
end

-- Follows the elements of trackPath to reach a specific track in the trackEntries hierarchies
function TrackUtils.findTrackEntry(trackEntries, trackPath)
	if not (trackEntries and trackPath) then
		return nil
	end

	local currentTrack
	for _, trackEntry in ipairs(trackEntries) do
		if trackEntry.Name == trackPath[1] then
			currentTrack = trackEntry
			break
		end
	end

	if not currentTrack then
		return nil
	end

	for index, pathPart in ipairs(trackPath) do
		if index > 1 then
			currentTrack = currentTrack.Components[pathPart]
			if not currentTrack then
				return nil
			end
		end
	end

	return currentTrack
end

-- Traverse all components of the provided trackType, calling func with
-- the relative path of each leaf (to the initial track type)
-- TODO: We can get rid of rotationType if we decide to have two different CFrame types,
-- such as EulerCFrame and QuaternionCFrame, for the top level track.
function TrackUtils.traverseComponents(trackType, func, rotationType)
	local function recurse(_trackType, relPath)

		local compTypes = Constants.COMPONENT_TRACK_TYPES[_trackType]
		if compTypes then
			for _, compName in ipairs(compTypes._Order) do
				local compType = compTypes[compName]
				if GetFFlagQuaternionChannels() and compName == Constants.PROPERTY_KEYS.Rotation then
					compType = rotationType
				end
				recurse(compType, Cryo.List.join(relPath, {compName}))
			end
		else
			func(_trackType, relPath)
		end
	end

	recurse(trackType, {})
end

-- Takes a trackType and a value, and calls the func callback for each leaf component.
-- func is called with the leaf relative path (to the initial track type), and the value.
-- This relies on paths only, tracks don't have to exist.
-- rotationType determines if we want to follow the Quaternion hierarchy, or the Euler angles hierarchy.
function TrackUtils.traverseValue(trackType, value, func, rotationType)
	local function recurse(_trackType, relPath, _value)
		if _trackType == Constants.TRACK_TYPES.CFrame then
			local position = _value.Position
			recurse(Constants.TRACK_TYPES.Position, Cryo.List.join(relPath, {Constants.PROPERTY_KEYS.Position}), position)

			local rotation
			if rotationType == Constants.TRACK_TYPES.Quaternion then
				rotation = _value - position
			else
				rotation = Vector3.new(_value:ToEulerAnglesXYZ())
			end
			recurse(rotationType, Cryo.List.join(relPath, {Constants.PROPERTY_KEYS.Rotation}), rotation)
		elseif _trackType == Constants.TRACK_TYPES.Position then
			recurse(Constants.TRACK_TYPES.Number, Cryo.List.join(relPath, {Constants.PROPERTY_KEYS.X}), _value.X)
			recurse(Constants.TRACK_TYPES.Number, Cryo.List.join(relPath, {Constants.PROPERTY_KEYS.Y}), _value.Y)
			recurse(Constants.TRACK_TYPES.Number, Cryo.List.join(relPath, {Constants.PROPERTY_KEYS.Z}), _value.Z)
		elseif _trackType == (GetFFlagQuaternionChannels() and Constants.TRACK_TYPES.EulerAngles or Constants.TRACK_TYPES.Rotation) then
			recurse(Constants.TRACK_TYPES.Angle, Cryo.List.join(relPath, {Constants.PROPERTY_KEYS.X}), _value.X)
			recurse(Constants.TRACK_TYPES.Angle, Cryo.List.join(relPath, {Constants.PROPERTY_KEYS.Y}), _value.Y)
			recurse(Constants.TRACK_TYPES.Angle, Cryo.List.join(relPath, {Constants.PROPERTY_KEYS.Z}), _value.Z)
		else
			func(_trackType, relPath, _value)
		end
	end

	recurse(trackType, {}, value)
end

-- Returns the previous keyframe. If exactMatch is set, and there is an existing keyframe at that tick,
-- that keyframe is returned
function TrackUtils.findPreviousKeyframe(track, tck, exactMatch: boolean?)
	local exactIndex, prevIndex, _ = KeyframeUtils.findNearestKeyframesProperly(track.Keyframes, tck)
	if exactMatch then
		prevIndex = prevIndex or exactIndex
	end
	local prevTick = prevIndex and track.Keyframes[prevIndex] or nil
	return prevTick and track.Data[prevTick] or nil
end

return TrackUtils

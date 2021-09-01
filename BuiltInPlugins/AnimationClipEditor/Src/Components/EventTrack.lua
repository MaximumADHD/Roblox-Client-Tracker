--[[
	Represents a track on the Dope Sheet meant to display
	Animation Events within a specified time range.

	Properties:
		UDim2 Size = size of the container frame
		float Width = width of the keyframe display area frame
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		int EditingTick = The tick where events are being edited, or nil
		table Events = a table of Event data from AnimationData.
		table SelectedEvents = table containing information on what events are selected
		table SelectedEvents = table containing events that are currently being transformed for preview
		int LayoutOrder = The layout order of the frame, if in a Layout.
		int ZIndex = The draw index of the frame.

		function OnEventRightClick = A callback for when the user right-clicks on an event.
		function OnEventInputBegan = A callback for when the user starts interacting with an event.
		function OnEventInputEnded = A callback for when the user stops interacting with an event.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local BaseTrack = require(Plugin.Src.Components.BaseTrack)
local EventMarker = require(Plugin.Src.Components.EventMarker)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

local EventTrack = Roact.PureComponent:extend("EventTrack")

function EventTrack:renderEvent(selected, xOffset, tick)
	local props = self.props
	local events = props.Events
	local names = events.Data[tick] and Cryo.Dictionary.keys(events.Data[tick])

	return Roact.createElement(EventMarker, {
		Selected = selected,
		Names = names,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex,

		OnRightClick = function(_, input)
			props.OnEventRightClick(tick, selected)
		end,

		OnInputBegan = function(_, input)
			props.OnEventInputBegan(tick, selected, input)
		end,

		OnInputEnded = function(_, input)
			props.OnEventInputEnded(tick, selected, input)
		end,
	})
end

function EventTrack:renderPreviewEvent(xOffset, tick)
	local props = self.props
	return Roact.createElement(EventMarker, {
		Selected = true,
		Position = UDim2.new(0, xOffset, 0.5, 0),
		ZIndex = props.ZIndex + 1,
	})
end

function EventTrack:renderEvents(keys)
	local props = self.props
	local width = props.Width
	local startTick = props.StartTick
	local endTick = props.EndTick
	local events = props.Events.Keyframes
	local selectedEvents = props.SelectedEvents
	local previewEvents = props.PreviewEvents

	local startIndex, endIndex = TrackUtils.getKeyframesExtents(events, startTick, endTick)

	if startIndex ~= nil and endIndex ~= nil then
		for index = startIndex, endIndex do
			local tick = events[index]
			local xPos = TrackUtils.getScaledKeyframePosition(tick, startTick, endTick, width)
			local selected = selectedEvents and selectedEvents[tick]
			-- Don't render selected keyframes when rendering preview keyframes
			if not (previewEvents and selected) then
				keys[index] = self:renderEvent(selected, xPos, tick)
			end
		end
	end
end

function EventTrack:renderPreviewEvents(keys)
	local props = self.props
	local width = props.Width
	local startTick = props.StartTick
	local endTick = props.EndTick
	local previewEvents = props.PreviewEvents
	local editingTick = props.EditingTick

	if previewEvents then
		for _, tick in ipairs(previewEvents) do
			if tick >= startTick and tick <= endTick then
				local xPos = TrackUtils.getScaledKeyframePosition(tick, startTick, endTick, width)
				table.insert(keys, self:renderPreviewEvent(xPos, tick))
			end
		end
	end

	if editingTick and editingTick >= startTick and editingTick <= endTick then
		local xPos = TrackUtils.getScaledKeyframePosition(editingTick, startTick, endTick, width)
		table.insert(keys, self:renderPreviewEvent(xPos, editingTick))
	end
end

function EventTrack:renderEditingFrame(keys)
	local props = self.props
	local width = props.Width

	local startTick = props.StartTick
	local endTick = props.EndTick
	local editingTick = props.EditingTick

	if editingTick and editingTick >= startTick and editingTick <= endTick then
		local xPos = TrackUtils.getScaledKeyframePosition(editingTick, startTick, endTick, width)
		table.insert(keys, self:renderPreviewEvent(xPos, editingTick))
	end
end

function EventTrack:render()
	local props = self.props

	local keys = {}

	local events = props.Events
	if events and events.Keyframes and #events.Keyframes > 0 then
		self:renderEvents(keys)
	end

	if props.EditingFrame then
		self:renderEditingFrame(keys)
	end

	return Roact.createElement(BaseTrack, props, keys)
end

return EventTrack
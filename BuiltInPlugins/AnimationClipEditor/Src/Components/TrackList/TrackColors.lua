--[[
	This component is responsible for the coloring behind each track.

	Props:
		UDim2 Position = The position of this component.
		table Tracks = A sorted list of tracks which are currently
			displaying in the editor.
		int TopTrackIndex = The index of the top track which is
			displaying in the editor.
		int MaxHeight = The hosted height of this component, in pixels.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)

local TrackColors = Roact.PureComponent:extend("TrackColors")

function TrackColors:renderTracks(theme)
	local props = self.props
	local tracks = props.Tracks
	local topTrackIndex = props.TopTrackIndex
	local maxHeight = props.MaxHeight

	local trackNum = topTrackIndex
	local height = 0

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		})
	}

	for index = topTrackIndex, #tracks do
		if height > maxHeight then
			break
		end

		local doShade = index % 2 == 0
		local track = tracks[index]
		local rows = 1
		if track and track.Expanded then
			rows = TrackUtils.getExpandedSize(track)
		end

		for _ = 1, rows do
			if height > maxHeight then
				break
			end
			table.insert(children, Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, Constants.TRACK_HEIGHT),
				BackgroundColor3 = doShade and theme.trackTheme.shadedBackgroundColor
					or theme.trackTheme.backgroundColor,
				BorderSizePixel = 0,
				LayoutOrder = trackNum,
			}))
			trackNum = trackNum + 1
			height = height + Constants.TRACK_HEIGHT
		end
	end

	return children
end

function TrackColors:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")
		local children = self:renderTracks(theme)

		local position = props.Position

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, -Constants.SCROLL_BAR_SIZE, 1, 0),
			Position = position,
			BackgroundTransparency = 1,
			ZIndex = 0,
		}, children)
end


TrackColors = withContext({
	Theme = ContextServices.Theme,
})(TrackColors)



return TrackColors
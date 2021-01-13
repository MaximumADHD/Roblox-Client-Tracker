--[[
	A single event marker which can be displayed on the timeline.

	Props:
		UDim2 Position = The position of the event.
		int ZIndex = The display order of the event.
		list<string> Names = The event names to display at this marker.
		bool Selected = Whether this event is currently selected. Changes the appearance.

		function OnRightClick = A callback for when the user right-clicks on this event.
		function OnInputBegan = A callback for when the user starts interacting with the event.
		function OnInputEnded = A callback for when the user stops interacting with the event.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local Tooltip = require(Plugin.Src.Components.Tooltip)

local EventMarker = Roact.PureComponent:extend("EventMarker")

function EventMarker:getTooltip(names)
	local tooltip = ""
	for index, eventName in ipairs(names) do
		tooltip = tooltip .. eventName
		if index ~= #names then
			tooltip = tooltip .. ", "
		end
	end
	return tooltip
end

function EventMarker:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")

		local selected = props.Selected
		local names = props.Names

		local eventTheme = theme.eventMarker
		local position = props.Position
		local zindex = props.ZIndex

		local onRightClick = props.OnRightClick
		local onInputBegan = props.OnInputBegan
		local onInputEnded = props.OnInputEnded

		return Roact.createElement("ImageButton", {
			Size = Constants.EVENT_MARKER_SIZE,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = position,
			ZIndex = zindex,

			BackgroundTransparency = 1,
			AutoButtonColor = false,

			ImageColor3 = eventTheme.imageColor,
			Image = eventTheme.mainImage,

			[Roact.Event.MouseButton2Click] = onRightClick,
			[Roact.Event.InputBegan] = onInputBegan,
			[Roact.Event.InputEnded] = onInputEnded,
		}, {
			Tooltip = names and Roact.createElement(Tooltip, {
				Text = self:getTooltip(names),
				ShowDelay = 0,
			}),

			Border = Roact.createElement("ImageLabel", {
				Size = Constants.EVENT_MARKER_SIZE,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				BackgroundTransparency = 1,
				ImageColor3 = selected and eventTheme.selectionBorderColor or eventTheme.borderColor,
				Image = eventTheme.borderImage,
			}),

			SelectionBorder = selected and Roact.createElement("ImageLabel", {
				Size = Constants.EVENT_MARKER_BORDER_SIZE,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0),
				BackgroundTransparency = 1,
				ImageColor3 = eventTheme.selectionBorderColor,
				Image = eventTheme.selectionBorderImage,
			}),
		})
end

ContextServices.mapToProps(EventMarker, {
	Theme = ContextServices.Theme,
})


return EventMarker

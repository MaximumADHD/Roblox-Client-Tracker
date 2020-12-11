--[[
	Represents the button and dropdown at the end of the Summary track
	which allows the user to add new tracks.

	Props:
		UDim2 Size = The size of the button.
		UDim2 Position = The position of the button.
		list Tracks = A list of tracks that have not been added yet.
			These tracks are maps that must include the Name and Instance fields.

		function OnTrackSelected(instance, track) = A callback for when the user
			has selected a track to add to the editor.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)
local Constants = require(Plugin.SrcDeprecated.Util.Constants)

local ContextMenu = require(Plugin.SrcDeprecated.Components.ContextMenu)
local Tooltip = require(Plugin.SrcDeprecated.Components.Tooltip)

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local Mouse = require(Plugin.SrcDeprecated.Context.Mouse)
local getMouse = Mouse.getMouse

local AddTrackButton = Roact.PureComponent:extend("AddTrackButton")

function AddTrackButton:init()
	self.state = {
		showMenu = false,
	}

	self.showMenu = function()
		self:setState({
			showMenu = true,
		})
	end

	self.hideMenu = function()
		self:setState({
			showMenu = false,
		})
	end

	self.mouseEnter = function()
		getMouse(self).pushCursor("PointingHand")
		self:setState({
			hovering = true,
		})
	end

	self.mouseLeave = function()
		getMouse(self).popCursor()
		self:setState({
			hovering = false,
		})
	end
end

function AddTrackButton:willUnmount()
	getMouse(self).resetCursor()
end

function AddTrackButton:makeTrackActions(localization)
	local props = self.props
	local actions = {}

	for _, track in ipairs(props.Tracks) do
		table.insert(actions, {
			Name = track.Name,
			ItemSelected = function()
				self.props.OnTrackSelected(track.Instance, track.Name)
			end,
		})
	end

	table.insert(actions, Constants.MENU_SEPARATOR)
	table.insert(actions, {
		Name = localization:getText("Menu", "AddAllTracks"),
		ItemSelected = function()
			for _, track in ipairs(props.Tracks) do
				self.props.OnTrackSelected(track.Instance, track.Name)
			end
		end,
	})

	return actions
end

function AddTrackButton:render()
	return withTheme(function(theme)
		return withLocalization(function(localization)
			local props = self.props
			local state = self.state

			local showMenu = state.showMenu
			local hovering = state.hovering

			local size = props.Size
			local position = props.Position
			local trackTheme = theme.trackTheme

			return Roact.createElement("ImageButton", {
				Size = size,
				Position = position,
				AnchorPoint = Vector2.new(1, 0.5),
				Image = trackTheme.addButtonBackground,
				ImageColor3 = hovering and trackTheme.hoveredAddButtonColor or trackTheme.addButtonColor,
				BackgroundTransparency = 1,

				[Roact.Event.Activated] = self.showMenu,
				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
			}, {
				PlusIcon = Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, 9, 0, 8),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Image = trackTheme.plusIcon,
					ImageColor3 = hovering and trackTheme.hoveredPlusIconColor or trackTheme.plusIconColor,
					BackgroundTransparency = 1,
				}),

				TrackMenu = showMenu and Roact.createElement(ContextMenu, {
					Actions = self:makeTrackActions(localization),
					OnMenuOpened = self.hideMenu,
				}),

				Tooltip = Roact.createElement(Tooltip, {
					TextKey = "AddTrackButton",
				}),
			})
		end)
	end)
end

return AddTrackButton
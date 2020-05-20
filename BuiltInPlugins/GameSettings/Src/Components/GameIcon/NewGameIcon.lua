--[[
	Represents a widget for adding a new game icon to the game.
	It displays only when the game does not have a game icon,
	in which case GameIconWidget was passed a nil Icon prop.

	Props:
		bool Visible = Whether this widget is currently visible.
		function OnClick = A callback invoked when this widget is clicked.
			This will mean that the user wants to add a new icon.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local ContextServices = require(Plugin.Framework.ContextServices)


local BORDER = "rbxasset://textures/GameSettings/DottedBorder_Square.png"
local PLUS = "rbxasset://textures/GameSettings/CenterPlus.png"

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local NewGameIcon = Roact.PureComponent:extend("NewGameIcon")

function NewGameIcon:init()
	self.mouseEnter = function()
		self:mouseHoverChanged(true)
	end

	self.mouseLeave = function()
		self:mouseHoverChanged(false)
	end
end

function NewGameIcon:mouseHoverChanged(hovering)
	-- TODO: change to use HoverArea from Developer Framework
	if FFlagStudioConvertGameSettingsToDevFramework then
		local props = self.props
		if hovering then
			props.Mouse:__pushCursor("PointingHand")
		else
			props.Mouse:__resetCursor()
		end
	else
		getMouse(self).setHoverIcon("PointingHand", hovering)
	end
end

function NewGameIcon:DEPRECATED_render()
	local visible = self.props.Visible

	return withTheme(function(theme)
		return Roact.createElement("ImageButton", {
			Visible = visible,
			BorderSizePixel = 0,
			BackgroundColor3 = theme.newThumbnail.background,
			ImageColor3 = theme.newThumbnail.border,
			Image = BORDER,
			Size = UDim2.new(0, 150, 0, 150),

			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,

			[Roact.Event.Activated] = self.props.OnClick,
		}, {
			Plus = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				ImageColor3 = theme.newThumbnail.plus,
				ImageTransparency = 0.4,
				Size = UDim2.new(0, 267, 0, 150),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = PLUS,
				ZIndex = 2,
			})
		})
	end)
end

function NewGameIcon:render()
	if not FFlagStudioConvertGameSettingsToDevFramework then
		return self:DEPRECATED_render()
	end

	local props = self.props
	local visible = props.Visible
	local theme = props.Theme:get("Plugin")

	return Roact.createElement("ImageButton", {
		Visible = visible,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.newThumbnail.background,
		ImageColor3 = theme.newThumbnail.border,
		Image = BORDER,
		Size = UDim2.new(0, 150, 0, 150),

		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,

		[Roact.Event.Activated] = self.props.OnClick,
	}, {
		Plus = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			ImageColor3 = theme.newThumbnail.plus,
			ImageTransparency = 0.4,
			Size = UDim2.new(0, 267, 0, 150),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Image = PLUS,
			ZIndex = 2,
		})
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(NewGameIcon, {
		Theme = ContextServices.Theme,
		Mouse = ContextServices.Mouse,
	})
end

return NewGameIcon
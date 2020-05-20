--[[
	An image button with a label that can be selected.

	Required Props:
		string Text: Label text to display.
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		string Id: The identifier of the button. Passed to OnClick handler.
		number LayoutOrder: The layout order of the button.
		callback OnClick: Fires when the button is clicked.
		boolean Selected: Whether or not the checkbox is selected.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local BACKGROUND_TRANSPARENCY = 1
local HOVER_BACKGROUND_TRANSPARENCY = 0.75
local SELECTED_BACKGROUND_TRANSPARENCY = 0.5

local ImageButton = Roact.PureComponent:extend("ImageButton")

local function getTransparency(hovered, selected)
	if hovered then
		return HOVER_BACKGROUND_TRANSPARENCY
	elseif selected then
		return SELECTED_BACKGROUND_TRANSPARENCY
	else
		return BACKGROUND_TRANSPARENCY
	end
end

function ImageButton:init()
	self.state = {
		hovered = false
	}

	self.onMouseEnter = function()
		self:setState({
			hovered = true
		})
	end

	self.onMouseLeave = function()
		self:setState({
			hovered = false
		})
	end

	self.onClick = function()
		if self.props.OnClick then
			self.props.OnClick(self.props.Id)
		end
	end
end

function ImageButton:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder or 1
	local image = props.Image
	local text = props.Text
	local theme = props.Theme

	local style = theme:getStyle("Plugin", self)
	local transparency = getTransparency(self.state.hovered, props.Selected)

	return Roact.createElement("ImageButton", {
		BorderSizePixel = 1,
		BackgroundTransparency = transparency,
		LayoutOrder = layoutOrder,
		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
		[Roact.Event.Activated] = self.onClick,
	}, {
		Image = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = image,
			ScaleType = Enum.ScaleType.Fit,
			Size = style.Image.Size,
			AnchorPoint = style.Image.AnchorPoint,
			Position = style.Image.Position,
		}),

		Label = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Position = style.Label.Position,
			Size = style.Label.Size,
			Text = text,
			TextColor3 = style.TextColor,
		}),
	})
end

ContextServices.mapToProps(ImageButton, {
	Theme = ContextServices.Theme,
})

return ImageButton

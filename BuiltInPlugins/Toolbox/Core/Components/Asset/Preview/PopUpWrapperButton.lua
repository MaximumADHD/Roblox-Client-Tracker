--[[
	This component is a button used to open the AssetPreview page.

	Necessary properties:
	position = UDim2
	bool ShowIcon = Show the preview button to toggle the asset preview.
	function onClick = A callback when the user clicks this button.
]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local Images = require(Util.Images)
local ContextHelper = require(Util.ContextHelper)

local withTheme = ContextHelper.withTheme

local PopUpWrapperButton = Roact.PureComponent:extend("PopUpWrapperButton")

local HOVER_SIZE = UDim2.new(0, 32, 0, 32)
local DEFAULT_SIZE = UDim2.new(0, 28, 0, 28)

function PopUpWrapperButton:init(props)
	self.state = {
		hovering = false,
	}

	self.mouseEnter = function()
		self:setState({
			hovering = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			hovering = false,
		})
	end
end

function PopUpWrapperButton:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function PopUpWrapperButton:renderContent(theme)
	local props = self.props
	local state = self.state

	local position = props.position
	local showIcon = props.ShowIcon

	local hovering = state.hovering

	return Roact.createElement("ImageButton", {
		Position = position,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = hovering and HOVER_SIZE or DEFAULT_SIZE,

		Image = Images.MAGNIFIER_PH,
		ImageTransparency = showIcon and 0 or 1,
		BackgroundTransparency = 1,

		[Roact.Event.Activated] = props.onClick,
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	})
end

return PopUpWrapperButton
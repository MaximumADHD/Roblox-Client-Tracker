--!strict
--[[
	This component is a button used to open the AssetPreview page.

	Necessary properties:
	position = UDim2
	bool ShowIcon = Show the preview button to toggle the asset preview.
	function onClick = A callback when the user clicks this button.
]]
local FFlagToolboxAudioAssetPreview = game:GetFastFlag("ToolboxAudioAssetPreview")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Util = Plugin.Core.Util
local Images = require(Util.Images)

local PopUpWrapperButton = Roact.PureComponent:extend("PopUpWrapperButton")

local HOVER_SIZE = UDim2.new(0, 32, 0, 32)
local DEFAULT_SIZE = UDim2.new(0, 28, 0, 28)

type PopUpWrapperButtonProps = {
	LayoutOrder: number?,
	position: UDim2?,
	ShowIcon: boolean,
	onClick: () -> nil,
	HoverSize: UDim2?,
	Size: UDim2?,
}

type PopUpWrapperButtonState = {
	hovering: boolean,
}

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
	local props: PopUpWrapperButtonProps = self.props
	local state: PopUpWrapperButtonState = self.state

	local position = props.position
	local showIcon = props.ShowIcon
	local size
	local hoverSize
	local layoutOrder
	if FFlagToolboxAudioAssetPreview then
		layoutOrder = props.LayoutOrder
		hoverSize = props.HoverSize or HOVER_SIZE
		size = props.Size or DEFAULT_SIZE
	else
		hoverSize = HOVER_SIZE
		size = DEFAULT_SIZE
	end

	local hovering = state.hovering

	return Roact.createElement("ImageButton", {
		Position = position,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = hovering and hoverSize or size,

		Image = Images.MAGNIFIER_PH,
		ImageTransparency = showIcon and 0 or 1,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,

		[Roact.Event.Activated] = props.onClick,
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	})
end

return PopUpWrapperButton

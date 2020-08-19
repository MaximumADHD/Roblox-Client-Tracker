--[[
	This component is a button used to open the AssetPreview page.

	Necessary properties:
	Position = UDim2
	ShowIcon = bool, Show the preview button to toggle the asset preview.
	OnClick = function, A callback when the user clicks this button.
	Image = string, rbxasset..., image to be dispalyed in the button,

	Optional properties:
	OnRightClick = function, a callback when the user right clicks this button.
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = Plugin.Packages.Framework

local UI = require(Framework.UI)
local HoverArea = UI.HoverArea

local PopUpButton = Roact.PureComponent:extend("PopUpButton")

local FFlagAssetManagerOpenContextMenu = game:DefineFastFlag("AssetManagerOpenContextMenu", false)

local HOVER_SIZE = UDim2.new(0, 32, 0, 32)
local DEFAULT_SIZE = UDim2.new(0, 28, 0, 28)

function PopUpButton:init(props)
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

function PopUpButton:render()
    local props = self.props
    local state = self.state

    local position = props.Position
    local showIcon = props.ShowIcon
	local image = props.Image
	local onClick = props.OnClick
	-- The function() end is provided so no error is thrown when right clicking on the button but no OnRightClick is provided.
	local onRightClick = props.OnRightClick and props.OnRightClick or function() end

    local hovering = state.hovering

    return Roact.createElement("ImageButton", {
        Position = position,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = hovering and HOVER_SIZE or DEFAULT_SIZE,

        Image = image,
        ImageTransparency = showIcon and 0 or 1,
        BackgroundTransparency = 1,

		[Roact.Event.Activated] = onClick,
		[Roact.Event.MouseButton2Click] = onRightClick,
        [Roact.Event.MouseEnter] = self.mouseEnter,
        [Roact.Event.MouseLeave] = self.mouseLeave,
    }, {
        Hover = FFlagAssetManagerOpenContextMenu and Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
	})
end

return PopUpButton
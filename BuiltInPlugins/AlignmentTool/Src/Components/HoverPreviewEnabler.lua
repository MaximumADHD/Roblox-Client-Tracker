--[[
	A component that detects when the mouse is hovering anywhere over the
	Dock Widget plugin GUI, and updates the store, setting previewVisible
	to true while the mouse is hovering.
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local SetPreviewVisible = require(Plugin.Src.Actions.SetPreviewVisible)

local HoverPreviewEnabler = Roact.PureComponent:extend("HoverPreviewEnabler")

function HoverPreviewEnabler:init()
	self.mouseEnter = function()
		self.props.setPreviewVisible(true)
	end
	self.mouseLeave = function()
		self.props.setPreviewVisible(false)
	end
end

function HoverPreviewEnabler:willUnmount()
	self.mouseLeave()
end

function HoverPreviewEnabler:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	}, self.props[Roact.Children])
end

local function mapDispatchToProps(dispatch)
	return {
		setPreviewVisible = function(visible)
			dispatch(SetPreviewVisible(visible))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(HoverPreviewEnabler)
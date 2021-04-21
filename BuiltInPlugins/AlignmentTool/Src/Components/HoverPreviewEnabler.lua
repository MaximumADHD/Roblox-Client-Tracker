--[[
	A component that detects when the mouse is hovering anywhere over the
	Dock Widget plugin GUI, and updates the store, setting previewVisible
	to true while the mouse is hovering.
]]
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local SetPreviewVisible = require(Plugin.Src.Actions.SetPreviewVisible)

local HoverPreviewEnabler = Roact.PureComponent:extend("HoverPreviewEnabler")

function HoverPreviewEnabler:init()
	self.mouseMoved = function()
		if not self.props.previewVisible then
			self.props.setPreviewVisible(true)
		end
	end
	self.mouseLeave = function()
		self.props.setPreviewVisible(false)
	end
end

function HoverPreviewEnabler:didMount()
	local mousePrevLocation = UserInputService:GetMouseLocation()
	RunService:BindToRenderStep("getMouseLocation", 1, function()
		local mouseLocation = UserInputService:GetMouseLocation()
		if mousePrevLocation ~= mouseLocation then
			if self.props.previewVisible then
				self.props.setPreviewVisible(false)
			end
		end
		mousePrevLocation = mouseLocation
	end)
end

function HoverPreviewEnabler:willUnmount()
	self.mouseLeave()
	RunService:UnbindFromRenderStep("getMouseLocation")
end

function HoverPreviewEnabler:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Event.MouseMoved] = self.mouseMoved,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	}, self.props[Roact.Children])
end

local function mapStateToProps(state, _)
	return {
		previewVisible = state.previewVisible,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setPreviewVisible = function(visible)
			dispatch(SetPreviewVisible(visible))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(HoverPreviewEnabler)

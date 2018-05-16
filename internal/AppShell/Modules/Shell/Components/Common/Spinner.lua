--[[
		Creates a component as a spinner
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Roact = require(Modules.Common.Roact)
local Components = Modules.Shell.Components
local RenderStep = require(Components.RenderStep)
local SPINNER_IMAGE = 'rbxasset://textures/ui/Shell/Icons/LoadingSpinner@1080.png'
local Spinner = Roact.PureComponent:extend("Spinner")

function Spinner:init()
	self.state = {
		rotation = 0
	}

	self.speed = 360

	self.update = function(dt)
		self:setState({
			rotation = self.state.rotation + dt * self.speed
		})
	end
end

function Spinner:render()
	local props = self.props
	local state = self.state
	local rotation = state.rotation
	self.speed = props.speed or 360

	return Roact.createElement("ImageLabel", {
		Rotation = rotation,
		BackgroundTransparency = 1,
		Size = props.Size or UDim2.new(0, 100, 0, 100),
		AnchorPoint = props.AnchorPoint or Vector2.new(0.5, 0.5),
		Position = props.Position or UDim2.new(0.5, 0, 0.5, 0),
		Image = SPINNER_IMAGE,
		ZIndex = props.ZIndex or 10,
		ImageTransparency = props.ImageTransparency or 0,
	},{
		Render = Roact.createElement(RenderStep, {
			name = tick(),
			priority = Enum.RenderPriority.Input.Value,
			callback = self.update,
		}),
	})
end

return Spinner
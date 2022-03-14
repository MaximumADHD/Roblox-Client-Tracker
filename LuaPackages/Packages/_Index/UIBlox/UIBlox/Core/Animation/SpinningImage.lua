local RunService = game:GetService("RunService")
local AnimationRoot = script.Parent
local Core = AnimationRoot.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(UIBlox.Parent.t)

local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label

local SpinningImage = Roact.PureComponent:extend("SpinningImage")

SpinningImage.validateProps = t.strictInterface({
	image = t.table,
	size = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.union(t.UDim2, t.table)),
	rotationRate = t.optional(t.number),
})

SpinningImage.defaultProps = {
	rotationRate = 360,
}

function SpinningImage:init()
	self.state = {
		angle = 0,
	}
end

function SpinningImage:didMount()
	self.heartbeatConnection = RunService.Heartbeat:Connect(function(dt)
		local newAngle = self.state.angle + self.props.rotationRate*dt
		if newAngle > 360 then
			newAngle = newAngle - 360
		elseif newAngle < 0 then
			newAngle = newAngle + 360
		end
		self:setState({
			angle = newAngle
		})
	end)
end

function SpinningImage:willUnmount()
	self.heartbeatConnection:Disconnect()
end

function SpinningImage.getDerivedStateFromProps(nextProps, lastState)
	local imageSize = nextProps.image.ImageRectSize
	return {
		size = nextProps.size or UDim2.fromOffset(imageSize.X, imageSize.Y)
	}
end

function SpinningImage:render()
	return Roact.createElement("Frame", {
		Size = self.state.size,
		AnchorPoint = self.props.anchorPoint,
		Position = self.props.position,
		BackgroundTransparency = 1,
	}, {
		inner = Roact.createElement(ImageSetLabel, {
			Size = self.state.size,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Image = self.props.image,
			Rotation = self.state.angle,
			BackgroundTransparency = 1,
		})
	})
end

return SpinningImage

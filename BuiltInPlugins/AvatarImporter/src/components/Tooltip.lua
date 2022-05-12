--[[
	Tooltip - Creates a floating tooltip on hover

	Props
		boolean enabled, whether or not the Tooltip is enabled
		number showDelay, the delay before the tooltip shows up, defaults to 0.5s
		UDim2 Size, the Size of the Tooltip
]]

local root = script.Parent.Parent.Parent
local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")
-- services
local RunService = game:GetService("RunService")

-- imports
local Roact = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Roact) else require(root.Packages._Old.lib.Roact)

local Studio = settings().Studio

local X_OFFSET = 13
local Y_OFFSET = 23

-- component
local Tooltip = Roact.Component:extend("Tooltip")

function Tooltip:init()
	self.detectorRef = Roact.createRef()

	self.state = {
		show = false,
	}

	self.targetTime = math.huge

	self.mouseEnter = function(_, x, y)
		self.mouseX = x
		self.mouseY = y
		self:resetTargetTime()
		self:disconnectHeartbeat()
		self.heartbeatConn = RunService.Heartbeat:Connect(function()
			if tick() >= self.targetTime then
				self.heartbeatConn:Disconnect()
				self:setState({
					show = true,
					tooltipPosition = self:getPosition(),
				})
			end
		end)
	end

	self.mouseMoved = function(_, x, y)
		self.mouseX = x
		self.mouseY = y
		self:resetTargetTime()
	end

	self.mouseLeave = function()
		self:disconnectHeartbeat()
		self:setState({
			show = false,
		})
	end
end

function Tooltip:disconnectHeartbeat()
	if self.heartbeatConn then
		self.heartbeatConn:Disconnect()
		self.heartbeatConn = nil
	end
end

function Tooltip:resetTargetTime()
	self.targetTime = tick() + (self.props.showDelay or 0.5)
end

function Tooltip:getPosition()
	local detector = self.detectorRef:getValue()
	if detector then
		local absolutePosition = detector.AbsolutePosition
		return UDim2.new(
			0,
			self.mouseX - absolutePosition.X + X_OFFSET,
			0,
			self.mouseY - absolutePosition.Y + Y_OFFSET
		)
	end
end

function Tooltip:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.detectorRef,
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseMoved] = self.mouseMoved,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	}, {
		Tooltip = self.state.show and Roact.createElement("Frame", {
			ZIndex = 10,
			Position = self.state.tooltipPosition,
			Size = self.props.Size,
			Visible = self.props.enabled,
			BackgroundColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.MainBackground,
				Enum.StudioStyleGuideModifier.Default
			),
			BorderColor3 = Studio.Theme:GetColor(
				Enum.StudioStyleGuideColor.Border,
				Enum.StudioStyleGuideModifier.Default
			),
		}, self.props[Roact.Children])
	})
end

return Tooltip
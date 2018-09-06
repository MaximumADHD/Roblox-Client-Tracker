local Workspace = game:GetService("Workspace")
local RunService = game:GetService('RunService')
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local BAR_SLICE_CENTER = Rect.new(1, 0, 2, 3)
local BAR_MAX_SIZE = 15
local BAR_MAX_AMPLITUDE = 40
local BAR_DIAMETER = 4
local BAR_PERIOD = 1.25

local LoadingBar = Roact.Component:extend("LoadingBar")

function LoadingBar:init()
	self.barRef = Roact.createRef()
end

function LoadingBar:render()
	local zIndex = self.props.ZIndex

	return Roact.createElement("ImageLabel", {
		Image = "rbxasset://textures/ui/LuaApp/9-slice/gr-loading-indicator.png",
		ScaleType = "Slice",
		SliceCenter = BAR_SLICE_CENTER,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = zIndex,
		[Roact.Ref] = self.barRef,
	})
end

function LoadingBar:didMount()
	self.connection = RunService.RenderStepped:Connect(function()
		local t = Workspace.DistributedGameTime
		local instance = self.barRef.current
		local period = 2.0 * math.pi / BAR_PERIOD

		local width = (BAR_MAX_SIZE/2) * (1 - math.cos(2*t*period))
		instance.Size = UDim2.new(0, BAR_DIAMETER + width, 0, BAR_DIAMETER)

		local x = BAR_MAX_AMPLITUDE * math.cos(t*period)
		instance.Position = UDim2.new(0.5, x - width/2 - BAR_DIAMETER/2, 0.5, 0)
	end)
end

function LoadingBar:willUnmount()
	self.connection:Disconnect()
end

return LoadingBar
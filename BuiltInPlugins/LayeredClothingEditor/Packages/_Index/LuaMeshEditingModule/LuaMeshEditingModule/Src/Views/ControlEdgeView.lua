local types = require(script.Parent.types)
local Constants = require(script.Parent.Parent.Util.Constants)

local ControlEdgeView = {}
ControlEdgeView.__index = ControlEdgeView

local DEFAULT_THICKNESS = Constants.ControlEdge.DefaultThickness

function ControlEdgeView.new()
	local controlEdgeViewObject = setmetatable({}, ControlEdgeView)

	-- public functions
	function controlEdgeViewObject:render(props: types.ControlEdgeViewProps)
		local startPoint = props.StartPoint
		local endPoint = props.EndPoint
		local adornee = props.Adornee
		local parent = props.Parent
		local transparency = props.Transparency
		local color = props.Color
		local thickness = props.Thickness or DEFAULT_THICKNESS

		local length = (startPoint - endPoint).Magnitude
		local cframe = CFrame.new(Vector3.new(0, 0, 0), (endPoint - startPoint).Unit)
		cframe = cframe + startPoint

		if not self.edge then
			self.edge = Instance.new("LineHandleAdornment")
			self.edge.AlwaysOnTop = false
			self.edge.ZIndex = 1
			self.edge.Archivable = false
		end

		self.edge.Length = length
		self.edge.CFrame = cframe
		self.edge.Thickness = thickness
		self.edge.Transparency = transparency
		self.edge.Color3 = color
		self.edge.Adornee = adornee
		self.edge.Parent = parent
	end

	function controlEdgeViewObject:cleanup()
		if self.edge then
			self.edge:Destroy()
			self.edge = nil
		end
	end

	return controlEdgeViewObject
end

return ControlEdgeView

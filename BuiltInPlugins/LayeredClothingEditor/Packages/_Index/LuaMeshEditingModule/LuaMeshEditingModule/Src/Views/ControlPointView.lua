local types = require(script.Parent.types)
local Constants = require(script.Parent.Parent.Util.Constants)

local ControlPointView = {}
ControlPointView.__index = ControlPointView

local DEFAULT_COLOR = Constants.ControlPoint.DefaultColor
local HOVERED_COLOR = Constants.ControlPoint.HoveredColor
local SELECTED_COLOR = Constants.ControlPoint.SelectedColor
local SELECTED_COLOR_NO_WEIGHT = Constants.ControlPoint.SelectedColorNoWeight

function ControlPointView.new()
	local controlPointViewObject = setmetatable({}, ControlPointView)

	-- public functions
	function controlPointViewObject:render(props: types.ControlPointViewProps)
		local position = props.Position

		local selected = props.Selected
		local hovered = props.Hovered

		local weight = props.Weight
		local transparency = props.Transparency

		local size = props.Size

		local shape = props.Shape
		assert(shape == "Box" or shape == "Sphere", "Shape must be Box or Sphere.")

		local partParent = props.PartParent
		local adornmentParent = props.AdornmentParent

		local name = props.Name

		local color = props.Color
		if not color then
			color = DEFAULT_COLOR

			if selected then
				color = SELECTED_COLOR_NO_WEIGHT:lerp(SELECTED_COLOR, weight)
			elseif hovered then
				color = HOVERED_COLOR
			end
		end

		if not self.controlPoint then
			self.controlPoint = Instance.new("Part")
			self.controlPoint.Name = name
			self.controlPoint:GetPropertyChangedSignal("Name"):Connect(function()
				if self.controlPoint.Name ~= name then
					self.controlPoint.Name = name
				end
			end)
			self.controlPoint.Transparency = 1
			self.controlPoint.Archivable = false
		end

		if self.adornment and not self.adornment:IsA(shape .. "HandleAdornment") then
			self.adornment:Destroy()
			self.adornment = nil
		end

		if not self.adornment then
			self.adornment = Instance.new(shape .. "HandleAdornment")
			self.adornment.ZIndex = 1
			self.adornment.Adornee = self.controlPoint
			self.adornment.AlwaysOnTop = false
			self.adornment.Archivable = false
		end

		self.controlPoint.CFrame = CFrame.new(position)
		self.controlPoint.Size = Vector3.new(size, size, size)
		self.controlPoint.Parent = partParent

		self.adornment.Transparency = transparency
		self.adornment.Color3 = color
		self.adornment.Parent = adornmentParent

		if shape == "Box" then
			self.adornment.Size = Vector3.new(size, size, size)
		elseif shape == "Sphere" then
			self.adornment.Radius = size
		end
	end

	function controlPointViewObject:cleanup()
		if self.adornment then
			self.adornment:Destroy()
			self.adornment = nil
		end

		if self.controlPoint then
			self.controlPoint:Destroy()
			self.controlPoint = nil
		end
	end

	return controlPointViewObject
end

return ControlPointView

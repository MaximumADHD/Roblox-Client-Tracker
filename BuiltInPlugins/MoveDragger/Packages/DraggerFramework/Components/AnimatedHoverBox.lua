--[[
	Displays an animated SelectionBox adornment on the hovered Workspace object.
]]

-- Services
local RunService = game:GetService("RunService")

local Framework = script.Parent.Parent
local Library = Framework.Parent.Parent
local Roact = require(Library.Packages.Roact)

-- Utilities
local StudioSettings = require(Framework.Utility.StudioSettings)

local ANIMATED_HOVER_BOX_UPDATE_BIND_NAME = "AnimatedHoverBoxUpdate"
local MODEL_LINE_THICKNESS_SCALE = 2.5

--[[
	Return a hover color that is a blend between the Studio settings HoverOverColor
	and SelectColor, based on the current time and HoverAnimateSpeed.
]]
local function getHoverColorForTime(currentTime)
	if StudioSettings.AnimateHoverOver then
		local animatePeriod = StudioSettings.getHoverAnimateSpeedSeconds(StudioSettings.HoverAnimateSpeed)
		local alpha = 0.5 + 0.5 * math.sin(currentTime / animatePeriod * math.pi)
		return StudioSettings.HoverOverColor:lerp(StudioSettings.SelectColor, alpha)
	else
		return StudioSettings.HoverOverColor
	end
end

local AnimatedHoverBox = Roact.PureComponent:extend("AnimatedHoverBox")

function AnimatedHoverBox:init(initialProps)
	assert(initialProps.hoverTarget, "Missing required property 'hoverTarget'.")

	self:setState({
		currentColor = getHoverColorForTime(0),
	})

	self._isMounted = false
	self._startTime = 0
end

function AnimatedHoverBox:didMount()
	self._isMounted = true
	self._startTime = tick()

	RunService:BindToRenderStep(ANIMATED_HOVER_BOX_UPDATE_BIND_NAME, Enum.RenderPriority.First.Value, function()
		if self._isMounted then
			self:setState({
				currentColor = getHoverColorForTime(tick() - self._startTime)
			})
		end
	end)
end

function AnimatedHoverBox:willUnmount()
	self._isMounted = false
	RunService:UnbindFromRenderStep(ANIMATED_HOVER_BOX_UPDATE_BIND_NAME)
end

function AnimatedHoverBox:render()
	if not StudioSettings.ShowHoverOver then
		return nil
	end

	if not self.props.hoverTarget then
		return nil
	end

	local currentColor = self.state.currentColor
	local lineThickness = StudioSettings.LineThickness

	if self.props.hoverTarget:IsA("Model") then
		lineThickness = lineThickness * MODEL_LINE_THICKNESS_SCALE
	end

	return Roact.createElement("SelectionBox", {
		Adornee = self.props.hoverTarget,
		Color3 = currentColor,
		LineThickness = lineThickness,
	})
end

return AnimatedHoverBox

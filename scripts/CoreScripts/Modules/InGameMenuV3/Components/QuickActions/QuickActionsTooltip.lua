--!nonstrict
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Core.Style.withStyle


local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent
local GetFFlagRECIcon = require(InGameMenu.Flags.GetFFlagRECIcon)
local RECIcon = require(InGameMenu.Components.RECIcon)

local QuickActionsTooltip = Roact.PureComponent:extend("QuickActionsTooltip")

local TOOLTIP_WIDTH = 250
local TOOLTIP_HEIGHT = 36
local FPS = 30

QuickActionsTooltip.validateProps = t.strictInterface({
	layoutOrder = t.number,
	text = t.optional(t.string),
	Size = t.optional(t.UDim2),
	Position = t.optional(t.UDim2),
	TextXAlignment = t.optional(t.EnumItem),
	transparency = t.optional(t.table),
})

local function linearTween(dTime, startFrame, endFrame)
	local range = (endFrame - startFrame)/FPS
	return (dTime - (startFrame/FPS)) / range
end

local function isBetweenFrames(dTime, startFrame, endFrame)
	return dTime >= (startFrame/FPS) and dTime <= (endFrame/FPS)
end

local function showAnimation(timeElapsed, updateBinding, reverse, stopCallback)
	--[[
		- frame 0 -> 6   200ms  textTransparency = 1->0 appear 
		- frame 6 -> 24  600ms  textTransparency =    0 show
		- frame 24-> 30  200ms  textTransparency = 0->1 disappear
	]]
	if isBetweenFrames(timeElapsed, 0, 6) then
		local scaledElapsed = 1 - linearTween(timeElapsed, 0, 6)
		updateBinding(scaledElapsed)
	elseif isBetweenFrames(timeElapsed, 6, 24) then
		updateBinding(0)
	elseif isBetweenFrames(timeElapsed, 24, 30) then
		local scaledElapsed = linearTween(timeElapsed, 24, 30)
		updateBinding(scaledElapsed)
	else
		--Complete animation
		updateBinding(1)
		stopCallback()
	end
end

function QuickActionsTooltip:init()
	self.textTransparency, self.updateTextTransparency = Roact.createBinding(1)
	self.animationStartTime = nil
	self.animationFunction = nil
	self.reverseAnimation = false
	self.renderSteppedConnection = nil
end

function QuickActionsTooltip:render()

	if not GetFFlagRECIcon() then
		return self:render_old()
	end

	local position = UDim2.new(1, -30, 0, 15)
	if self.props.TextXAlignment == Enum.TextXAlignment.Left then
		position = UDim2.new(0, 30, 0, 5)
	end

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Position = self.props.Position or UDim2.new(1, -TOOLTIP_WIDTH, 0, 0),
			Size = self.props.Size or UDim2.new(0, TOOLTIP_WIDTH, 0, TOOLTIP_HEIGHT),
			LayoutOrder = self.props.layoutOrder,
			BackgroundTransparency = 1,
		},{
			REC = Roact.createElement(RECIcon, {
				Position = position,
				AnchorPoint = Vector2.new(0.5, 0.0),
				transparency = Roact.joinBindings({self.textTransparency, self.props.transparency}):map(function(vals)
					local t1 = vals[1] or 0;
					local t2 = 1 - (vals[2] or 0);
					return 1.0 - (t1 * t2);
				end),
			}),
			TipText = Roact.createElement("TextLabel", {
				Text = self.props.text,
				TextXAlignment = self.props.TextXAlignment or Enum.TextXAlignment.Right,
				BackgroundTransparency = 1,
				Font = style.Font.Header2.Font,
				TextSize = style.Font.Header2.RelativeSize * style.Font.BaseSize,
				TextWrapped = true,
				Size = self.props.Size or UDim2.new(0, TOOLTIP_WIDTH, 0, TOOLTIP_HEIGHT),
				TextColor3 = style.Theme.TextEmphasis.Color,
				TextTransparency = self.textTransparency,
			})
		})

	end)
end

function QuickActionsTooltip:render_old()
	return withStyle(function(style)
		return Roact.createElement("TextLabel", {
			Text = self.props.text,
			TextXAlignment = self.props.TextXAlignment or Enum.TextXAlignment.Right,
			BackgroundTransparency = 1,
			Font = style.Font.Header2.Font,
			LayoutOrder = self.props.layoutOrder,
			TextSize = style.Font.Header2.RelativeSize * style.Font.BaseSize,
			TextWrapped = true,
			Size = self.props.Size or UDim2.new(0, TOOLTIP_WIDTH, 0, TOOLTIP_HEIGHT),
			Position = self.props.Position or UDim2.new(1, -TOOLTIP_WIDTH, 0, 0),
			TextColor3 = style.Theme.TextEmphasis.Color,
			TextTransparency = self.textTransparency,
		})
	end)
end

function QuickActionsTooltip:didUpdate(prevProps, _)
	if self.props.text and prevProps.text ~= self.props.text then
		self:playAnimation(showAnimation, false)
	end
end

function QuickActionsTooltip:playAnimation(animFunc, reverse)
	if self.animationFunction then
		--Complete current animation
		self.animationFunction(100, self.updateTextTransparency, self.reverseAnimation, function() end)
	end
	self.animationStartTime = tick()
	self.animationFunction = animFunc
	self.reverseAnimation = reverse
	if not self.renderSteppedConnection then
		self.renderSteppedConnection = RunService.RenderStepped:Connect(function()
			self.animationFunction(tick() - self.animationStartTime, self.updateTextTransparency, self.reverseAnimation, function()
				self:stopAnimation()
			end)
		end)
	end
end

function QuickActionsTooltip:stopAnimation()
	if self.renderSteppedConnection then
		self.renderSteppedConnection:Disconnect()
		self.renderSteppedConnection = nil
	end
end

function QuickActionsTooltip:willUnmount()
	self:stopAnimation()
end

local function mapStateToProps(state, _)
	return {
		text = state.quickActions.tooltipText,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(QuickActionsTooltip)

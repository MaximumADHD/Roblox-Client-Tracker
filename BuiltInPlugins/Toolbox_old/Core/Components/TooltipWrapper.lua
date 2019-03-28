--[[
	This wrapper creates desired component and listen to the mouse event for the tooltip.
	This component provide tooltip with position and text it needs to show.

	Props:
		Instance target
		string Text
		bool canShowCurrentTooltip
		bool isHovered
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local withModal = ContextHelper.withModal

local Tooltip = require(Plugin.Core.Components.Tooltip)

local TooltipWrapper = Roact.PureComponent:extend("TooltipWrapper")

function TooltipWrapper:init(props)
	self.state = {
		showToolTip = false,
	}

	self.targetTime = tick() + Constants.TOOLTIP_SHOW_UP_DELAY
	self.mousePos = nil

	self.onHovered = function()
		spawn(function()
			-- probabebly don't need this
			while self.props.isHovered do
				local currentTime = tick()
				if self and currentTime >= self.targetTime and (not self.state.showToolTip) and self._handle then
					self:setState({
						showToolTip = true,
					})
				else
					wait(0.1)
				end
			end
		end)
	end

	self.onUnhovered = function()
		self.targetTime = 0
		self.mousePos = nil
	end

	self.inputBegan = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self.mousePos = input.Position
			self:setState({
				showToolTip = false
			})
		end
	end

	self.inputEnded = function(rbx, input)
		if input.UserInputType ~= Enum.UserInputType.MouseMovement then
			self:setState({
				showToolTip = false,
			})
		end
	end

	self.inputChanged = function(rbx, input)
		self.targetTime = tick() + Constants.TOOLTIP_SHOW_UP_DELAY
		self.mousePos = input.Position
	end
end

function TooltipWrapper:render()
	return withModal(function(modalTarget)
		local props = self.props
		local state = self.state

		if props.isHovered then
			self.onHovered()
		else
			self.onUnhovered()
		end

		local sizeConstraint = props.SizeConstraint or Enum.SizeConstraint.RelativeXY

		local text = props.Text
		local mousePos = self.mousePos

		local canShowCurrentTooltip = props.canShowCurrentTooltip

		local content = {}

		if state.showToolTip and mousePos and not DebugFlags.shouldDisableTooltips()
			and canShowCurrentTooltip and modalTarget then
			local targetWidth = modalTarget.AbsoluteSize.X
			local targetHeight = modalTarget.AbsoluteSize.Y
			content.TooltipPortal = Roact.createElement(Roact.Portal, {
				target = modalTarget,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					position = mousePos,
					text = text,

					targetWidth = targetWidth,
					targetHeight = targetHeight,
				}),
			})
		end

		return Roact.createElement("Frame",{
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			SizeConstraint = sizeConstraint,

			[Roact.Event.InputBegan] = self.inputBegan,
			[Roact.Event.InputChanged] = self.inputChanged,
			[Roact.Event.InputEnded] = self.inputEnded,
		}, content)
	end)
end

return TooltipWrapper

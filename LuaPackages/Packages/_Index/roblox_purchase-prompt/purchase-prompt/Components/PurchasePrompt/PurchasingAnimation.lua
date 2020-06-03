local Root = script.Parent.Parent.Parent
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local AnimatedDot = require(script.Parent.AnimatedDot)
local ExternalEventConnection = require(script.Parent.Parent.Connection.ExternalEventConnection)
local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local ANIMATION_SPEED_MULTIPLIER = 2.00

local PurchasingAnimation = Roact.Component:extend("PurchasingAnimation")

function PurchasingAnimation:init()
	self.state = {
		gameTime = 0,
	}

	self.onRenderStepped = function()
		self:setState({
			gameTime = Workspace.DistributedGameTime
		})
	end
end

function PurchasingAnimation:render()
	return withLayoutValues(function(values)
		local layoutOrder = self.props.layoutOrder

		local gameTime = self.state.gameTime

		local animationTime = (gameTime * ANIMATION_SPEED_MULTIPLIER) % 3

		return Roact.createElement("Frame", {
			Size = values.Size.PurchasingAnimation,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = layoutOrder,
		}, {
			RenderSteppedConnection = Roact.createElement(ExternalEventConnection, {
				event = RunService.RenderStepped,
				callback = self.onRenderStepped,
			}),
			ListLayout = Roact.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			AnimatedDot1 = Roact.createElement(AnimatedDot, {
				layoutOrder = 1,
				time = animationTime,
			}),
			AnimatedDot2 = Roact.createElement(AnimatedDot, {
				layoutOrder = 2,
				time = animationTime,
			}),
			AnimatedDot3 = Roact.createElement(AnimatedDot, {
				layoutOrder = 3,
				time = animationTime,
			}),
		})
	end)
end

return PurchasingAnimation
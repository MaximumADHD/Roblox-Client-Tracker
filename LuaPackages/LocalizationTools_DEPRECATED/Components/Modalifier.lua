--[[
	Modalifier uses Roact.Portal and an invisible TextButton called "Curtain" to create
	modal behavior ("modal" as in modal dialog). This can be used for implementing a
	transient piece of UI that demands user attention, such as a popup menu.

	Properites:
		Window - the entire window you want to cover with the curtain
		Render - function, takes the absolute position as an argument and
			returns a roact component that's meant to go in front of the Curtain
		OnClosed - callback when the curtain gets clicked
]]
local Roact = require(game:GetService("CorePackages").Roact)

local Modalifier = Roact.Component:extend("Modalifier")

function Modalifier:init()
	self.state = {
		ContentAbsolutePosition = Vector2.new(0, 0),
		Showing = false,
	}
end

function Modalifier:render()
	local visibleChildren = {}
	if self.state.Showing then
		visibleChildren = {
			content = self.props.Render(self.state.ContentAbsolutePosition),
		}
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		[Roact.Change.AbsolutePosition] = function(instance)
			spawn(function()
				self:setState({
					ContentAbsolutePosition = instance.AbsolutePosition,
					Showing = true,
				})
			end)
		end,
	}, {
		Portal = Roact.createElement(Roact.Portal, {
			-- Future redesign strongly suggested here:
			-- https://jira.roblox.com/browse/CLILUACORE-287
			target = self.props.Window,
		}, {
			Curtain = Roact.createElement("TextButton", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Text = "",

				[Roact.Event.Activated] = self.props.OnClosed,
			}, visibleChildren),
		}),
	})
end

return Modalifier

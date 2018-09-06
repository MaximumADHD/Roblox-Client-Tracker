local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

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
			-- Future redesign strongly suggested here: https://jira.roblox.com/browse/CLILUACORE-287
			target = self.props.Window,
		}, {
			Curtain = Roact.createElement("TextButton", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Text = "",

				[Roact.Event.Activated] = function()
					self.props.OnClosed()
				end,
			}, visibleChildren),
		}),
	})
end

return Modalifier

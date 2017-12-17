local CoreGui = game:GetService("CoreGui")

local Common = script.Parent.Parent

local Roact = require(Common.Roact)

local App = Roact.Component:extend("App")

function App:render()
	return Roact.createElement("ScreenGui", {
	}, {
		Button = Roact.createElement("TextButton", {
			Size = UDim2.new(0.5, 0, 0.5, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),

			-- Attach event listeners using `Roact.Event[eventName]`
			-- Event listeners get `rbx` as their first parameter
			-- followed by their normal event arguments.
			[Roact.Event.MouseButton1Click] = function(rbx)
				print("The button was clicked!")
			end
		}),
	})
end

return function()
	local element = Roact.createElement(App)

	Roact.reify(element, CoreGui, "Roact-events")
end
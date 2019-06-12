local ComponentRoot = script.Parent
local UIBloxRoot = ComponentRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local Cryo = require(UIBloxRoot.Parent.Cryo)

local StyleProvider = require(UIBloxRoot.Style.StyleProvider)
local StyleRoot = UIBloxRoot.Style
local StyleConsumer = require(StyleRoot.StyleConsumer)
local testStyle = require(StyleRoot.Validator.TestStyle)

return function(elements)
	return Roact.createElement(StyleProvider, {
		style = testStyle,
	}, {
		StyleConsumer = Roact.createElement(StyleConsumer, {
			render = function()
				return Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 100),
				},
					elements
				)
			end,
		}),
	})
end
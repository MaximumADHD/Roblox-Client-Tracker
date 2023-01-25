local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local Dictionary = require(ProjectRoot.llama).Dictionary

local ScrollingView = require(script.Parent)

return {
	story = function(props)
		return Roact.createElement(ScrollingView, {
			size = props.size,
		}, props.createChildren(props.controls.numberOfChildren))
	end,
	controls = { numberOfChildren = 10 },
	props = {
		size = UDim2.fromOffset(350, 180),
		createChildren = function(numberOfChildren)
			return Dictionary.join(
				Dictionary.map(table.create(numberOfChildren, ""), function(_value, key)
					local newKey = string.format("%03i", key)
					return Roact.createElement("TextLabel", {
						Text = string.format("Label %d", key),
						Size = UDim2.new(1, 0, 0, 32),
					}),
						"label" .. newKey
				end),
				{
					layout = Roact.createElement("UIListLayout"),
				}
			)
		end,
	},
}

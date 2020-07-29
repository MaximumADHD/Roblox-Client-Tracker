local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local InstanceTreeView = UI.InstanceTreeView

local Example = Roact.PureComponent:extend(script.Parent.Name .. "Example")

function Example:init()
	self.state = {
		Expansion = {},
		Selection = {},
		Instances = {game.Workspace, game.ReplicatedStorage, game.StarterPlayer}
	}
end

function Example:render()
	return Roact.createElement(InstanceTreeView, {
		Size = UDim2.new(0, 240, 0, 240),
		Instances = self.state.Instances,
		Selection = self.state.Selection,
		Expansion = self.state.Expansion,
		OnSelectionChange = function(items)
			self:setState({
				Selection = items
			})
		end,
		OnExpansionChange = function(items)
			self:setState({
				Expansion = items
			})
		end,
		Style = "Compact"
	})
end

return Example
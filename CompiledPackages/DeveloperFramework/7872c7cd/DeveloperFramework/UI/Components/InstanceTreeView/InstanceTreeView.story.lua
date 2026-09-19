local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Workspace = game:GetService("Workspace")
local StarterPlayer = game:GetService("StarterPlayer")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local InstanceTreeView = require(Framework.UI.Components.InstanceTreeView)
local Cryo = require(Framework.Parent.Cryo)

local Example = Roact.PureComponent:extend(script.Parent.Name .. "Example")

function Example:init()
	self.state = {
		Expansion = {},
		Selection = {},
		Instances = { Workspace, ReplicatedStorage, StarterPlayer },
		OnExpansionChange = function() end,
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
				Selection = items,
			})
		end,
		OnExpansionChange = function(items)
			self:setState({
				Expansion = Cryo.Dictionary.join(self.state.Expansion, items),
			})
		end,
		Style = "Compact",
	})
end

return Example

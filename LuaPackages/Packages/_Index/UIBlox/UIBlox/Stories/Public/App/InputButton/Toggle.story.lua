local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Toggle = require(Packages.UIBlox.App.InputButton.Toggle)

local ToggleDemo = Roact.PureComponent:extend("ToggleDemo")

function ToggleDemo:init()
	self:setState({
		isSelected = false,
	})
end

function ToggleDemo:render()
	return Roact.createElement(Toggle, {
		isSelected = self.state.isSelected,
		onActivated = function()
			self:setState(function(prevState)
				return {
					isSelected = not prevState.isSelected,
				}
			end)
		end,
	})
end

return {
	stories = {
		Default = Roact.createElement(Toggle, {
			onActivated = function() end,
		}),
		Selected = Roact.createElement(Toggle, {
			isSelected = true,
			onActivated = function() end,
		}),
		Disabled = Roact.createElement(Toggle, {
			isDisabled = true,
			onActivated = function() end,
		}),
		DisabledSelected = Roact.createElement(Toggle, {
			isDisabled = true,
			isSelected = true,
			onActivated = function() end,
		}),
		Interactable = ToggleDemo,
	},
}

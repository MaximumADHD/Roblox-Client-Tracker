local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local PaginationDots = require(Framework.UI.Components.PaginationDots)
local ControlledDots = Roact.PureComponent:extend("ControlledDots")

function ControlledDots:init()
	self.state = {
		page = 1,
	}
	self.select = function(page: number)
		self:setState({
			page = page,
		})
	end
end

function ControlledDots:render()
	local state = self.state
	return Roact.createElement(PaginationDots, {
		Count = 5,
		ShowArrows = true,
		SelectedIndex = state.page,
		OnSelected = self.select,
	})
end

return {
	stories = {
		{
			name = "PaginationDots",
			story = Roact.createElement(ControlledDots),
		},
	},
}

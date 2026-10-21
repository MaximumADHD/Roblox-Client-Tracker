local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local PageNavigation = require(Framework.UI.Components.PageNavigation)

local ControlledNav = Roact.PureComponent:extend("ControlledNav")

function ControlledNav:init()
	self.state = {
		PageIndex = 1,
	}
	self.onPageChange = function(pageIndex: number)
		self:setState({
			PageIndex = pageIndex,
		})
	end
end

function ControlledNav:render()
	local state = self.state
	return Roact.createElement(PageNavigation, {
		PageIndex = state.PageIndex,
		PageCount = 5,
		OnPageChange = self.onPageChange,
	})
end

return Roact.createElement(ControlledNav)

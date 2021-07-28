--[[
	An ExpandablePane that automatically manages expanded state.
]]
local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local ExpandablePane = require(Framework.UI.ExpandablePane)

local Util = require(Framework.Util)
local Typecheck = Util.Typecheck

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local SimpleExpandablePane = Roact.PureComponent:extend("SimpleExpandablePane")
Typecheck.wrap(SimpleExpandablePane, script)

function SimpleExpandablePane:init(initialProps)
	self.state = {
		expanded = initialProps.Expanded,
	}

	self.expandedChanged = function()
		self:setState(function(prevState)
			return {
				expanded = not prevState.expanded,
			}
		end)
	end
end

function SimpleExpandablePane:render()
	return Roact.createElement(ExpandablePane, join(self.props, {
		Expanded = self.state.expanded,
		OnExpandedChanged = self.expandedChanged,
	}))
end

return SimpleExpandablePane

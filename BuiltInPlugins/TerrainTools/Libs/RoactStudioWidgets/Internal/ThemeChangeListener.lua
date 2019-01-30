--[[
	component that will re-render when the studio theme changes
]]

local Roact = require(script.Parent.RequireRoact)

local ThemeChangeListener = Roact.Component:extend("ThemeChangeListener")

function ThemeChangeListener:render()
	return self.props.render()
end

local function forceReRender(self)
	self:setState({})
end

function ThemeChangeListener:didMount()
	self.externalThemeChangedConnection = settings().Studio.ThemeChanged:Connect(function()
		forceReRender(self)
	end)
end

function ThemeChangeListener:willUnmount()
	if self.externalThemeChangedConnection then
		self.externalThemeChangedConnection:Disconnect()
	end
end

return ThemeChangeListener
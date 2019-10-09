--[[
	Renders the top tab which allows switching tab-view by clicking
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local UILibrary = Plugin.Packages.UILibrary
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local Tab = Roact.Component:extend(script.Name)

function Tab:render()
	return withTheme(function(theme)
		local name = self.props.Name
		local layoutOrder = self.props.LayoutOrder
		local size = self.props.Size
		local current = self.props.Current

		local buttonSize
		local buttonPos
		if current then
			buttonSize = theme.tabTheme.currentTabSize
			buttonPos = theme.tabTheme.currentTabOffset
		else
			buttonSize = theme.tabTheme.otherTabSize
			buttonPos = theme.tabTheme.otherTabOffset
		end

		return Roact.createElement("Frame", {
			Size = size,
			BackgroundColor3 = theme.borderColor,
			LayoutOrder = layoutOrder,
			BorderSizePixel = 0,
		},{
			TabButton = Roact.createElement("TextButton", {
				Name = name,
				Text = name,
				TextColor3 = theme.textColor,
				Size = buttonSize,
				Position = buttonPos,
				BackgroundColor3 = theme.backgroundColor,
				BorderSizePixel = 0,

				[Roact.Event.Activated] = function()
					self.props.OnClick(name)
				end,
			})
		})
	end)
end

return Tab
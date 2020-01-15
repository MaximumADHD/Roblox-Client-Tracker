--[[
	Renders the top tab which allows switching tab-view by clicking
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local Localizing = require(Plugin.Packages.UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local Tab = Roact.PureComponent:extend(script.Name)

function Tab:init()
	self.onClick = function()
		self.props.OnClick(self.props.TabId)
	end
end

function Tab:render()
	return withTheme(function(theme)
		return withLocalization(function(localization)
			local tabId = self.props.TabId
			local text = localization:getText("Tab", tabId)
			local layoutOrder = self.props.LayoutOrder
			local size = self.props.Size
			local isCurrent = self.props.IsCurrent

			local buttonSize
			local buttonPos
			if isCurrent then
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
			}, {
				TabButton = Roact.createElement("TextButton", {
					Text = text,
					TextColor3 = theme.textColor,
					Size = buttonSize,
					Position = buttonPos,
					BackgroundColor3 = theme.backgroundColor,
					BorderSizePixel = 0,

					[Roact.Event.Activated] = self.onClick,
				})
			})
		end)
	end)
end

return Tab

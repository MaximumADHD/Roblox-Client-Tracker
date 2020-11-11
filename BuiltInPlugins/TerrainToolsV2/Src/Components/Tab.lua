--[[
	Renders the top tab which allows switching tab-view by clicking
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local Tab = Roact.PureComponent:extend(script.Name)

function Tab:init()
	self.onClick = function()
		self.props.OnClick(self.props.TabId)
	end
end

function Tab:render()
	local theme = self.props.Theme:get()
	local localization = self.props.Localization:get()

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
end

ContextServices.mapToProps(Tab, {
	Theme = ContextItems.UILibraryTheme,
	Localization = ContextItems.UILibraryLocalization,
})

return Tab

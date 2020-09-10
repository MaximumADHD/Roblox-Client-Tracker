--[[
	Renders the top tab which allows switching tab-view by clicking
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil
local withTheme = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.Theming).withTheme or nil

local Tab = Roact.PureComponent:extend(script.Name)

function Tab:init()
	self.onClick = function()
		self.props.OnClick(self.props.TabId)
	end
end

function Tab:_render(theme, localization)
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

function Tab:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Theme:get(), self.props.Localization:get())
	else
		return withTheme(function(theme)
			return withLocalization(function(localization)
				return self:_render(theme, localization)
			end)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(Tab, {
		Theme = ContextItems.UILibraryTheme,
		Localization = ContextItems.UILibraryLocalization,
	})
end

return Tab

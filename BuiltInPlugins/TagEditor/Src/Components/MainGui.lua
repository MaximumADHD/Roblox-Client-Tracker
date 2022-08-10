--[[
	The Main View rendered within the Tag Editor Plugin
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local SplitPane = UI.SplitPane

local TagTopPane = require(script.Parent.TagTopPane)
local TagSettingsPane = require(script.Parent.TagSettingsPane)

local PANE_MIN_HEIGHT = 38
local PANE_MINIMIZED_MARGIN = 40

export type Props = {}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	SplitPaneSize: UDim2,
}

local MainGui = Roact.PureComponent:extend("MainGui")

function MainGui:init()
	self.paneRef = Roact.createRef()
	self.state = {
		sizes = {UDim.new(0.5, 0), UDim.new(0.5, 0)},
		isSettingsPaneMinimized = false,
	}
	self.onSizesChange = function(sizes)
		if self.paneRef ~= nil then
			local paneHeight = self.paneRef:getValue().AbsoluteSize.Y
			self:setState({
				sizes = sizes,
				isSettingsPaneMinimized = sizes[2].Scale <= (PANE_MINIMIZED_MARGIN / paneHeight),
			})
		end
	end

	self.onSettingsPaneToggle = function()
		if self.paneRef ~= nil then
			local paneHeight = self.paneRef:getValue().AbsoluteSize.Y
			if self.state.isSettingsPaneMinimized then
				self.onSizesChange(
					{UDim.new(0.5, 0), UDim.new(0.5, 0)})
			else
				self.onSizesChange(
					{UDim.new((paneHeight - PANE_MIN_HEIGHT) / paneHeight, 0), UDim.new(PANE_MIN_HEIGHT / paneHeight, 0)})
			end
		end
	end
end

function MainGui:render()
	return Roact.createElement(Pane, {
		Style = "Box",
		ForwardRef = self.paneRef,
	}, {
		SplitPane = Roact.createElement(SplitPane, {
			LayoutOrder = 2,
			ClampSize = true,
			UseScale = true,
			Layout = Enum.FillDirection.Vertical,
			Sizes = self.state.sizes,
			MinSizes = {UDim.new(0, 100), UDim.new(0, PANE_MIN_HEIGHT)},
			InitialSizes = {UDim.new(0.5, 0), UDim.new(0.5, 0)},
			OnSizesChange = self.onSizesChange,
			BarStyle = "WStyle",
		}, {
			Roact.createElement(TagTopPane, {
			}),
			Roact.createElement(TagSettingsPane, {
				OnSettingsPaneToggle = self.onSettingsPaneToggle,
				IsSettingsPaneMinimized = self.state.isSettingsPaneMinimized,
			}),
		}),
	})
end

MainGui = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MainGui)

return MainGui

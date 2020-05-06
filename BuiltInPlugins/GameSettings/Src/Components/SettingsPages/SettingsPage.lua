--[[
	Base settings page that all settings pages are created in

	Props:
		bool Loading - Whether the page is currently loading or not
		string Title - Localized title of the page that will be dsiplayed in the header
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local ContextServices = require(Plugin.Framework.ContextServices)
local FrameworkUI = require(Plugin.Framework.UI)
local FrameworkUtil = require(Plugin.Framework.Util)
local UILibrary = require(Plugin.UILibrary)

local Container = FrameworkUI.Container
local FitFrameOnAxis = FrameworkUtil.FitFrame.FitFrameOnAxis
local Header = require(Plugin.Src.Components.Header)
local LoadingIndicator = UILibrary.Component.LoadingIndicator
local StyledScrollingFrame = UILibrary.Component.StyledScrollingFrame

local SettingsPage = Roact.Component:extend(script.Name)

function SettingsPage:init()
	self.scrollingFrameRef = Roact.createRef()
	self.contentHeightChanged = function(rbx)
		local scrollingFrame = self.scrollingFrameRef.current
		if scrollingFrame then
			local theme = self.props.Theme:get("Plugin")
			-- TODO remove the + settingPadding and replace with UIPadding once UISYS-469 is fixed
			scrollingFrame.CanvasSize = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.Y + theme.settingsPage.settingPadding)
		end
	end
end

function SettingsPage:render()
	local props = self.props
	local children = props[Roact.Children]
	local theme = props.Theme:get("Plugin")

	local loading = props.Loading
	local title = props.Title

	if loading then
		return Roact.createElement(Container, {}, {
			Loading = Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
			})
		})
	else
		return Roact.createElement(StyledScrollingFrame, {
			Size = UDim2.new(1, 0, 1, 0),
			[Roact.Ref] = self.scrollingFrameRef,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				[Roact.Change.AbsoluteContentSize] = self.contentHeightChanged,
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, theme.settingsPage.settingPadding),
			}),

			Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, theme.settingsPage.marginX),
				PaddingRight = UDim.new(0, theme.settingsPage.marginX),
			}),

			Header = Roact.createElement(Header, {
				LayoutOrder = 1,
				Title = title,
			}),

			Content = Roact.createElement(FitFrameOnAxis, {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				axis = FitFrameOnAxis.Axis.Vertical,
				minimumSize = UDim2.new(1, 0, 0, 0),
				contentPadding = UDim.new(0, theme.settingsPage.settingPadding),
			}, children),
		})
	end
end

ContextServices.mapToProps(SettingsPage, {
    Theme = ContextServices.Theme,
})

return SettingsPage
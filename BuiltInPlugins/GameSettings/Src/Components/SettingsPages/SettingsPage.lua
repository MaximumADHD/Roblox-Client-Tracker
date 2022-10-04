--[[
	Base settings page that all settings pages are created in

	Props:
		string Title - Localized title of the page that will be dsiplayed in the header
		string PageId - Id of the page used in the load/save reducers
		table SettingsLoadJobs - Table of function callbacks invoked on page load used to load settings
		table SettingsSaveJobs - Table of function callbacks invoked on page save used to save settings
]]
local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Util = Framework.Util
local UILibrary = require(Plugin.Packages.UILibrary)

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryLoadingIndicator = SharedFlags.getFFlagRemoveUILibraryLoadingIndicator()
local FFlagDevFrameworkMigrateScrollingFrame = SharedFlags.getFFlagDevFrameworkMigrateScrollingFrame()

local UI = Framework.UI
local Container = UI.Container
local LoadingIndicator = if FFlagRemoveUILibraryLoadingIndicator then UI.LoadingIndicator else UILibrary.Component.LoadingIndicator
local ScrollingFrame = if FFlagDevFrameworkMigrateScrollingFrame then UI.ScrollingFrame else UILibrary.Component.StyledScrollingFrame

local FitFrameOnAxis = Util.FitFrame.FitFrameOnAxis
local Header = require(Plugin.Src.Components.Header)
local LoadFailedPage = require(Plugin.Src.Components.SettingsPages.LoadFailedPage)

local LoadPageSettings = require(Plugin.Src.Thunks.LoadPageSettings)
local SavePageSettings = require(Plugin.Src.Thunks.SavePageSettings)
local SetPageSaveState = require(Plugin.Src.Actions.SetPageSaveState)

local LoadState = require(Plugin.Src.Util.LoadState)
local SaveState = require(Plugin.Src.Util.SaveState)

local SettingsPage = Roact.Component:extend(script.Name)

function SettingsPage:init()
	self.scrollingFrameRef = Roact.createRef()
	self.contentHeightChanged = function(rbx)
		local scrollingFrame = self.scrollingFrameRef.current
		if scrollingFrame then
			local theme = self.props.Stylizer
			-- TODO remove the + settingPadding and replace with UIPadding once UISYS-469 is fixed
			scrollingFrame.CanvasSize = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.Y + theme.settingsPage.settingPadding)
		end
	end
end

function SettingsPage:didMount()
	local props = self.props

	local loadState = props.LoadState
	local saveState = props.SaveState
	local settingsLoadJobs = props.SettingsLoadJobs
	local pageId = props.PageId

	if loadState == LoadState.Unloaded then
		props.LoadPageSettings(pageId, settingsLoadJobs)
	end
	if saveState == nil then
		props.SetPageSaveState(pageId, SaveState.Unsaved)
	end
end

function SettingsPage:didUpdate(previousProps, previousState)
	local props = self.props

	local pageId = props.PageId
	local saveJobs = props.SettingsSaveJobs
	local saveState = props.SaveState
	local saveStatePrevious = previousProps.SaveState

	if saveState == SaveState.Pending and saveState ~= saveStatePrevious then
		props.SavePageSettings(pageId, saveJobs)
	end
end

function SettingsPage:render()
	local props = self.props
	local theme = props.Stylizer

	local title = props.Title
	local loadState = props.LoadState
	local settingsLoadJobs = props.SettingsLoadJobs
	local pageId = props.PageId
	local showHeader = props.ShowHeader == nil and true or props.ShowHeader

	if loadState <= LoadState.Loading then
		return Roact.createElement(Container, {}, {
			Loading = Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
			})
		})
	elseif loadState == LoadState.LoadFailed then
		return Roact.createElement(LoadFailedPage, {
			OnRetry = function()
				props.LoadPageSettings(pageId, settingsLoadJobs)
			end,
		})
	elseif loadState == LoadState.Loaded then
		return Roact.createElement(ScrollingFrame, {
			AutomaticCanvasSize = if FFlagDevFrameworkMigrateScrollingFrame then Enum.AutomaticSize.Y else nil,
			Size = if FFlagDevFrameworkMigrateScrollingFrame then nil else UDim2.new(1, 0, 1, 0),
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

			Header = showHeader and Roact.createElement(Header, {
				LayoutOrder = 1,
				Title = title,
			}),

			Content = Roact.createElement(FitFrameOnAxis, {
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				axis = FitFrameOnAxis.Axis.Vertical,
				minimumSize = UDim2.new(1, 0, 0, 0),
				contentPadding = UDim.new(0, theme.settingsPage.settingPadding),
			}, self.props.CreateChildren()),
		})
	end

	return nil
end

SettingsPage = withContext({
	Stylizer = ContextServices.Stylizer,
})(SettingsPage)

SettingsPage = RoactRodux.connect(
	function(state, props)
		local pageId = props.PageId
		return {
			LoadState = state.PageLoadState[pageId] or LoadState.Unloaded,
			SaveState = state.PageSaveState[pageId]
		}
	end,

	function(dispatch)
		return {
			LoadPageSettings = function(pageId, settingsJobs)
				dispatch(LoadPageSettings(pageId, settingsJobs))
			end,
			SavePageSettings = function(pageId, saveJobs)
				dispatch(SavePageSettings(pageId, saveJobs))
			end,
			SetPageSaveState = function(pageId, saveState)
				dispatch(SetPageSaveState(pageId, saveState))
			end,
		}
	end
)(SettingsPage)

return SettingsPage

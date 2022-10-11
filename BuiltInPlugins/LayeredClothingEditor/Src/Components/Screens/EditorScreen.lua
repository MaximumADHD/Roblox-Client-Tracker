--[[
	Main editing view for the plugin. Provides user with a variety of mesh editing
	tools, and ways to preview cages and meshes on different models.

	Required Props:
		callback GoToNext: request to go to next screen in flow.
		callback GoToPrevious: request to go to previous screen in flow.
		boolean IsControlsPanelBlockerActive: is the blocker over this component active, provided via mapStateToProps
		string ControlsPanelBlockerMessage: message displayed on blocker component, provided via mapStateToProps
		table UserAddedAssets: assets added to preview grid manually by the user, provided via mapStateToProps
		callback FinishSelectingFromExplorer: callback for when user has finished selecting an instance from explorer.
		callback ClearPreviewAssetsSelected: callback for clearing all selected preview items in grid.
		callback AddUserAddedAssetForPreview: adds asset into preview grid, provided via mapDispatchToProps
	Optional Props:
		enum EditingCage: Cage type identifier, Inner/Outer, provided via mapStateToProps
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local FFlagEnablePreviewDockWidget = require(Plugin.Src.Flags.GetFFlagEnablePreviewDockWidget)()

local LuaMeshEditingModuleContext = AvatarToolsShared.Contexts.LuaMeshEditingModuleContext
local PreviewContext = AvatarToolsShared.Contexts.PreviewContext
local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext

local Components = AvatarToolsShared.Components
local InputBlocker = Components.InputBlocker

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame
local ScrollingFrame = UI.ScrollingFrame

local GenerateScreen = require(Plugin.Src.Components.Screens.GenerateScreen)
local EditorToolsManager = require(Plugin.Src.Components.EditorToolsManager)
local PreviewFrame = require(Plugin.Src.Components.PreviewFrame)
local PreviewViewportFrameContainer = require(Plugin.Src.Components.Preview.PreviewViewportFrameContainer)
local ExplorerPreviewInstances = require(Plugin.Src.Components.Preview.ExplorerPreviewInstances)
local AnimationPlaybackWrapper = require(Plugin.Src.Components.AnimationPlayback.AnimationPlaybackWrapper)

local SetToolMode = require(Plugin.Src.Actions.SetToolMode)
local FinishSelectingFromExplorer = require(Plugin.Src.Thunks.FinishSelectingFromExplorer)
local AddUserAddedAssetForPreview = require(Plugin.Src.Thunks.AddUserAddedAssetForPreview)

local Constants = require(Plugin.Src.Util.Constants)

local SetPreviewAssetsSelected = require(Plugin.Src.Actions.SetPreviewAssetsSelected)

local EditorScreen = Roact.PureComponent:extend("EditorScreen")

local Typecheck = Util.Typecheck
Typecheck.wrap(EditorScreen, script)

function EditorScreen:init()
	self.finishSelectingFromExplorer = function()
		local props = self.props
		local context = self.props.LuaMeshEditingModuleContext
		local editingItem = self.props.EditingItemContext:getItem()
		if context and editingItem then
			context:enableEditing()
			context:initContextsFromItem(editingItem)
		end
		self.props.FinishSelectingFromExplorer()
	end

	self.onNext = function()
		self.props.SetToolMode(Constants.TOOL_MODE.None)
		self.props.GoToNext()
	end

	self.onPrevious = function()
		self.props.SetToolMode(Constants.TOOL_MODE.None)
		self.props.GoToPrevious()
	end
end

function EditorScreen:render()
	local props = self.props

	local userAddedAssets = props.UserAddedAssets
	local theme = props.Stylizer
	local addUserAddedAssetForPreview = props.AddUserAddedAssetForPreview

	local orderIterator = LayoutOrderIterator.new()

	return ContextServices.provide({
		PreviewContext.new(),
	}, {
		Container = Roact.createElement(Pane, {
			BackgroundColor3 = theme.BackgroundColor,
			Layout = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}, {
			EditorToolsManager = Roact.createElement(EditorToolsManager),

			PreviewViewportFrameContainer = Roact.createElement(PreviewViewportFrameContainer, {
				LayoutOrder = orderIterator:getNextOrder(),
			}),

			MainFrame = Roact.createElement(ScrollingFrame, {
				Size = UDim2.new(1, 0, 1, -theme.PreviewViewportFrameHeight),
				AutomaticCanvasSize = Enum.AutomaticSize.XY,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = orderIterator:getNextOrder(),
			}, {
				PreviewFrame = Roact.createElement(PreviewFrame, {
					Size = UDim2.new(1, 0, 1, -theme.GenerateHeight),
					UserAddedAssets = userAddedAssets,
					UpdateUserAddedAssets = addUserAddedAssetForPreview,
					LayoutOrder = orderIterator:getNextOrder(),
				}),
			
				GenerateContainer = Roact.createElement(Pane, {
					Size = UDim2.new(1, 0, 0, theme.GenerateHeight),
					LayoutOrder = orderIterator:getNextOrder(),
				}, {
					GenerateScreen = Roact.createElement(GenerateScreen, {
						GoToNext = self.onNext,
						GoToPrevious = self.onPrevious,
					}),
				}),
			}),

			ControlsPanelBlocker = props.IsControlsPanelBlockerActive and Roact.createElement(InputBlocker,{
				OnFocused = self.finishSelectingFromExplorer,
				Text = props.ControlsPanelBlockerMessage,
			}),

			AnimationPlaybackWrapper = Roact.createElement(AnimationPlaybackWrapper),

			ExplorerPreviewInstances = Roact.createElement(ExplorerPreviewInstances, {
				UserAddedAssets = userAddedAssets,
			}),
		})
	})
end

function EditorScreen:willUnmount()
	local props = self.props
	props.ClearPreviewAssetsSelected()
end

local function mapStateToProps(state, props)
	local controlsPanelBlocker = state.controlsPanelBlocker
	local previewStatus = state.previewStatus
	local selectItem = state.selectItem
	return {
		IsControlsPanelBlockerActive = controlsPanelBlocker.isActive,
		ControlsPanelBlockerMessage = controlsPanelBlocker.message,
		UserAddedAssets = previewStatus.userAddedAssets,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetToolMode = function(toolMode)
			dispatch(SetToolMode(toolMode))
		end,

		FinishSelectingFromExplorer = function()
			dispatch(FinishSelectingFromExplorer())
		end,

		ClearPreviewAssetsSelected = function()
			dispatch(SetPreviewAssetsSelected({}))
		end,

		AddUserAddedAssetForPreview = function(tab, asset)
			dispatch(AddUserAddedAssetForPreview(tab, asset))
		end,
	}
end


EditorScreen = withContext({
	Stylizer = ContextServices.Stylizer,
	EditingItemContext = EditingItemContext,
	LuaMeshEditingModuleContext = LuaMeshEditingModuleContext,
})(EditorScreen)



return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EditorScreen)